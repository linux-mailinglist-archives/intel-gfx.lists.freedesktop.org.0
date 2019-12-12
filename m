Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD50011CD77
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 13:51:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196D66ED35;
	Thu, 12 Dec 2019 12:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 12A536ED35;
 Thu, 12 Dec 2019 12:51:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0AA4EA0119;
 Thu, 12 Dec 2019 12:51:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 12 Dec 2019 12:51:39 -0000
Message-ID: <157615509903.32007.7554003413163507660@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU3Bs?=
 =?utf-8?q?it_up_intel=5Flrc=2Ec?=
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

Series: Split up intel_lrc.c
URL   : https://patchwork.freedesktop.org/series/70787/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7545_full -> Patchwork_15699_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15699_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15699_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15699_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb3/igt@gem_exec_balancer@bonded-slice.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-iclb2/igt@gem_exec_balancer@bonded-slice.html

  
Known issues
------------

  Here are the changes found in Patchwork_15699_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl4/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-skl8/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#800])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl2/igt@gem_exec_balancer@bonded-slice.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-kbl4/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb5/igt@gem_exec_schedule@deep-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-iclb1/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][13] -> [TIMEOUT][14] ([fdo#112126] / [i915#530])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#520])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-apl:          [PASS][17] -> [INCOMPLETE][18] ([fdo#103927] / [i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl2/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-apl2/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [PASS][19] -> [DMESG-WARN][20] ([fdo#111870])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb5/igt@gem_userptr_blits@dmabuf-unsync.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-snb6/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - shard-tglb:         [PASS][23] -> [DMESG-WARN][24] ([i915#766])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@i915_pm_rpm@drm-resources-equal.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb7/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#747])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl2/igt@i915_selftest@mock_sanitycheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-skl5/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +9 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#474] / [i915#667])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#456] / [i915#460] / [i915#474])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#49])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-kbl:          [PASS][37] -> [INCOMPLETE][38] ([fdo#103665] / [i915#435] / [i915#648] / [i915#667])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw4/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-hsw6/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-skl:          [INCOMPLETE][43] ([i915#69]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl5/igt@gem_ctx_isolation@vcs0-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-skl3/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_isolation@vcs1-s3:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [fdo#112080]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb5/igt@gem_ctx_isolation@vcs1-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-iclb1/igt@gem_ctx_isolation@vcs1-s3.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [INCOMPLETE][47] ([fdo#111735]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb8/igt@gem_ctx_shared@q-smoketest-all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb3/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          [FAIL][49] ([i915#232]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb6/igt@gem_eio@unwedge-stress.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-snb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-tglb:         [INCOMPLETE][51] ([i915#435]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb7/igt@gem_exec_nop@basic-parallel.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb2/igt@gem_exec_nop@basic-parallel.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd2}:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +5 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@preempt-hang-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb2/igt@gem_exec_schedule@preempt-hang-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-iclb8/igt@gem_exec_schedule@preempt-hang-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111606] / [fdo#111677]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][61] ([i915#435] / [i915#472]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb7/igt@gem_sync@basic-store-each.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb1/igt@gem_sync@basic-store-each.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [DMESG-WARN][63] ([fdo#111870]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb1/igt@gem_userptr_blits@sync-unmap-after-close.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-snb5/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [INCOMPLETE][65] ([i915#456] / [i915#460]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb1/igt@gem_workarounds@suspend-resume.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb2/igt@gem_workarounds@suspend-resume.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-hsw:          [DMESG-WARN][67] ([i915#747]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw4/igt@i915_selftest@mock_sanitycheck.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-hsw4/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          [FAIL][71] ([i915#54]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen:
    - shard-hsw:          [DMESG-WARN][73] ([IGT#6]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-hsw5/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][75] ([i915#96]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [INCOMPLETE][79] ([i915#82]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb1/igt@kms_flip@flip-vs-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-snb5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-hsw:          [INCOMPLETE][81] ([i915#61]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-hsw2/igt@kms_flip@plain-flip-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-hsw1/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][85] ([i915#49]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][87] ([fdo#112391] / [i915#648] / [i915#667]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl10/igt@kms_plane@pixel-format-pipe-b-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_sequence@get-forked-busy:
    - shard-snb:          [SKIP][93] ([fdo#109271]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb2/igt@kms_sequence@get-forked-busy.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-snb7/igt@kms_sequence@get-forked-busy.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][95] ([i915#31]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-apl1/igt@kms_setmode@basic.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-apl4/igt@kms_setmode@basic.html
    - shard-glk:          [FAIL][97] ([i915#31]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-glk3/igt@kms_setmode@basic.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-glk7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][99] ([i915#444]) -> [INCOMPLETE][100] ([i915#82])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-snb6/igt@gem_eio@kms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-snb4/igt@gem_eio@kms.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][101] ([fdo#112347] / [i915#648] / [i915#667]) -> [INCOMPLETE][102] ([i915#648])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7545/shard-skl7/igt@kms_plane@pixel-format-pipe-a-planes.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/shard-skl1/igt@kms_plane@pixel-format-pipe-a-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#800]: https://gitlab.freedesktop.org/drm/intel/issues/800
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7545 -> Patchwork_15699

  CI-20190529: 20190529
  CI_DRM_7545: b1b808dff985c3c2050b20771050453589a60ca3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5346: 466b0e6cbcbaccff012b484d1fd7676364b37b93 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15699: 7865d27bced83f512520ef79fd6e658150123789 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15699/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
