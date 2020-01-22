Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 915CA145A60
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 17:57:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF916F5FE;
	Wed, 22 Jan 2020 16:57:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E1106F5FD;
 Wed, 22 Jan 2020 16:57:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5450EA0003;
 Wed, 22 Jan 2020 16:57:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Jan 2020 16:57:01 -0000
Message-ID: <157971222131.22394.6173429518566013399@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200121100927.114886-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200121100927.114886-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
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
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7783_full -> Patchwork_16189_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16189_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16189_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16189_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_atomic_transition@5x-modeset-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb4/igt@kms_atomic_transition@5x-modeset-transitions.html

  
#### Warnings ####

  * igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][2] ([fdo#112021]) -> [SKIP][3] +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb2/igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb3/igt@kms_atomic_transition@5x-modeset-transitions-nonblocking-fencing.html

  
Known issues
------------

  Here are the changes found in Patchwork_16189_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#112080]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [PASS][6] -> [FAIL][7] ([i915#570])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb3/igt@gem_ctx_persistence@processes.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb4/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb3/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@exec-shared-gtt-default:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#616])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb8/igt@gem_ctx_shared@exec-shared-gtt-default.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb6/igt@gem_ctx_shared@exec-shared-gtt-default.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +6 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
    - shard-hsw:          [PASS][14] -> [TIMEOUT][15] ([fdo#112271] / [i915#530])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-glk:          [PASS][16] -> [INCOMPLETE][17] ([i915#530] / [i915#58] / [k.org#198133])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-glk2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-glk1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [PASS][18] -> [TIMEOUT][19] ([fdo#112271] / [i915#530])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-snb:          [PASS][20] -> [TIMEOUT][21] ([fdo#112271] / [i915#530])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-snb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-apl:          [PASS][22] -> [TIMEOUT][23] ([fdo#112271] / [i915#530])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [PASS][24] -> [TIMEOUT][25] ([fdo#112271] / [i915#530])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-kbl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][26] -> [FAIL][27] ([i915#818])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw6/igt@gem_tiled_blits@interruptible.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw7/igt@gem_tiled_blits@interruptible.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl2/igt@i915_suspend@sysfs-reader.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#109])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl3/igt@kms_color@pipe-b-ctm-green-to-red.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl9/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-hsw:          [PASS][34] -> [DMESG-WARN][35] ([i915#44])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#49]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([fdo#108145])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109642] / [fdo#111068])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb8/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109441])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb4/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [PASS][44] -> [INCOMPLETE][45] ([i915#61])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw2/igt@perf_pmu@cpu-hotplug.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw4/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109276]) +12 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][48] ([i915#180]) -> [PASS][49] +6 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][50] ([fdo#109276] / [fdo#112080]) -> [PASS][51] +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][52] ([i915#140]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb1/igt@gem_exec_balancer@hang.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb7/igt@gem_exec_balancer@hang.html
    - shard-kbl:          [INCOMPLETE][54] ([fdo#103665]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-kbl7/igt@gem_exec_balancer@hang.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-kbl4/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][56] ([fdo#109276]) -> [PASS][57] +12 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb6/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][58] ([i915#463] / [i915#472]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb1/igt@gem_exec_schedule@smoketest-all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb1/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][60] ([fdo#112146]) -> [PASS][61] +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb6/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-apl:          [TIMEOUT][62] ([fdo#112271] / [i915#530]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
    - shard-hsw:          [TIMEOUT][64] ([fdo#112271] / [i915#530]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][66] ([fdo#112271]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-tglb:         [TIMEOUT][68] ([fdo#112126] / [fdo#112271]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-tglb:         [TIMEOUT][70] ([fdo#112126] / [fdo#112271] / [i915#530]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-glk:          [TIMEOUT][72] ([fdo#112271]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-glk2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-glk4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-hsw:          [FAIL][74] ([i915#874]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-hsw4/igt@gem_pipe_control_store_loop@reused-buffer.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-hsw6/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][76] ([i915#644]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][78] ([i915#644]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][80] ([i915#454]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_requests:
    - shard-tglb:         [INCOMPLETE][82] ([i915#472]) -> [PASS][83] +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb7/igt@i915_selftest@mock_requests.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb8/igt@i915_selftest@mock_requests.html
    - shard-apl:          [INCOMPLETE][84] ([fdo#103927]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl6/igt@i915_selftest@mock_requests.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl1/igt@i915_selftest@mock_requests.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-skl:          [DMESG-WARN][86] ([i915#109]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl6/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl6/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][88] ([IGT#5]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-apl8/igt@kms_flip@flip-vs-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-apl7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][92] ([i915#221]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglb:         [FAIL][94] ([i915#49]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
    - shard-skl:          [FAIL][96] ([i915#49]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][98] ([fdo#108145]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][100] ([fdo#109642] / [fdo#111068]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][102] ([fdo#109441]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][104] ([fdo#112080]) -> [PASS][105] +5 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb3/igt@perf_pmu@busy-check-all-vcs1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][106] ([fdo#109276] / [fdo#112080]) -> [FAIL][107] ([IGT#28])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][108] ([IGT#28]) -> [SKIP][109] ([fdo#109276] / [fdo#112080])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@kms_atomic_transition@4x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][110] ([fdo#112041]) -> [SKIP][111] ([fdo#112022] / [fdo#112041]) +3 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb8/igt@kms_atomic_transition@4x-modeset-transitions-nonblocking-fencing.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb4/igt@kms_atomic_transition@4x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking:
    - shard-tglb:         [SKIP][112] ([fdo#112016] / [fdo#112021]) -> [SKIP][113] ([fdo#112016]) +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][114] ([fdo#107724]) -> [SKIP][115] ([fdo#109349])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7783/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16189/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
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
