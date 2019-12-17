Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B89C1238E3
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 22:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E3616E145;
	Tue, 17 Dec 2019 21:52:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FE126E143;
 Tue, 17 Dec 2019 21:52:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97114A47DF;
 Tue, 17 Dec 2019 21:52:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Steven Price" <Steven.Price@arm.com>
Date: Tue, 17 Dec 2019 21:52:27 -0000
Message-ID: <157661954759.21846.3474802857178345972@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191216162209.5b5256dd@canb.auug.org.au>
In-Reply-To: <20191216162209.5b5256dd@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgbGlu?=
 =?utf-8?q?ux-next=3A_Tree_for_Dec_16_=28drm=5Fpanel_=26_intel=5Fpanel=29?=
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

Series: linux-next: Tree for Dec 16 (drm_panel & intel_panel)
URL   : https://patchwork.freedesktop.org/series/71052/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7580_full -> Patchwork_15811_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15811_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15811_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15811_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html

  
Known issues
------------

  Here are the changes found in Patchwork_15811_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl7/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl5/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#679]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-apl4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-apl3/igt@gem_ctx_persistence@vecs0-mixed-process.html
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#679])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-glk1/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-glk9/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([fdo#111735])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#469])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#435])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb8/igt@gem_exec_nop@basic-series.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb6/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parallel@vcs0-contexts:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb7/igt@gem_exec_parallel@vcs0-contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb4/igt@gem_exec_parallel@vcs0-contexts.html

  * igt@gem_exec_schedule@independent-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-iclb3/igt@gem_exec_schedule@independent-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-iclb2/igt@gem_exec_schedule@independent-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109276]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([fdo#111677])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [PASS][27] -> [DMESG-WARN][28] ([fdo#111870]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#456] / [i915#460])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb1/igt@gem_workarounds@suspend-resume-fd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [PASS][31] -> [DMESG-WARN][32] ([i915#747])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-kbl7/igt@i915_selftest@mock_sanitycheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-kbl2/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#109])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl10/igt@kms_color@pipe-b-ctm-green-to-red.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl3/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-hsw:          [PASS][35] -> [DMESG-WARN][36] ([IGT#6])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-hsw2/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#54]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#456] / [i915#460] / [i915#474])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [PASS][41] -> [INCOMPLETE][42] ([fdo#112393] / [i915#435] / [i915#667])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#648] / [i915#667])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl2/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  
#### Possible fixes ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [INCOMPLETE][45] ([i915#435]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb6/igt@gem_busy@close-race.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb2/igt@gem_busy@close-race.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-skl:          [INCOMPLETE][47] ([i915#69]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl2/igt@gem_ctx_isolation@bcs0-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl7/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-iclb3/igt@gem_ctx_persistence@vcs1-persistence.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-iclb2/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [INCOMPLETE][51] ([i915#460]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb4/igt@gem_eio@suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb7/igt@gem_eio@suspend.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][55] ([i915#707]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb4/igt@gem_exec_schedule@smoketest-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [FAIL][57] ([i915#520]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][59] ([i915#644]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][61] ([i915#644]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-snb:          [DMESG-WARN][63] ([fdo#111870]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@sync-unmap:
    - shard-snb:          [DMESG-WARN][65] ([fdo#110789] / [fdo#111870]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-snb1/igt@gem_userptr_blits@sync-unmap.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-snb1/igt@gem_userptr_blits@sync-unmap.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [DMESG-WARN][67] ([i915#747]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-snb2/igt@i915_selftest@mock_sanitycheck.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-snb5/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][69] ([i915#109]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
    - shard-skl:          [FAIL][71] ([i915#54]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][73] ([IGT#5]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][75] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb9/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-kbl:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-tglb:         [FAIL][81] ([i915#49]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         [INCOMPLETE][83] ([i915#667]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][87] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl3/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][89] ([fdo#108145]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_scaling@pipe-d-scaler-with-rotation:
    - shard-tglb:         [INCOMPLETE][91] ([i915#470]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb6/igt@kms_plane_scaling@pipe-d-scaler-with-rotation.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb1/igt@kms_plane_scaling@pipe-d-scaler-with-rotation.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][95] ([fdo#112080]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][97] ([fdo#109276]) -> [PASS][98] +6 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][99] ([i915#832]) -> [FAIL][100] ([i915#818])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-hsw4/igt@gem_tiled_blits@normal.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][101] ([i915#56]) -> [DMESG-WARN][102] ([i915#180])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_atomic_transition@6x-modeset-transitions:
    - shard-tglb:         [SKIP][103] ([fdo#112016] / [fdo#112021]) -> [SKIP][104] ([fdo#112021])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-tglb1/igt@kms_atomic_transition@6x-modeset-transitions.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][105] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][106] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7580/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#832]: https://gitlab.freedesktop.org/drm/intel/issues/832


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7580 -> Patchwork_15811

  CI-20190529: 20190529
  CI_DRM_7580: 4154d505504bd58e3cc90d27f7221c3d29045b51 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15811: 4f9c2e2f3e3a9798b47dbb315ce9b281073d563e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15811/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
