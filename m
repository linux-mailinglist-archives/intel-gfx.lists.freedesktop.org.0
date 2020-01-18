Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFDE141704
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 11:45:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34E076F9F3;
	Sat, 18 Jan 2020 10:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A21B46F9B1;
 Sat, 18 Jan 2020 10:45:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 98B20A41FB;
 Sat, 18 Jan 2020 10:45:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 18 Jan 2020 10:45:33 -0000
Message-ID: <157934433359.11508.5445250125015702881@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200115205245.2772800-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200115205245.2772800-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Inject_a_cond=5Fresched=28=29_into_long_drm=5Fclflush=5Fsg?=
 =?utf-8?b?KCk=?=
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

Series: drm: Inject a cond_resched() into long drm_clflush_sg()
URL   : https://patchwork.freedesktop.org/series/72085/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7751_full -> Patchwork_16118_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16118_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735] / [i915#472]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_ctx_shared@q-smoketest-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb8/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111736] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_exec_await@wide-contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb3/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][9] -> [INCOMPLETE][10] ([i915#58] / [k.org#198133])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-glk5/igt@gem_exec_create@forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-glk9/igt@gem_exec_create@forked.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#472] / [i915#476]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb7/igt@gem_exec_parallel@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb4/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +20 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +9 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#463] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb8/igt@gem_exec_schedule@smoketest-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb1/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#472] / [i915#707])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@gem_exec_schedule@smoketest-bsd2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-tglb:         [PASS][21] -> [TIMEOUT][22] ([fdo#112126] / [fdo#112271] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-skl9/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-hsw:          [PASS][25] -> [TIMEOUT][26] ([fdo#112271] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#644])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-skl:          [PASS][33] -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@i915_pm_rpm@dpms-lpsp.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-skl10/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#413])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@i915_pm_rps@reset.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#49])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#31])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl1/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-skl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@gem_ctx_isolation@vcs1-reset.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-apl:          [FAIL][45] ([i915#679]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl4/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-apl6/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_eio@wait-immediate:
    - shard-tglb:         [INCOMPLETE][47] ([i915#472]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@gem_eio@wait-immediate.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb6/igt@gem_eio@wait-immediate.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][49] ([fdo#111593] / [i915#472]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@gem_exec_gttfill@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][51] ([i915#677]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111677] / [i915#472]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-kbl:          [TIMEOUT][57] ([fdo#112271] / [i915#530]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-skl:          [TIMEOUT][59] ([fdo#112271] / [i915#530]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-skl10/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
    - shard-snb:          [TIMEOUT][61] ([fdo#112271] / [i915#530]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][63] ([i915#520]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][65] ([fdo#103665] / [i915#530]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-kbl3/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][67] ([i915#644]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-apl6/igt@gem_workarounds@suspend-resume.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-apl7/igt@gem_workarounds@suspend-resume.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_color@pipe-a-ctm-0-75.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][73] ([i915#300]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][75] ([i915#221]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_flip@flip-vs-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][79] ([i915#49]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-skl:          [DMESG-WARN][81] ([IGT#6]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-skl2/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-skl1/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][83] ([fdo#109441]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [PASS][86] +10 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][87] ([fdo#109276]) -> [PASS][88] +15 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][89] ([fdo#109276] / [fdo#112080]) -> [FAIL][90] ([IGT#28])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][91] ([i915#454]) -> [SKIP][92] ([i915#468])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-tglb3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][93] ([fdo#109349]) -> [DMESG-WARN][94] ([fdo#107724])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [DMESG-WARN][95] ([i915#56]) -> [DMESG-WARN][96] ([i915#180])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7751/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7751 -> Patchwork_16118

  CI-20190529: 20190529
  CI_DRM_7751: bffb5bf41a2e3d84ee5043dcccad49578656a012 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16118: f1c4f0dc10f6c419538bac61eeae8002e3491cf4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16118/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
