Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4CC1338C6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 02:55:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96DC46E169;
	Wed,  8 Jan 2020 01:55:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 643AA6E15F;
 Wed,  8 Jan 2020 01:55:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4AB32A0114;
 Wed,  8 Jan 2020 01:55:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "YueHaibing" <yuehaibing@huawei.com>
Date: Wed, 08 Jan 2020 01:55:51 -0000
Message-ID: <157844855127.23226.17331619614811586395@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200107135014.36472-1-yuehaibing@huawei.com>
In-Reply-To: <20200107135014.36472-1-yuehaibing@huawei.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_missing_include_file_=3Clinux/math64=2Eh=3E?=
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

Series: drm/i915: Add missing include file <linux/math64.h>
URL   : https://patchwork.freedesktop.org/series/71695/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7695_full -> Patchwork_16013_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16013_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111736] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_exec_await@wide-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb9/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([fdo#111593] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb3/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#435] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@gem_exec_nop@basic-sequential.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb8/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111606] / [fdo#111677] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111677] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb6/igt@gem_exec_suspend@basic-s0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][21] -> [TIMEOUT][22] ([i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#644])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#470] / [i915#472])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@gem_sync@basic-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb1/igt@gem_sync@basic-all.html

  * igt@gem_workarounds@suspend-resume:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#69])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl6/igt@gem_workarounds@suspend-resume.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-skl2/igt@gem_workarounds@suspend-resume.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-skl3/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#300])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#49]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@kms_psr@psr2_basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb6/igt@kms_psr@psr2_basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +16 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_blits@basic:
    - shard-kbl:          [DMESG-WARN][45] ([i915#836]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl2/igt@gem_blits@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-kbl1/igt@gem_blits@basic.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +7 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][49] ([fdo#109276] / [fdo#112080]) -> [PASS][50] +7 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][51] ([i915#476]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@gem_eio@kms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111736] / [i915#472]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb2/igt@gem_exec_balancer@nop.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb7/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][55] ([fdo#110854]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb4/igt@gem_exec_balancer@smoke.html
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111593] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb4/igt@gem_exec_balancer@smoke.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb9/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][59] ([i915#472] / [i915#476]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb3/igt@gem_exec_parallel@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb5/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][61] ([fdo#112080]) -> [PASS][62] +15 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +6 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111677] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][67] ([i915#530]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [INCOMPLETE][69] ([i915#470]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb9/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb2/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][71] ([i915#644]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][73] ([i915#644]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][75] ([i915#413]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@i915_pm_rps@reset.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][77] ([i915#725]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-hsw8/igt@i915_selftest@live_blt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-hsw5/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_hangcheck:
    - shard-tglb:         [INCOMPLETE][79] ([i915#435]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb3/igt@i915_selftest@live_hangcheck.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb2/igt@i915_selftest@live_hangcheck.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-apl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][83] ([i915#54]) -> [PASS][84] +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][85] ([i915#72]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-panning-interruptible:
    - shard-skl:          [DMESG-WARN][87] ([i915#109]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl1/igt@kms_flip@flip-vs-panning-interruptible.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-skl8/igt@kms_flip@flip-vs-panning-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][89] ([i915#49]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][91] ([fdo#108145]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][93] ([fdo#108145] / [i915#265]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][95] ([fdo#109642] / [fdo#111068]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@kms_psr@psr2_suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][99] ([i915#31]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl4/igt@kms_setmode@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-kbl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][101] ([i915#69]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][103] ([fdo#109276]) -> [PASS][104] +17 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][105] ([i915#82]) -> [DMESG-WARN][106] ([i915#443] / [i915#444])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-snb4/igt@gem_eio@kms.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-snb5/igt@gem_eio@kms.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][107] ([i915#454]) -> [SKIP][108] ([i915#468])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][109] ([i915#180]) -> [INCOMPLETE][110] ([fdo#103665] / [i915#600])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7695 -> Patchwork_16013

  CI-20190529: 20190529
  CI_DRM_7695: 8df346a062d56d97ab53555d3f5829c26f950233 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16013: be5873708dde0b7532a087a16af1454172946fe5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16013/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
