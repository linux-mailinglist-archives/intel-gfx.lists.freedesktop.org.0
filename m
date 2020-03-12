Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C01183BCE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 22:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA38E6EB40;
	Thu, 12 Mar 2020 21:58:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 54CC16EB3D;
 Thu, 12 Mar 2020 21:58:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A66DA47DF;
 Thu, 12 Mar 2020 21:58:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Mar 2020 21:58:31 -0000
Message-ID: <158405031114.4947.17734812979033827617@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311221739.30375-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200311221739.30375-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gem=3A_Mark_up_sw-fen?=
 =?utf-8?q?ce_notify_function?=
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

Series: series starting with [CI,1/2] drm/i915/gem: Mark up sw-fence notify function
URL   : https://patchwork.freedesktop.org/series/74605/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8125_full -> Patchwork_16942_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16942_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#977])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-tglb1/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-tglb7/igt@gem_busy@close-race.html

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +11 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb4/igt@gem_busy@extended-parallel-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#1277])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-tglb5/igt@gem_exec_balancer@hang.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-tglb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +18 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +9 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#413])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-tglb1/igt@i915_pm_rps@waitboost.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-tglb8/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-random:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x256-random.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#221])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-skl3/igt@kms_flip@flip-vs-suspend.html
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-kbl7/igt@kms_flip@flip-vs-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-kbl2/igt@kms_flip@flip-vs-suspend.html
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-apl4/igt@kms_flip@flip-vs-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-apl8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#1188])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-skl10/igt@kms_hdr@bpc-switch.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#648] / [i915#69])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][37] -> [FAIL][38] ([i915#31])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-kbl7/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-kbl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs0-s3:
    - shard-skl:          [INCOMPLETE][39] ([i915#146] / [i915#69]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-skl5/igt@gem_ctx_isolation@vcs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-skl2/igt@gem_ctx_isolation@vcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][41] ([fdo#103927] / [i915#1402]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-apl3/igt@gem_ctx_persistence@close-replace-race.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][43] ([fdo#112080]) -> [PASS][44] +20 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [i915#677]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-kbl7/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][53] ([i915#644]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][55] ([i915#447]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][57] ([i915#1430] / [i915#656]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-skl5/igt@i915_selftest@live@execlists.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-skl2/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +6 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#300]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][63] ([i915#46]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][65] ([i915#61]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-hsw2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][67] ([i915#899]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][69] ([fdo#109642] / [fdo#111068]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb8/igt@kms_psr@psr2_basic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-skl:          [TIMEOUT][73] ([fdo#111732]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-skl6/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-skl5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][75] ([fdo#109276]) -> [PASS][76] +23 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [INCOMPLETE][77] ([i915#1402]) -> [TIMEOUT][78] ([i915#1340])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_linear_blits@normal:
    - shard-apl:          [TIMEOUT][79] ([fdo#111732] / [i915#1322]) -> [TIMEOUT][80] ([i915#1322])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-apl4/igt@gem_linear_blits@normal.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-apl8/igt@gem_linear_blits@normal.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][81] ([i915#658]) -> [SKIP][82] ([i915#588])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [FAIL][83] ([i915#454]) -> [INCOMPLETE][84] ([i915#198])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-skl10/igt@i915_pm_dc@dc6-dpms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-skl3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@fences-dpms:
    - shard-snb:          [SKIP][85] ([fdo#109271]) -> [INCOMPLETE][86] ([i915#82]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-snb5/igt@i915_pm_rpm@fences-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-snb5/igt@i915_pm_rpm@fences-dpms.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][87], [FAIL][88]) ([i915#1389] / [i915#1402] / [i915#92]) -> [FAIL][89] ([i915#92])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-kbl4/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-kbl4/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][90], [FAIL][91]) ([fdo#103927] / [i915#1402]) -> [FAIL][92] ([fdo#103927])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-apl8/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8125/shard-apl3/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/shard-apl3/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1322]: https://gitlab.freedesktop.org/drm/intel/issues/1322
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8125 -> Patchwork_16942

  CI-20190529: 20190529
  CI_DRM_8125: 8fc697c3de927ae930efead8fd43032c6e5f5094 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16942: 00b915bf15e74b42e9a9eed91833d88ae83fc2a3 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16942/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
