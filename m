Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA2114FCDB
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 12:26:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CB16EAA7;
	Sun,  2 Feb 2020 11:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1C7BB6EA95;
 Sun,  2 Feb 2020 11:26:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0BEAAA011A;
 Sun,  2 Feb 2020 11:26:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 02 Feb 2020 11:26:17 -0000
Message-ID: <158064277702.17035.6286148771151897831@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130164330.1922670-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200130164330.1922670-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Require_per-engine_reset_support_for_non-persisten?=
 =?utf-8?q?t_contexts_=28rev2=29?=
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

Series: drm/i915/gem: Require per-engine reset support for non-persistent contexts (rev2)
URL   : https://patchwork.freedesktop.org/series/72785/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7845_full -> Patchwork_16342_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16342_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16342_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16342_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_vm_create@isolation:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-glk1/igt@gem_vm_create@isolation.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-glk9/igt@gem_vm_create@isolation.html

  * igt@perf@enable-disable:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb6/igt@perf@enable-disable.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb3/igt@perf@enable-disable.html

  
Known issues
------------

  Here are the changes found in Patchwork_16342_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb5/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@file:
    - shard-tglb:         [PASS][7] -> [SKIP][8] ([fdo#112179] / [i915#1099]) +19 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-tglb1/igt@gem_ctx_persistence@file.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-tglb1/igt@gem_ctx_persistence@file.html
    - shard-skl:          [PASS][9] -> [SKIP][10] ([fdo#109271] / [i915#1099]) +18 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-skl6/igt@gem_ctx_persistence@file.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-skl7/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@rcs0-persistence:
    - shard-kbl:          [PASS][11] -> [SKIP][12] ([fdo#109271] / [i915#1099]) +19 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-kbl2/igt@gem_ctx_persistence@rcs0-persistence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-kbl4/igt@gem_ctx_persistence@rcs0-persistence.html

  * igt@gem_ctx_persistence@vcs0-persistence:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112179] / [i915#1099]) +19 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb7/igt@gem_ctx_persistence@vcs0-persistence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb7/igt@gem_ctx_persistence@vcs0-persistence.html

  * igt@gem_ctx_persistence@vcs0-queued:
    - shard-apl:          [PASS][15] -> [SKIP][16] ([fdo#109271] / [i915#1099]) +19 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-apl2/igt@gem_ctx_persistence@vcs0-queued.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-apl6/igt@gem_ctx_persistence@vcs0-queued.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-tglb:         [PASS][17] -> [SKIP][18] ([fdo#112080] / [i915#1099]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-tglb6/igt@gem_ctx_persistence@vcs1-cleanup.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-tglb1/igt@gem_ctx_persistence@vcs1-cleanup.html
    - shard-kbl:          [PASS][19] -> [SKIP][20] ([fdo#109271] / [fdo#112080] / [i915#1099]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-kbl1/igt@gem_ctx_persistence@vcs1-cleanup.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-kbl6/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_persistence@vcs1-hostile:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109276] / [fdo#112080] / [i915#1099])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb4/igt@gem_ctx_persistence@vcs1-hostile.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile.html

  * igt@gem_ctx_persistence@vecs0-persistence:
    - shard-glk:          [PASS][23] -> [SKIP][24] ([fdo#109271] / [i915#1099]) +18 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-glk2/igt@gem_ctx_persistence@vecs0-persistence.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-glk8/igt@gem_ctx_persistence@vecs0-persistence.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([i915#677])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112146]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb6/igt@gem_exec_schedule@preempt-other-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb4/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-hsw:          [PASS][29] -> [FAIL][30] ([i915#694])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-skl9/igt@kms_color@pipe-b-ctm-0-75.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-hsw:          [PASS][35] -> [INCOMPLETE][36] ([CI#80] / [i915#61])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-hsw2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-hsw5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#52] / [i915#54])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-skl10/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-iclb:         [PASS][39] -> [INCOMPLETE][40] ([i915#123])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145] / [i915#265]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109642] / [fdo#111068])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#31])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-apl6/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-apl1/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109276]) +16 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#110841]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [TIMEOUT][55] ([fdo#112271]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-tglb6/igt@gem_exec_balancer@hang.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-tglb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +12 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +13 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb2/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +3 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-hsw:          [FAIL][65] ([i915#694]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-hsw5/igt@gem_tiled_partial_pwrite_pread@reads.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-hsw1/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][67] ([i915#413]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb2/igt@i915_pm_rps@reset.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb5/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +5 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [DMESG-WARN][71] ([i915#42]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-snb4/igt@kms_flip@flip-vs-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-snb1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [INCOMPLETE][73] ([i915#69]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][77] ([i915#31]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-skl1/igt@kms_setmode@basic.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-skl1/igt@kms_setmode@basic.html
    - shard-glk:          [FAIL][79] ([i915#31]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-glk7/igt@kms_setmode@basic.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-glk6/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [FAIL][82] ([IGT#28])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_persistence@vcs2-persistence:
    - shard-tglb:         [SKIP][83] ([fdo#112080] / [i915#1086]) -> [SKIP][84] ([fdo#112080]) +4 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-tglb2/igt@gem_ctx_persistence@vcs2-persistence.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-tglb1/igt@gem_ctx_persistence@vcs2-persistence.html

  * igt@gem_eio@in-flight-immediate:
    - shard-kbl:          [INCOMPLETE][85] ([CI#80] / [fdo#103665] / [i915#1098]) -> [TIMEOUT][86] ([fdo#112271])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-kbl7/igt@gem_eio@in-flight-immediate.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-kbl6/igt@gem_eio@in-flight-immediate.html

  * igt@i915_pm_rpm@pm-tiling:
    - shard-snb:          [INCOMPLETE][87] ([i915#82]) -> [SKIP][88] ([fdo#109271])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7845/shard-snb1/igt@i915_pm_rpm@pm-tiling.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/shard-snb6/igt@i915_pm_rpm@pm-tiling.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#68]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/68
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112179]: https://bugs.freedesktop.org/show_bug.cgi?id=112179
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1086]: https://gitlab.freedesktop.org/drm/intel/issues/1086
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#1098]: https://gitlab.freedesktop.org/drm/intel/issues/1098
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7845 -> Patchwork_16342

  CI-20190529: 20190529
  CI_DRM_7845: 87712fc2ff1634223e993da943bc3c9c7ce96bad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16342: a35e6e581d78fdbfaf896b3197f188aef8168cfe @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16342/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
