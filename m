Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA6B11A3F5
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 06:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4936EA79;
	Wed, 11 Dec 2019 05:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 360C36EA26;
 Wed, 11 Dec 2019 05:35:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2AC10A01BB;
 Wed, 11 Dec 2019 05:35:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin King" <colin.king@canonical.com>
Date: Wed, 11 Dec 2019 05:35:55 -0000
Message-ID: <157604255514.30689.3524946773318192381@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210142349.333171-1-colin.king@canonical.com>
In-Reply-To: <20191210142349.333171-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_remove_redundant_checks_for_a_null_fb_pointer?=
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

Series: drm/i915: remove redundant checks for a null fb pointer
URL   : https://patchwork.freedesktop.org/series/70693/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7533_full -> Patchwork_15670_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15670_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15670_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15670_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_ccs@pipe-a-crc-primary-basic:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_15670_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +12 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-tglb:         [PASS][4] -> [INCOMPLETE][5] ([i915#456])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb8/igt@gem_ctx_isolation@vcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb8/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb3/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#679])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-glk8/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-glk2/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#679])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl7/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl2/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [PASS][12] -> [FAIL][13] ([i915#232])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-snb7/igt@gem_eio@unwedge-stress.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-snb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([fdo#111677])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276]) +13 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#112146]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb8/igt@gem_exec_schedule@reorder-wide-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#463])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb3/igt@gem_exec_schedule@smoketest-all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb6/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#707]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb5/igt@gem_exec_schedule@smoketest-vebox.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb4/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][24] -> [FAIL][25] ([i915#644])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][26] -> [FAIL][27] ([i915#644])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#667])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl9/igt@gem_userptr_blits@sync-unmap-after-close.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl10/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_wait@write-busy-vecs0:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#109])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl1/igt@gem_wait@write-busy-vecs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl9/igt@gem_wait@write-busy-vecs0.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][32] -> [FAIL][33] ([i915#447])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#747])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl6/igt@i915_selftest@mock_sanitycheck.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl6/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#456] / [i915#460])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb3/igt@i915_suspend@fence-restore-untiled.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#54]) +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][40] -> [INCOMPLETE][41] ([i915#460])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb4/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#72])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#79])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [PASS][46] -> [FAIL][47] ([i915#46])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#34])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [PASS][52] -> [INCOMPLETE][53] ([i915#474] / [i915#667])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][54] -> [INCOMPLETE][55] ([i915#648] / [i915#667])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
    - shard-kbl:          [PASS][56] -> [INCOMPLETE][57] ([fdo#103665])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-kbl6/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [PASS][58] -> [INCOMPLETE][59] ([i915#648])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl9/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [PASS][60] -> [FAIL][61] ([fdo#111842])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb7/igt@kms_psr2_su@frontbuffer.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][62] -> [SKIP][63] ([fdo#109642] / [fdo#111068])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb6/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb3/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][66] -> [DMESG-WARN][67] ([i915#180]) +5 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +5 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][70] ([fdo#109276] / [fdo#112080]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb3/igt@gem_ctx_isolation@vcs1-reset.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_exec_basic@basic-vcs1:
    - shard-iclb:         [SKIP][72] ([fdo#112080]) -> [PASS][73] +6 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb7/igt@gem_exec_basic@basic-vcs1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb2/igt@gem_exec_basic@basic-vcs1.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][74] ([i915#435]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb6/igt@gem_exec_nop@basic-series.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb8/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_parse_blt@allowed-single:
    - shard-glk:          [DMESG-WARN][76] ([i915#716]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-glk9/igt@gem_exec_parse_blt@allowed-single.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-glk4/igt@gem_exec_parse_blt@allowed-single.html
    - shard-apl:          [DMESG-WARN][78] ([i915#716]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-apl7/igt@gem_exec_parse_blt@allowed-single.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-apl6/igt@gem_exec_parse_blt@allowed-single.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][80] ([fdo#109276]) -> [PASS][81] +11 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][82] ([fdo#112146]) -> [PASS][83] +7 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][84] ([i915#707]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb7/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_exec_schedule@wide-render:
    - shard-iclb:         [DMESG-WARN][86] -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb7/igt@gem_exec_schedule@wide-render.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb6/igt@gem_exec_schedule@wide-render.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][88] ([i915#180]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-apl4/igt@gem_softpin@noreloc-s3.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-apl6/igt@gem_softpin@noreloc-s3.html
    - shard-skl:          [INCOMPLETE][90] ([i915#69]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl6/igt@gem_softpin@noreloc-s3.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl8/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup:
    - shard-snb:          [DMESG-WARN][92] ([fdo#111870]) -> [PASS][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-snb1/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][94] ([i915#454]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-skl:          [FAIL][96] ([i915#54]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
    - shard-iclb:         [DMESG-WARN][98] ([IGT#6]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-tglb:         [FAIL][100] ([i915#559]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][102] ([i915#79]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][104] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-tglb:         [INCOMPLETE][106] ([i915#456] / [i915#460]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][108] ([fdo#109441]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-iclb7/igt@kms_psr@psr2_sprite_plane_onoff.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][110] ([i915#31]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-apl6/igt@kms_setmode@basic.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-apl4/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][112] ([i915#31]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-kbl3/igt@kms_setmode@basic.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-kbl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-none:
    - shard-tglb:         [SKIP][114] ([fdo#112080]) -> [SKIP][115] ([fdo#111912] / [fdo#112080])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb9/igt@gem_ctx_isolation@vcs2-none.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb8/igt@gem_ctx_isolation@vcs2-none.html

  * igt@kms_atomic_transition@6x-modeset-transitions-fencing:
    - shard-tglb:         [SKIP][116] ([fdo#112021]) -> [SKIP][117] ([fdo#112016] / [fdo#112021])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-fencing.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-tglb5/igt@kms_atomic_transition@6x-modeset-transitions-fencing.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][118] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][119] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7533/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/shard-skl3/igt@kms_plane@pixel-format-pipe-a-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
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
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#559]: https://gitlab.freedesktop.org/drm/intel/issues/559
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#669]: https://gitlab.freedesktop.org/drm/intel/issues/669
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7533 -> Patchwork_15670

  CI-20190529: 20190529
  CI_DRM_7533: 5f07735eaf4b5debe7c2d70908388af179a11d1f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5341: 5fe683cdebde2d77d16ffc42c9fdf29a9f95bb82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15670: 762627020673413e68723382fde600b54a5c7da0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15670/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
