Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7BB1508D3
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 15:54:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D2F6EC17;
	Mon,  3 Feb 2020 14:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 38C326EC16;
 Mon,  3 Feb 2020 14:54:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3125BA00FD;
 Mon,  3 Feb 2020 14:54:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 03 Feb 2020 14:54:10 -0000
Message-ID: <158074165018.3015.15615470908403713255@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200131104548.2451485-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/12=5D_drm/i915/gem=3A_Require_per-engin?=
 =?utf-8?q?e_reset_support_for_non-persistent_contexts?=
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

Series: series starting with [01/12] drm/i915/gem: Require per-engine reset support for non-persistent contexts
URL   : https://patchwork.freedesktop.org/series/72813/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7850_full -> Patchwork_16353_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16353_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@file:
    - shard-tglb:         [PASS][1] -> [SKIP][2] ([fdo#112179] / [i915#1099]) +19 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-tglb1/igt@gem_ctx_persistence@file.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-tglb8/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@rcs0-persistence:
    - shard-kbl:          [PASS][3] -> [SKIP][4] ([fdo#109271] / [i915#1099]) +19 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-kbl6/igt@gem_ctx_persistence@rcs0-persistence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-kbl1/igt@gem_ctx_persistence@rcs0-persistence.html

  * igt@gem_ctx_persistence@vcs0-cleanup:
    - shard-skl:          [PASS][5] -> [SKIP][6] ([fdo#109271] / [i915#1099]) +15 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-skl7/igt@gem_ctx_persistence@vcs0-cleanup.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-skl1/igt@gem_ctx_persistence@vcs0-cleanup.html

  * igt@gem_ctx_persistence@vcs0-persistence:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112179] / [i915#1099]) +19 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb5/igt@gem_ctx_persistence@vcs0-persistence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb3/igt@gem_ctx_persistence@vcs0-persistence.html

  * igt@gem_ctx_persistence@vcs0-queued:
    - shard-apl:          [PASS][9] -> [SKIP][10] ([fdo#109271] / [i915#1099]) +19 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-apl4/igt@gem_ctx_persistence@vcs0-queued.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-apl7/igt@gem_ctx_persistence@vcs0-queued.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-tglb:         [PASS][11] -> [SKIP][12] ([fdo#112080] / [i915#1099]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-tglb3/igt@gem_ctx_persistence@vcs1-cleanup.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-tglb8/igt@gem_ctx_persistence@vcs1-cleanup.html
    - shard-kbl:          [PASS][13] -> [SKIP][14] ([fdo#109271] / [fdo#112080] / [i915#1099]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-kbl2/igt@gem_ctx_persistence@vcs1-cleanup.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-kbl4/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_persistence@vecs0-persistence:
    - shard-glk:          [PASS][15] -> [SKIP][16] ([fdo#109271] / [i915#1099]) +19 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-glk4/igt@gem_ctx_persistence@vecs0-persistence.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-glk5/igt@gem_ctx_persistence@vecs0-persistence.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([i915#677])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276]) +24 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146]) +7 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_store@pages-vcs1:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#112080]) +10 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb1/igt@gem_exec_store@pages-vcs1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb8/igt@gem_exec_store@pages-vcs1.html

  * igt@gem_mmap_gtt@hang:
    - shard-snb:          [PASS][25] -> [INCOMPLETE][26] ([i915#82])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-snb5/igt@gem_mmap_gtt@hang.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-snb2/igt@gem_mmap_gtt@hang.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-hsw:          [PASS][27] -> [FAIL][28] ([i915#694]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#454])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#370])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb4/igt@i915_pm_rps@min-max-config-loaded.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb2/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#52] / [i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-xtiled.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-hsw:          [PASS][35] -> [DMESG-FAIL][36] ([i915#44]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-hsw5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-hsw5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +4 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:
    - shard-skl:          [PASS][43] -> [DMESG-WARN][44] ([IGT#6])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-skl7/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-skl1/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-apl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][49] ([fdo#112080]) -> [PASS][50] +15 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][51] ([fdo#109276]) -> [PASS][52] +15 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb7/igt@gem_exec_schedule@independent-bsd2.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-hsw:          [FAIL][57] ([i915#644]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-hsw7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-hsw5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-apl6/igt@gem_softpin@noreloc-s3.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-apl7/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][61] ([i915#413]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb6/igt@i915_pm_rps@reset.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb3/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-b-ctm-negative:
    - shard-skl:          [DMESG-WARN][63] ([i915#109]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-skl1/igt@kms_color@pipe-b-ctm-negative.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-skl5/igt@kms_color@pipe-b-ctm-negative.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-snb:          [DMESG-WARN][67] ([i915#42]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][69] ([i915#34]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [FAIL][73] ([i915#31]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-hsw5/igt@kms_setmode@basic.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-hsw7/igt@kms_setmode@basic.html

  * igt@kms_universal_plane@universal-plane-pipe-c-functional:
    - shard-kbl:          [FAIL][75] ([i915#331]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-kbl4/igt@kms_universal_plane@universal-plane-pipe-c-functional.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-kbl4/igt@kms_universal_plane@universal-plane-pipe-c-functional.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][77] ([i915#69]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-skl5/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][79] ([IGT#28]) -> [SKIP][80] ([fdo#112080])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_persistence@vcs1-hostile:
    - shard-iclb:         [SKIP][81] ([fdo#112080]) -> [SKIP][82] ([fdo#109276] / [fdo#112080] / [i915#1099])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb7/igt@gem_ctx_persistence@vcs1-hostile.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb1/igt@gem_ctx_persistence@vcs1-hostile.html

  * igt@gem_ctx_persistence@vcs2-persistence:
    - shard-tglb:         [SKIP][83] ([fdo#112080] / [i915#1086]) -> [SKIP][84] ([fdo#112080]) +4 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-tglb8/igt@gem_ctx_persistence@vcs2-persistence.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-tglb2/igt@gem_ctx_persistence@vcs2-persistence.html

  * igt@gem_eio@in-flight-immediate:
    - shard-apl:          [TIMEOUT][85] ([fdo#112271]) -> [INCOMPLETE][86] ([CI#80] / [fdo#103927] / [i915#1098])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-apl4/igt@gem_eio@in-flight-immediate.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-apl1/igt@gem_eio@in-flight-immediate.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][87] ([i915#694]) -> [FAIL][88] ([i915#818]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-hsw6/igt@gem_tiled_blits@normal.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][89] ([fdo#109349]) -> [DMESG-WARN][90] ([fdo#107724])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7850/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112179]: https://bugs.freedesktop.org/show_bug.cgi?id=112179
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1086]: https://gitlab.freedesktop.org/drm/intel/issues/1086
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#1098]: https://gitlab.freedesktop.org/drm/intel/issues/1098
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#331]: https://gitlab.freedesktop.org/drm/intel/issues/331
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#370]: https://gitlab.freedesktop.org/drm/intel/issues/370
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7850 -> Patchwork_16353

  CI-20190529: 20190529
  CI_DRM_7850: ae66f2257648ce52c51298506977baa32873c9d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16353: 5b086f11a8fea2dc9872072e19f7f108bac5bf41 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16353/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
