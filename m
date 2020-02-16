Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88985160547
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 19:20:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037086E110;
	Sun, 16 Feb 2020 18:20:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D27456E110;
 Sun, 16 Feb 2020 18:20:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CAADAA363E;
 Sun, 16 Feb 2020 18:20:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Sun, 16 Feb 2020 18:20:38 -0000
Message-ID: <158187723880.23349.11927037182381251077@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200212160434.6437-1-jani.nikula@intel.com>
In-Reply-To: <20200212160434.6437-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_MAINTAINERS=3A_Update_drm/i915_bug_?=
 =?utf-8?q?filing_URL?=
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

Series: series starting with [1/2] MAINTAINERS: Update drm/i915 bug filing URL
URL   : https://patchwork.freedesktop.org/series/73371/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7926_full -> Patchwork_16546_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16546_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112146]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb8/igt@gem_exec_async@concurrent-writes-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +12 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl4/igt@i915_suspend@sysfs-reader.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-hsw:          [PASS][19] -> [INCOMPLETE][20] ([i915#61]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-hsw5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668]) +7 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#899])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][35] -> [FAIL][36] ([i915#831])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw1/igt@prime_mmap_coherency@ioctl-errors.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_caching@reads:
    - shard-hsw:          [FAIL][37] ([i915#694]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw6/igt@gem_caching@reads.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-hsw6/igt@gem_caching@reads.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#110841]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb1/igt@gem_exec_schedule@deep-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb6/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][45] ([fdo#109276]) -> [PASS][46] +14 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [FAIL][47] ([i915#644]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-kbl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [INCOMPLETE][49] ([i915#716]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-skl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][51] ([i915#413]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb3/igt@i915_pm_rps@waitboost.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - shard-glk:          [FAIL][53] ([i915#52] / [i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-glk7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-glk2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][55] ([i915#79]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][59] ([i915#34]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][61] ([i915#180]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][63] ([fdo#108145]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-apl7/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-apl8/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][67] ([i915#31]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-skl4/igt@kms_setmode@basic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-skl9/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][69] ([fdo#112080]) -> [PASS][70] +6 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][71] ([i915#818]) -> [FAIL][72] ([i915#694]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw5/igt@gem_tiled_blits@normal.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-hsw1/igt@gem_tiled_blits@normal.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglb:         [SKIP][73] ([fdo#111825]) -> [INCOMPLETE][74] ([i915#516])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-tglb8/igt@kms_flip@2x-plain-flip-ts-check.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-tglb6/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@runner@aborted:
    - shard-hsw:          [FAIL][75] ([i915#974]) -> ([FAIL][76], [FAIL][77]) ([fdo#111012] / [i915#974])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7926/shard-hsw2/igt@runner@aborted.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-hsw1/igt@runner@aborted.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/shard-hsw5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111012]: https://bugs.freedesktop.org/show_bug.cgi?id=111012
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#516]: https://gitlab.freedesktop.org/drm/intel/issues/516
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7926 -> Patchwork_16546

  CI-20190529: 20190529
  CI_DRM_7926: 6b2fe829d300abf285e9db8b252ffacd216df3ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5437: ae42fedfd0c536c560e8e17b06d9c7b94a4e8f0c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16546: 63e6a1c6ccf1cf204f06b5e61c0a3b702d0bb004 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16546/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
