Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD66141A7D
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2020 00:44:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 588E96E180;
	Sat, 18 Jan 2020 23:44:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D0FE6E180;
 Sat, 18 Jan 2020 23:44:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9441BA363B;
 Sat, 18 Jan 2020 23:44:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Sat, 18 Jan 2020 23:44:01 -0000
Message-ID: <157939104157.11511.7432623732425429400@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_drm/i915/sdvo=3A_Reduce_the_size_of?=
 =?utf-8?q?_the_on_stack_buffers_=28rev2=29?=
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

Series: series starting with [1/9] drm/i915/sdvo: Reduce the size of the on stack buffers (rev2)
URL   : https://patchwork.freedesktop.org/series/71775/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7753_full -> Patchwork_16127_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16127_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#679])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-glk3/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-glk8/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@processes:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#570])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-glk9/igt@gem_ctx_persistence@processes.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-glk5/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#111735] / [i915#472])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb4/igt@gem_ctx_shared@q-smoketest-vebox.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb4/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-render:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111606] / [fdo#111677] / [i915#472])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-render.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#463] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb1/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-blt:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#470] / [i915#472]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb1/igt@gem_exec_schedule@smoketest-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb3/igt@gem_exec_schedule@smoketest-blt.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-hsw:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-apl:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl3/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-apl3/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#413])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@i915_pm_rps@reset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb1/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live_requests:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#472])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@i915_selftest@live_requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb3/igt@i915_selftest@live_requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl5/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_flip@flip-vs-panning:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@kms_flip@flip-vs-panning.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl1/igt@kms_flip@flip-vs-panning.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#699])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl1/igt@kms_flip_tiling@flip-changes-tiling.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl6/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
    - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#49]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][39] -> [DMESG-WARN][40] ([i915#180]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145] / [i915#265]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109642] / [fdo#111068])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#31])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl8/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-apl8/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109276]) +17 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb5/igt@gem_busy@extended-parallel-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl2/igt@gem_ctx_isolation@bcs0-s3.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#110841]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111736] / [i915#472]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb3/igt@gem_exec_await@wide-contexts.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb7/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111593] / [i915#472]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb1/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][65] ([i915#472] / [i915#476]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb3/igt@gem_exec_parallel@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb7/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +6 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][69] ([i915#677]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][71] ([fdo#112146]) -> [PASS][72] +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][73] ([i915#472] / [i915#707]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@gem_exec_schedule@smoketest-vebox.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb5/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_exec_whisper@normal:
    - shard-tglb:         [INCOMPLETE][75] ([i915#472]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb3/igt@gem_exec_whisper@normal.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb7/igt@gem_exec_whisper@normal.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][77] ([fdo#112271] / [i915#530]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-apl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [TIMEOUT][79] ([fdo#112271] / [i915#530]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][81] ([fdo#103665] / [i915#530]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-kbl6/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-skl:          [DMESG-WARN][83] ([fdo#111870] / [i915#836]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl8/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][85] ([i915#454]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][87] ([i915#541]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl7/igt@i915_selftest@live_gt_heartbeat.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl9/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-skl:          [DMESG-WARN][89] ([i915#109]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl7/igt@kms_color@pipe-b-ctm-0-25.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl3/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-skl:          [FAIL][91] ([i915#54]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][93] ([IGT#5]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][95] ([i915#79]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][97] ([i915#79]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][101] ([i915#49]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][105] ([IGT#28]) -> [SKIP][106] ([fdo#109276] / [fdo#112080])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][107] ([i915#468]) -> [FAIL][108] ([i915#454])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][109] ([fdo#107724]) -> [SKIP][110] ([fdo#109349])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7753/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7753 -> Patchwork_16127

  CI-20190529: 20190529
  CI_DRM_7753: cef3a815e760485d4c011adb3dafb4d49bff9378 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5367: 94af6de4f07487b93c4f5008f3ed04b5fc045200 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16127: 8b2fc5fad88e713339de2caceea9cbfaa6e6ca6c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16127/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
