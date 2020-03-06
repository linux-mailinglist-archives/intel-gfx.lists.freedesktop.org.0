Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF11317B95B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 10:34:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F251F6ECA7;
	Fri,  6 Mar 2020 09:33:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5E58B6E84B;
 Fri,  6 Mar 2020 09:33:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54691A011B;
 Fri,  6 Mar 2020 09:33:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rajat Jain" <rajatja@google.com>
Date: Fri, 06 Mar 2020 09:33:59 -0000
Message-ID: <158348723932.3081.10358804109163283230@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200305011943.214146-1-rajatja@google.com>
In-Reply-To: <20200305011943.214146-1-rajatja@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2C1/3=5D_intel=5Facpi=3A_Rename_drm=5Fd?=
 =?utf-8?q?ev_local_variable_to_dev?=
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

Series: series starting with [v6,1/3] intel_acpi: Rename drm_dev local variable to dev
URL   : https://patchwork.freedesktop.org/series/74298/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8070_full -> Patchwork_16831_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16831_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110854])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +23 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#118] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk9/igt@gem_exec_whisper@basic-queues-priority.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-glk2/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#644])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#69])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109642] / [fdo#111068])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb7/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl7/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-apl6/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl7/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-kbl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +19 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +15 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-tglb:         [INCOMPLETE][41] -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2:
    - shard-tglb:         [FAIL][43] ([i915#679]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd2.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [i915#677]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][51] ([i915#447]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb7/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][53] ([i915#413]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb8/igt@i915_pm_rps@waitboost.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-skl10/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb8/igt@kms_psr@psr2_sprite_render.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66] +26 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [INCOMPLETE][67] ([i915#1381]) -> [SKIP][68] ([i915#677])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd1:
    - shard-iclb:         [INCOMPLETE][69] ([i915#1381]) -> [SKIP][70] ([fdo#109276])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd1.html

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [SKIP][71] ([fdo#109276]) -> [INCOMPLETE][72] ([i915#1381])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@i915_module_load@reload:
    - shard-kbl:          [INCOMPLETE][73] ([fdo#103665]) -> [INCOMPLETE][74] ([fdo#103665] / [i915#1390])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-kbl1/igt@i915_module_load@reload.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-kbl1/igt@i915_module_load@reload.html
    - shard-glk:          [INCOMPLETE][75] ([i915#58] / [k.org#198133]) -> [INCOMPLETE][76] ([i915#1390] / [i915#58] / [k.org#198133])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-glk6/igt@i915_module_load@reload.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-glk6/igt@i915_module_load@reload.html
    - shard-apl:          [INCOMPLETE][77] ([fdo#103927]) -> [INCOMPLETE][78] ([fdo#103927] / [i915#1390])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-apl6/igt@i915_module_load@reload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-apl1/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][79] ([i915#468]) -> [FAIL][80] ([i915#454])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-snb:          ([FAIL][81], [FAIL][82], [FAIL][83], [FAIL][84], [FAIL][85], [FAIL][86], [FAIL][87], [FAIL][88]) ([fdo#111870] / [i915#1077] / [k.org#204565]) -> ([FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95]) ([fdo#111870] / [i915#1077])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-snb2/igt@runner@aborted.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-snb4/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-snb5/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-snb2/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-snb2/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-snb6/igt@runner@aborted.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-snb6/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8070/shard-snb2/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-snb2/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-snb4/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-snb4/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-snb5/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-snb6/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-snb5/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/shard-snb5/igt@runner@aborted.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1077]: https://gitlab.freedesktop.org/drm/intel/issues/1077
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1381]: https://gitlab.freedesktop.org/drm/intel/issues/1381
  [i915#1390]: https://gitlab.freedesktop.org/drm/intel/issues/1390
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#204565]: https://bugzilla.kernel.org/show_bug.cgi?id=204565


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8070 -> Patchwork_16831

  CI-20190529: 20190529
  CI_DRM_8070: d4e6f8b48e361f0cae9132f50f1778707b2546a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5495: 22df72de8affcec22d9f354bb6148d77f60cc580 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16831: f9f7e4554cff4100b4b20174a9d42c1f83042a10 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16831/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
