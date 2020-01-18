Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C455714191F
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 20:24:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA5286E122;
	Sat, 18 Jan 2020 19:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0726C6E121;
 Sat, 18 Jan 2020 19:24:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E75A5A0087;
 Sat, 18 Jan 2020 19:24:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christian Kujau" <lists@nerdbynature.de>
Date: Sat, 18 Jan 2020 19:24:37 -0000
Message-ID: <157937547791.11510.9512826911419044194@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <alpine.DEB.2.21.99999.375.2001141825300.21037@trent.utfs.org>
In-Reply-To: <alpine.DEB.2.21.99999.375.2001141825300.21037@trent.utfs.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_bugs=2Efreedesktop=2Eorg_is_no_longer_accepting_bugs?=
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

Series: drm: bugs.freedesktop.org is no longer accepting bugs
URL   : https://patchwork.freedesktop.org/series/72098/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7753_full -> Patchwork_16125_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16125_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb5/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [PASS][5] -> [FAIL][6] ([i915#490])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-snb6/igt@gem_eio@in-flight-contexts-1us.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-snb5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@in-flight-immediate:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#472] / [i915#534])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb3/igt@gem_eio@in-flight-immediate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb6/igt@gem_eio@in-flight-immediate.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@fds:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#470] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb8/igt@gem_exec_parallel@fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb3/igt@gem_exec_parallel@fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111606] / [fdo#111677] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111677] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([fdo#103665] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl4/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-kbl7/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#644])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#413])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@i915_pm_rps@reset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl8/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-apl6/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109276]) +33 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl2/igt@gem_ctx_isolation@bcs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][43] ([i915#472] / [i915#476]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@gem_eio@kms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb6/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][45] ([fdo#111736] / [i915#472]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb3/igt@gem_exec_await@wide-contexts.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb5/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][47] ([fdo#111593] / [i915#472]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][49] ([i915#472]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb7/igt@gem_exec_nop@basic-series.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb1/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][51] ([i915#677]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +21 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][57] ([i915#472] / [i915#707]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][59] ([fdo#112271] / [i915#530]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [TIMEOUT][61] ([fdo#112271] / [i915#530]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][63] ([fdo#103665] / [i915#530]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-skl:          [DMESG-WARN][65] ([fdo#111870] / [i915#836]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-skl1/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][67] ([i915#454]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][69] ([i915#413]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl7/igt@kms_color@pipe-b-ctm-0-25.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-skl5/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-skl:          [FAIL][73] ([i915#54]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][75] ([IGT#5]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][79] ([i915#221]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][83] ([i915#49]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +3 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][87] ([fdo#112080]) -> [PASS][88] +9 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb8/igt@perf_pmu@busy-vcs1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][89] ([fdo#109276] / [fdo#112080]) -> [FAIL][90] ([IGT#28])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][91] ([IGT#28]) -> [SKIP][92] ([fdo#109276] / [fdo#112080])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][93] ([i915#454]) -> [SKIP][94] ([i915#468])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][95] ([i915#468]) -> [FAIL][96] ([i915#454])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7753 -> Patchwork_16125

  CI-20190529: 20190529
  CI_DRM_7753: cef3a815e760485d4c011adb3dafb4d49bff9378 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16125: ed770364cac3127d6fbeb244a93049bcc62399fb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16125/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
