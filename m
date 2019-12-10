Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCE6117DE6
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 03:45:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17FEA6E5A5;
	Tue, 10 Dec 2019 02:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A4A496E56D;
 Tue, 10 Dec 2019 02:45:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B53DA0119;
 Tue, 10 Dec 2019 02:45:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 10 Dec 2019 02:45:07 -0000
Message-ID: <157594590749.18782.482097570713553062@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191209020145.3495050-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191209020145.3495050-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Detect_if_we_miss_WaIdleLiteRestore_=28rev3=29?=
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

Series: drm/i915/gt: Detect if we miss WaIdleLiteRestore (rev3)
URL   : https://patchwork.freedesktop.org/series/70605/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7521_full -> Patchwork_15653_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15653_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15653_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15653_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb7/igt@gem_ctx_persistence@processes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb5/igt@gem_ctx_persistence@processes.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_render_copy@y-tiled-to-vebox-yf-tiled}:
    - shard-iclb:         NOTRUN -> [SKIP][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-iclb3/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * {igt@perf@gen12-unprivileged-single-ctx-counters}:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb1/igt@perf@gen12-unprivileged-single-ctx-counters.html

  
Known issues
------------

  Here are the changes found in Patchwork_15653_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#456])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb5/igt@gem_ctx_isolation@bcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb8/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#679])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl3/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl4/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#461])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_exec_balancer@smoke:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111593])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb2/igt@gem_exec_balancer@smoke.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#435])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb9/igt@gem_exec_nop@basic-series.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb6/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-iclb3/igt@gem_exec_schedule@preempt-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb2/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#470] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb2/igt@gem_sync@basic-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb6/igt@gem_sync@basic-all.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#747])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl6/igt@i915_selftest@mock_sanitycheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl2/igt@i915_selftest@mock_sanitycheck.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
    - shard-hsw:          [PASS][31] -> [DMESG-WARN][32] ([IGT#6]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-hsw1/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-hsw6/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#559])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#646])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#79])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-panning:
    - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#109])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl7/igt@kms_flip@flip-vs-panning.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl8/igt@kms_flip@flip-vs-panning.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180]) +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-skl:          [PASS][45] -> [INCOMPLETE][46] ([i915#648] / [i915#667])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-kbl:          [PASS][47] -> [INCOMPLETE][48] ([fdo#103665]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-kbl6/igt@kms_plane@pixel-format-pipe-b-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-kbl3/igt@kms_plane@pixel-format-pipe-b-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#456] / [i915#460]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][51] ([fdo#109276] / [fdo#112080]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111593]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb8/igt@gem_exec_gttfill@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb8/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][55] ([i915#470]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb6/igt@gem_exec_parallel@contexts.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb7/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [SKIP][57] ([fdo#112146]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-iclb2/igt@gem_exec_schedule@deep-bsd.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-iclb5/igt@gem_exec_schedule@deep-bsd.html

  * {igt@gem_exec_schedule@pi-shared-iova-bsd2}:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +12 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][61] ([i915#463]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb9/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][63] ([i915#707]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [PASS][66] +7 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-iclb8/igt@gem_exec_store@cachelines-vcs1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-iclb1/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][67] ([i915#644]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-tglb:         [INCOMPLETE][69] ([i915#456]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb4/igt@gem_softpin@noreloc-s3.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb9/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@mock_sanitycheck:
    - shard-snb:          [DMESG-WARN][73] ([i915#747]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-snb1/igt@i915_selftest@mock_sanitycheck.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-snb1/igt@i915_selftest@mock_sanitycheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-tglb:         [INCOMPLETE][75] ([i915#456] / [i915#460]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb9/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][77] ([i915#109]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl3/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][79] ([i915#54]) -> [PASS][80] +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - shard-tglb:         [INCOMPLETE][81] ([fdo#112393] / [i915#667]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb7/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb1/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][85] ([i915#34]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff:
    - shard-tglb:         [FAIL][87] ([i915#49]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][89] ([fdo#112347] / [fdo#112391] / [i915#648] / [i915#667]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl4/igt@kms_plane@pixel-format-pipe-a-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
    - shard-kbl:          [INCOMPLETE][91] ([fdo#103665]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-kbl4/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-kbl1/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][93] ([fdo#108145]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-tglb:         [FAIL][95] ([fdo#111842]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb8/igt@kms_psr2_su@frontbuffer.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb9/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][97] ([fdo#109441]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-iclb8/igt@kms_psr@psr2_sprite_render.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][99] ([i915#31]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-apl6/igt@kms_setmode@basic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-apl7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][101] ([i915#460]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb2/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][103] ([fdo#111912] / [fdo#112080]) -> [SKIP][104] ([fdo#112080])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-tglb8/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [INCOMPLETE][105] ([fdo#103665]) -> [FAIL][106] ([fdo#110321])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-kbl7/igt@kms_content_protection@lic.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-kbl6/igt@kms_content_protection@lic.html

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][107] ([fdo#112347] / [i915#648]) -> [INCOMPLETE][108] ([fdo#112391] / [i915#648] / [i915#667]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7521/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/shard-skl6/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111842]: https://bugs.freedesktop.org/show_bug.cgi?id=111842
  [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112347]: https://bugs.freedesktop.org/show_bug.cgi?id=112347
  [fdo#112391]: https://bugs.freedesktop.org/show_bug.cgi?id=112391
  [fdo#112393]: https://bugs.freedesktop.org/show_bug.cgi?id=112393
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#559]: https://gitlab.freedesktop.org/drm/intel/issues/559
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#669]: https://gitlab.freedesktop.org/drm/intel/issues/669
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7521 -> Patchwork_15653

  CI-20190529: 20190529
  CI_DRM_7521: 9203f67985ebf27211aa1eabb77093302248c9fc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5341: 5fe683cdebde2d77d16ffc42c9fdf29a9f95bb82 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15653: b173543458dc8001ab5c47e2ab25d9acd8305fee @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15653/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
