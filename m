Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ACE11C6E6
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 09:17:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A0CF6EC82;
	Thu, 12 Dec 2019 08:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 64AE56EC7C;
 Thu, 12 Dec 2019 08:17:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C28BA011A;
 Thu, 12 Dec 2019 08:17:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 08:17:42 -0000
Message-ID: <157613866234.32008.18314120363995710564@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211150204.133471-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191211150204.133471-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_the_i915=5Fdevice_name_for_identifying_our_request?=
 =?utf-8?q?_fences?=
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

Series: drm/i915: Use the i915_device name for identifying our request fences
URL   : https://patchwork.freedesktop.org/series/70761/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7543_full -> Patchwork_15694_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15694_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15694_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15694_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-tglb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb7/igt@gem_exec_balancer@bonded-slice.html

  
Known issues
------------

  Here are the changes found in Patchwork_15694_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#679])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk3/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-glk4/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#679])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb7/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb3/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111735]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb3/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111593])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@gem_exec_gttfill@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#435])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@gem_exec_nop@basic-parallel.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb8/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_parallel@vecs0:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([fdo#111736])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb2/igt@gem_exec_parallel@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb1/igt@gem_exec_parallel@vecs0.html

  * igt@gem_exec_parse_blt@allowed-single:
    - shard-skl:          [PASS][16] -> [DMESG-WARN][17] ([i915#716])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl5/igt@gem_exec_parse_blt@allowed-single.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl2/igt@gem_exec_parse_blt@allowed-single.html

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - shard-skl:          [PASS][18] -> [DMESG-WARN][19] ([i915#109]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl1/igt@gem_exec_reloc@basic-cpu-wc-active.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl10/igt@gem_exec_reloc@basic-cpu-wc-active.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#109276]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#463])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@gem_exec_schedule@smoketest-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb6/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([fdo#112146]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@gem_exec_schedule@wide-bsd.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-tglb:         [PASS][26] -> [TIMEOUT][27] ([fdo#112126] / [i915#530])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#644])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-iclb5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#69])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl9/igt@gem_softpin@noreloc-s3.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([i915#470] / [i915#472])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@gem_sync@basic-all.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb6/igt@gem_sync@basic-all.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [PASS][34] -> [DMESG-WARN][35] ([fdo#111870])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-snb7/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl3/igt@i915_suspend@forcewake.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-apl2/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#54]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled:
    - shard-tglb:         [PASS][42] -> [INCOMPLETE][43] ([i915#667])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb2/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb2101010-render-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][44] -> [INCOMPLETE][45] ([i915#435] / [i915#456] / [i915#460])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_fbcon_fbt@fbc-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-tglb:         [PASS][46] -> [INCOMPLETE][47] ([i915#460] / [i915#516])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb6/igt@kms_flip@flip-vs-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [PASS][48] -> [FAIL][49] ([i915#49]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][50] -> [INCOMPLETE][51] ([i915#474] / [i915#667])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-tglb:         [PASS][52] -> [INCOMPLETE][53] ([i915#456] / [i915#460])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [PASS][54] -> [INCOMPLETE][55] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-kbl1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([fdo#108145]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [FAIL][58] ([i915#570]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@gem_ctx_persistence@processes.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl1/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][60] ([fdo#109276] / [fdo#112080]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd2}:
    - shard-iclb:         [SKIP][62] ([fdo#109276]) -> [PASS][63] +4 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][64] ([fdo#112146]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-snb:          [TIMEOUT][66] ([i915#530]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-snb6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][68] ([i915#644]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][70] ([i915#472] / [i915#707]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb8/igt@gem_sync@basic-each.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb8/igt@gem_sync@basic-each.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [DMESG-WARN][72] ([fdo#111870]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_wait@await-vecs0:
    - shard-skl:          [DMESG-WARN][74] ([i915#109]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@gem_wait@await-vecs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl3/igt@gem_wait@await-vecs0.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][76] ([i915#447]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [DMESG-WARN][78] ([i915#747]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@i915_selftest@mock_sanitycheck.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl2/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [DMESG-WARN][80] ([i915#180]) -> [PASS][81] +3 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-apl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][82] ([i915#54]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-tglb:         [INCOMPLETE][84] ([i915#667]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb9/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb4/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][86] ([i915#79]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][88] ([i915#79]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [INCOMPLETE][90] ([i915#474] / [i915#667]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +9 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][94] ([i915#648] / [i915#667]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes:
    - shard-tglb:         [INCOMPLETE][96] ([i915#460]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][98] ([fdo#108145]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [DMESG-WARN][100] ([i915#402]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb4/igt@kms_psr@psr2_suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][102] ([i915#456] / [i915#460]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-idle-check-all-vcs1:
    - shard-iclb:         [SKIP][104] ([fdo#112080]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-iclb3/igt@perf_pmu@busy-idle-check-all-vcs1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-iclb2/igt@perf_pmu@busy-idle-check-all-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][106] ([i915#454]) -> [SKIP][107] ([i915#468])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][108] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][109] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@runner@aborted:
    - shard-skl:          [FAIL][110] ([i915#69] / [k.org#204565]) -> [FAIL][111] ([i915#69])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/shard-skl8/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7543 -> Patchwork_15694

  CI-20190529: 20190529
  CI_DRM_7543: 91752f80df9b582561be6bbac12ef780b12f606c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5345: 9e0c82b6d70065db894ececf2be8de372e983cf0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15694: 856e7af5a09b6c6d1a68a8a06b2d997062f435b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15694/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
