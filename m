Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E831362D1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 22:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 734246E973;
	Thu,  9 Jan 2020 21:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BDFA56E971;
 Thu,  9 Jan 2020 21:50:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B4F8AA0114;
 Thu,  9 Jan 2020 21:50:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 09 Jan 2020 21:50:38 -0000
Message-ID: <157860663871.4566.2912987942698591070@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108161954.29739-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200108161954.29739-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Revert_=22drm/i915/tgl=3A_Wa=5F1607138340=22?=
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

Series: drm/i915: Revert "drm/i915/tgl: Wa_1607138340"
URL   : https://patchwork.freedesktop.org/series/71774/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7705_full -> Patchwork_16031_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16031_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16031_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16031_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_offset@clear:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb8/igt@gem_mmap_offset@clear.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb9/igt@gem_mmap_offset@clear.html

  
Known issues
------------

  Here are the changes found in Patchwork_16031_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-glk9/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-glk6/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110841])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-vebox:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111677] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb7/igt@gem_exec_schedule@preempt-queue-chain-vebox.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb8/igt@gem_exec_schedule@preempt-queue-chain-vebox.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677] / [i915#472]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472] / [i915#707])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb5/igt@gem_sync@basic-many-each.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb1/igt@gem_sync@basic-many-each.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb7/igt@gem_sync@basic-store-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb6/igt@gem_sync@basic-store-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][23] -> [DMESG-WARN][24] ([i915#716])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#413])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb2/igt@i915_pm_rps@reset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-apl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#300])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#474])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109642] / [fdo#111068])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][37] -> [FAIL][38] ([i915#173])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb8/igt@kms_psr@no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#112080]) +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +12 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb3/igt@gem_busy@extended-parallel-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb3/igt@gem_ctx_isolation@vcs1-clean.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb2/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-skl:          [FAIL][45] ([i915#679]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl6/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-skl9/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][47] ([i915#476]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb8/igt@gem_eio@kms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [INCOMPLETE][49] ([i915#470]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb6/igt@gem_eio@reset-stress.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb5/igt@gem_eio@reset-stress.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][51] ([fdo#111736] / [i915#472]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb9/igt@gem_exec_await@wide-contexts.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb2/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][53] ([fdo#110854]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@forked:
    - shard-apl:          [TIMEOUT][55] ([i915#940]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-apl1/igt@gem_exec_create@forked.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-apl8/igt@gem_exec_create@forked.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][57] ([CI#80] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb1/igt@gem_exec_create@madvise.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb5/igt@gem_exec_create@madvise.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][59] ([i915#470] / [i915#472]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb1/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +16 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb8/igt@gem_exec_schedule@in-order-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb1/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111677] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66] +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [INCOMPLETE][67] ([i915#472]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb3/igt@gem_exec_suspend@basic-s0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +4 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-skl:          [INCOMPLETE][71] ([i915#198]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl3/igt@i915_pm_dc@dc5-dpms.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-skl8/igt@i915_pm_dc@dc5-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][75] ([i915#79]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][77] ([i915#79]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][79] ([i915#34]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [FAIL][81] ([i915#699]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl2/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-skl1/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-tglb:         [FAIL][83] ([i915#49]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-tglb:         [INCOMPLETE][85] -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb2/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb3/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][89] ([fdo#108145] / [i915#265]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][91] ([fdo#108145]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb4/igt@kms_psr@psr2_no_drrs.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [FAIL][95] ([i915#84]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb6/igt@perf@oa-exponents.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb3/igt@perf@oa-exponents.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][97] ([fdo#109276] / [fdo#112080]) -> [FAIL][98] ([IGT#28])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-iclb:         [FAIL][99] ([i915#520]) -> [TIMEOUT][100] ([i915#530])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb8/igt@gem_persistent_relocs@forked-thrashing.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][101] ([i915#468]) -> [FAIL][102] ([i915#454])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb4/igt@i915_pm_dc@dc6-psr.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][103] ([fdo#112021]) -> [SKIP][104] ([fdo#112016] / [fdo#112021]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-tglb1/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][105] ([fdo#107724]) -> [SKIP][106] ([fdo#109349])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7705/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7705 -> Patchwork_16031

  CI-20190529: 20190529
  CI_DRM_7705: b57ea8cadecd3444690439b4703d964afca476e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16031: 4c837000070d0256c45e0dc3e56b265339fdd8a7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16031/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
