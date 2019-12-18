Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B79A3124508
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 11:49:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F82D6E2B6;
	Wed, 18 Dec 2019 10:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 249796E2B6;
 Wed, 18 Dec 2019 10:49:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4D41AA0073;
 Wed, 18 Dec 2019 10:49:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 18 Dec 2019 10:49:35 -0000
Message-ID: <157666617531.8356.12102837473081199317@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191217161814.8358-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191217161814.8358-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_pid_leak_with_banned_clients_=28rev2=29?=
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

Series: drm/i915: Fix pid leak with banned clients (rev2)
URL   : https://patchwork.freedesktop.org/series/71062/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7587_full -> Patchwork_15818_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_15818_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#460]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb1/igt@gem_eio@suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb4/igt@gem_eio@suspend.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#476])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb9/igt@gem_exec_parallel@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb6/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [PASS][11] -> [TIMEOUT][12] ([i915#530])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-apl2/igt@gem_softpin@noreloc-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-apl4/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-snb:          [PASS][17] -> [DMESG-WARN][18] ([fdo#111870]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-snb6/igt@gem_userptr_blits@dmabuf-sync.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-snb2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-tglb:         [PASS][19] -> [DMESG-WARN][20] ([i915#851])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb5/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb9/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#646])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][25] -> [FAIL][26] ([i915#49]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#456] / [i915#460]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-kbl:          [PASS][29] -> [INCOMPLETE][30] ([fdo#103665] / [i915#648] / [i915#667])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-kbl6/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb8/igt@kms_psr@psr2_dpms.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb8/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [fdo#112080]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb5/igt@gem_ctx_isolation@vcs1-clean.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb2/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [FAIL][39] ([i915#679]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl9/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl8/igt@gem_ctx_persistence@bcs0-mixed-process.html
    - shard-glk:          [FAIL][41] ([i915#679]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-glk7/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-glk3/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][43] ([i915#461]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-skl:          [DMESG-WARN][45] ([i915#109]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl6/igt@gem_exec_reloc@basic-write-wc-active.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl4/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@fifo-bsd:
    - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb1/igt@gem_exec_schedule@fifo-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb8/igt@gem_exec_schedule@fifo-bsd.html

  * {igt@gem_exec_schedule@pi-common-bsd}:
    - shard-iclb:         [SKIP][49] ([i915#677]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb1/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][53] ([i915#463]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb9/igt@gem_exec_schedule@smoketest-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][55] ([i915#707]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb1/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-tglb:         [TIMEOUT][57] ([i915#530]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_pwrite@huge-cpu-forwards:
    - shard-hsw:          [INCOMPLETE][59] ([i915#61]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-hsw8/igt@gem_pwrite@huge-cpu-forwards.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-hsw1/igt@gem_pwrite@huge-cpu-forwards.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [DMESG-WARN][61] ([fdo#111870]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-snb5/igt@gem_userptr_blits@dmabuf-unsync.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-snb5/igt@gem_userptr_blits@dmabuf-unsync.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-apl:          [DMESG-WARN][63] ([i915#716]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-apl4/igt@gen9_exec_parse@allowed-single.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-apl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@i2c:
    - shard-glk:          [FAIL][65] ([i915#68]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-glk8/igt@i915_pm_rpm@i2c.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-glk1/igt@i915_pm_rpm@i2c.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-kbl:          [DMESG-WARN][67] ([i915#747]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-kbl7/igt@i915_selftest@mock_sanitycheck.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-kbl7/igt@i915_selftest@mock_sanitycheck.html
    - shard-skl:          [DMESG-WARN][69] ([i915#747]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl9/igt@i915_selftest@mock_sanitycheck.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl5/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-c-legacy-gamma:
    - shard-skl:          [FAIL][73] ([i915#71]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl9/igt@kms_color@pipe-c-legacy-gamma.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl5/igt@kms_color@pipe-c-legacy-gamma.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [FAIL][75] ([i915#54]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][79] ([IGT#5]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][81] ([i915#79]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][83] ([i915#34]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [FAIL][85] ([i915#49]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][87] ([fdo#112391] / [i915#648] / [i915#667]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl10/igt@kms_plane@pixel-format-pipe-a-planes.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl6/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-iclb:         [INCOMPLETE][89] ([i915#140] / [i915#246]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb8/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-tglb:         [INCOMPLETE][93] ([i915#456] / [i915#460]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-idle-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][95] ([fdo#112080]) -> [PASS][96] +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-iclb5/igt@perf_pmu@busy-idle-no-semaphores-vcs1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-iclb2/igt@perf_pmu@busy-idle-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-reset:
    - shard-tglb:         [SKIP][97] ([fdo#111912] / [fdo#112080]) -> [SKIP][98] ([fdo#112080]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-tglb3/igt@gem_ctx_isolation@vcs2-reset.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][99] ([i915#82]) -> [DMESG-FAIL][100] ([i915#436])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-snb2/igt@gem_eio@kms.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-snb7/igt@gem_eio@kms.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][101] ([fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][102] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-skl1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@runner@aborted:
    - shard-snb:          [FAIL][103] ([k.org#204565]) -> ([FAIL][104], [FAIL][105]) ([i915#436] / [k.org#204565])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7587/shard-snb6/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-snb1/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/shard-snb7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#246]: https://gitlab.freedesktop.org/drm/intel/issues/246
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#68]: https://gitlab.freedesktop.org/drm/intel/issues/68
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#851]: https://gitlab.freedesktop.org/drm/intel/issues/851
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7587 -> Patchwork_15818

  CI-20190529: 20190529
  CI_DRM_7587: 2b7d528fee80c7129cf68ccb5e09d28d9678db1a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5350: 36431c5923099582e87379aec8e16d43090d06a7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15818: eeaeb0e96ad5cf4488d19ed2c72365f9f230d708 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15818/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
