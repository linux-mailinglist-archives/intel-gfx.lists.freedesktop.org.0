Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28155147019
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 18:54:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 345FD6FE09;
	Thu, 23 Jan 2020 17:54:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E20016FE07;
 Thu, 23 Jan 2020 17:54:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9D1EA011C;
 Thu, 23 Jan 2020 17:54:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Jan 2020 17:54:17 -0000
Message-ID: <157980205786.1144.8875978957984334902@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121100927.114886-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200121100927.114886-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Reclaim_hanging_virtual_request_=28rev4=29?=
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

Series: drm/i915/execlists: Reclaim hanging virtual request (rev4)
URL   : https://patchwork.freedesktop.org/series/72320/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7783_full -> Patchwork_16189_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16189_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#570])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb3/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb4/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-shared-gtt-default:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#616])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb8/igt@gem_ctx_shared@exec-shared-gtt-default.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb6/igt@gem_ctx_shared@exec-shared-gtt-default.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-hsw:          [PASS][11] -> [TIMEOUT][12] ([fdo#112271] / [i915#530])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14] ([i915#530] / [i915#58] / [k.org#198133])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-glk2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-glk1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [PASS][15] -> [TIMEOUT][16] ([fdo#112271] / [i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-snb:          [PASS][17] -> [TIMEOUT][18] ([fdo#112271] / [i915#530])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][19] -> [TIMEOUT][20] ([fdo#112271] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][23] -> [FAIL][24] ([i915#818])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw7/igt@gem_tiled_blits@interruptible.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#109])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl3/igt@kms_color@pipe-b-ctm-green-to-red.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl9/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-hsw:          [PASS][31] -> [DMESG-WARN][32] ([i915#44])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#49]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109642] / [fdo#111068])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109441])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb4/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][41] -> [INCOMPLETE][42] ([i915#61])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw2/igt@perf_pmu@cpu-hotplug.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw4/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +12 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +6 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][47] ([fdo#109276] / [fdo#112080]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][49] ([i915#140]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb1/igt@gem_exec_balancer@hang.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb7/igt@gem_exec_balancer@hang.html
    - shard-kbl:          [INCOMPLETE][51] ([fdo#103665]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl7/igt@gem_exec_balancer@hang.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-kbl4/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][53] ([fdo#109276]) -> [PASS][54] +12 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][55] ([i915#463] / [i915#472]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb1/igt@gem_exec_schedule@smoketest-all.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb1/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58] +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb6/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [TIMEOUT][59] ([fdo#112271] / [i915#530]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
    - shard-hsw:          [TIMEOUT][61] ([fdo#112271] / [i915#530]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][63] ([fdo#112271]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-tglb:         [TIMEOUT][65] ([fdo#112126] / [fdo#112271]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [TIMEOUT][67] ([fdo#112126] / [fdo#112271] / [i915#530]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-glk:          [TIMEOUT][69] ([fdo#112271]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-glk2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-hsw:          [FAIL][71] ([i915#874]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw4/igt@gem_pipe_control_store_loop@reused-buffer.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw6/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][73] ([i915#644]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][75] ([i915#644]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][77] ([i915#454]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [INCOMPLETE][79] ([i915#472]) -> [PASS][80] +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb7/igt@i915_selftest@mock_requests.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb8/igt@i915_selftest@mock_requests.html
    - shard-apl:          [INCOMPLETE][81] ([fdo#103927]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl6/igt@i915_selftest@mock_requests.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl1/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-skl:          [DMESG-WARN][83] ([i915#109]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl6/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl6/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][85] ([IGT#5]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][89] ([i915#221]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         [FAIL][91] ([i915#49]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
    - shard-skl:          [FAIL][93] ([i915#49]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][95] ([fdo#108145]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][97] ([fdo#109642] / [fdo#111068]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][99] ([fdo#109441]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][101] ([fdo#112080]) -> [PASS][102] +5 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb3/igt@perf_pmu@busy-check-all-vcs1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][103] ([fdo#109276] / [fdo#112080]) -> [FAIL][104] ([IGT#28])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][105] ([IGT#28]) -> [SKIP][106] ([fdo#109276] / [fdo#112080])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@kms_atomic_transition@4x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][107] ([fdo#112041]) -> [SKIP][108] ([fdo#112022] / [fdo#112041]) +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb8/igt@kms_atomic_transition@4x-modeset-transitions-nonblocking-fencing.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb4/igt@kms_atomic_transition@4x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][109] ([fdo#112021]) -> [SKIP][110] ([fdo#112025]) +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb2/igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb3/igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][111] ([fdo#112016] / [fdo#112021]) -> [SKIP][112] ([fdo#112016]) +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][113] ([fdo#107724]) -> [SKIP][114] ([fdo#109349])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112025]: https://bugs.freedesktop.org/show_bug.cgi?id=112025
  [fdo#112041]: https://bugs.freedesktop.org/show_bug.cgi?id=112041
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#874]: https://gitlab.freedesktop.org/drm/intel/issues/874
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7783 -> Patchwork_16189

  CI-20190529: 20190529
  CI_DRM_7783: 3ee976286895f0bd54388efc16b12f62c624ff19 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5376: 5cf58d947a02379d2885d6dd4f8bb487cfc3eed2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16189: 10bccfae688b581c547189d6f977a858c4c33ad4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
