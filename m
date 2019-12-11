Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2064711AB15
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 13:39:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949A46EB34;
	Wed, 11 Dec 2019 12:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF2C76EB34;
 Wed, 11 Dec 2019 12:39:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4D35A00E9;
 Wed, 11 Dec 2019 12:39:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Wed, 11 Dec 2019 12:39:33 -0000
Message-ID: <157606797393.30627.14883358032000279961@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20191210233453.183910-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_timeline_semaphore_support?=
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

Series: drm/i915: timeline semaphore support
URL   : https://patchwork.freedesktop.org/series/70728/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7534_full -> Patchwork_15683_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15683_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15683_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15683_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-random:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-64x21-random.html

  
Known issues
------------

  Here are the changes found in Patchwork_15683_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][2] -> [FAIL][3] ([i915#570])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl10/igt@gem_ctx_persistence@processes.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-skl10/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] / [fdo#112080])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-iclb8/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_eio@hibernate:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#456])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb2/igt@gem_eio@hibernate.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb5/igt@gem_eio@hibernate.html

  * igt@gem_eio@suspend:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#460])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb2/igt@gem_eio@suspend.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb8/igt@gem_eio@suspend.html

  * igt@gem_exec_basic@basic-vcs1:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112080]) +7 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_basic@basic-vcs1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-iclb6/igt@gem_exec_basic@basic-vcs1.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_userptr_blits@sync-unmap-cycles:
    - shard-snb:          [PASS][16] -> [DMESG-WARN][17] ([fdo#111870])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-snb2/igt@gem_userptr_blits@sync-unmap-cycles.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@live_execlists:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#647])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb5/igt@i915_selftest@live_execlists.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb7/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [PASS][22] -> [DMESG-WARN][23] ([i915#747])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb4/igt@i915_selftest@mock_sanitycheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-snb4/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#54])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-snb:          [PASS][26] -> [SKIP][27] ([fdo#109271]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-snb2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([i915#435] / [i915#474] / [i915#667])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][32] -> [INCOMPLETE][33] ([fdo#103665] / [i915#667]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl2/igt@kms_plane@pixel-format-pipe-b-planes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-kbl7/igt@kms_plane@pixel-format-pipe-b-planes.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][34] ([fdo#109276] / [fdo#112080]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][36] ([i915#69]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl10/igt@gem_eio@in-flight-suspend.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-skl7/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd2}:
    - shard-iclb:         [SKIP][38] ([fdo#109276]) -> [PASS][39] +8 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][40] ([fdo#112146]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][42] ([i915#644]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-snb:          [DMESG-WARN][44] ([fdo#111870]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb7/igt@gem_userptr_blits@dmabuf-unsync.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-snb4/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-hsw:          [INCOMPLETE][46] ([i915#61]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-hsw7/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-hsw7/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][48] ([i915#109]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl7/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-skl6/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][50] ([i915#54]) -> [PASS][51] +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-apl:          [DMESG-WARN][52] ([IGT#6]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][54] ([i915#79]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         [INCOMPLETE][56] ([i915#474] / [i915#667]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-tglb:         [INCOMPLETE][58] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-tglb:         [INCOMPLETE][60] ([i915#456] / [i915#460]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][62] ([i915#180]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes:
    - shard-tglb:         [INCOMPLETE][64] ([i915#460]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-d-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][66] ([fdo#108145] / [i915#265]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][68] ([fdo#109441]) -> [PASS][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +7 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][72] ([fdo#112080]) -> [PASS][73] +5 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][74] ([fdo#112080]) -> [SKIP][75] ([fdo#111912] / [fdo#112080]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb4/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][76] ([i915#82]) -> [DMESG-WARN][77] ([i915#443] / [i915#444])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-snb7/igt@gem_eio@kms.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-snb6/igt@gem_eio@kms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][78] ([i915#454]) -> [SKIP][79] ([i915#468])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb9/igt@i915_pm_dc@dc6-psr.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
    - shard-tglb:         [SKIP][80] ([fdo#112016] / [fdo#112021]) -> [SKIP][81] ([fdo#112021])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-tglb3/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][82] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [INCOMPLETE][83] ([fdo#112391] / [i915#648] / [i915#667])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-skl:          [INCOMPLETE][84] ([i915#648]) -> [INCOMPLETE][85] ([fdo#112391] / [i915#648] / [i915#667])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7534/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/shard-skl5/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
  [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#443]: https://gitlab.freedesktop.org/drm/intel/issues/443
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7534 -> Patchwork_15683

  CI-20190529: 20190529
  CI_DRM_7534: 66a6222c16abb82d6a4480b0a7ff8e375cc6a3a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5342: 3e43fb3fa97ce25819444d63848439acf6e397b5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15683: cbd4c7dfd3a397d25936553fecd8c54cd9abf3b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15683/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
