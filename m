Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1907818919F
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 23:53:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64466E112;
	Tue, 17 Mar 2020 22:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 410036E02A;
 Tue, 17 Mar 2020 22:53:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38E86A008A;
 Tue, 17 Mar 2020 22:53:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 22:53:00 -0000
Message-ID: <158448558020.5180.3462959495812497656@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200317141250.20903-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200317141250.20903-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_up_documentation_paths_after_file_moving?=
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

Series: drm/i915: Fix up documentation paths after file moving
URL   : https://patchwork.freedesktop.org/series/74778/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8142_full -> Patchwork_16997_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16997_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16997_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16997_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@pi-common-render:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@gem_exec_schedule@pi-common-render.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl2/igt@gem_exec_schedule@pi-common-render.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-iclb:         NOTRUN -> [FAIL][3] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@perf_pmu@busy-no-semaphores-vecs0:
    - shard-tglb:         [PASS][4] -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-tglb2/igt@perf_pmu@busy-no-semaphores-vecs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-tglb7/igt@perf_pmu@busy-no-semaphores-vecs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8142_full and Patchwork_16997_full:

### New IGT tests (1) ###

  * igt@sysfs_preempt_timeout@idempotent:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16997_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][6] -> [INCOMPLETE][7] ([i915#1402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][8] -> [INCOMPLETE][9] ([i915#1402])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl8/igt@gem_ctx_persistence@close-replace-race.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl5/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@processes:
    - shard-skl:          [PASS][10] -> [FAIL][11] ([i915#570] / [i915#679])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl4/igt@gem_ctx_persistence@processes.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl4/igt@gem_ctx_persistence@processes.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#110854])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112080]) +10 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#109276] / [i915#677])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109276]) +22 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb1/igt@gem_exec_schedule@independent-bsd2.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb5/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([i915#677])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#112146])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb4/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-kbl:          [PASS][24] -> [FAIL][25] ([i915#644])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-kbl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [PASS][26] -> [DMESG-FAIL][27] ([fdo#112406])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl5/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#69])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl5/igt@i915_suspend@fence-restore-untiled.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][32] -> [FAIL][33] ([i915#46])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-glk7/igt@kms_flip@flip-vs-expired-vblank.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-glk3/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#221])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl8/igt@kms_flip@flip-vs-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#34])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl5/igt@kms_flip@plain-flip-ts-check.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl6/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([fdo#108145] / [i915#265])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][40] -> [FAIL][41] ([i915#173])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@kms_psr@no_drrs.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109441]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][44] ([i915#1402]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [INCOMPLETE][46] ([fdo#103927] / [i915#1402]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][48] ([fdo#109276] / [i915#677]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb1/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][50] ([fdo#109276]) -> [PASS][51] +11 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][52] ([i915#677]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55] +7 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-iclb:         [INCOMPLETE][56] ([i915#1401]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb6/igt@gem_exec_whisper@basic-fds-all.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb8/igt@gem_exec_whisper@basic-fds-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][58] ([i915#447]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb6/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][60] ([i915#454]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [FAIL][62] ([i915#413]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-tglb7/igt@i915_pm_rps@reset.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-tglb1/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][64] ([i915#413]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb2/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][66] ([i915#1430] / [i915#656]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl7/igt@i915_selftest@live@execlists.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl5/igt@i915_selftest@live@execlists.html
    - shard-apl:          [INCOMPLETE][68] ([fdo#103927] / [i915#656]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl8/igt@i915_selftest@live@execlists.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-apl1/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][70] ([i915#221]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][72] ([i915#34]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][74] ([i915#1188]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][76] ([fdo#108145] / [i915#265]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79] +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][80] ([i915#31]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl2/igt@kms_setmode@basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-apl2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][82] ([i915#180]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-apl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-wait-forked:
    - shard-snb:          [SKIP][86] ([fdo#109271]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-snb2/igt@kms_vblank@pipe-b-wait-forked.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-snb2/igt@kms_vblank@pipe-b-wait-forked.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][88] ([fdo#112080]) -> [PASS][89] +11 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd:
    - shard-skl:          [SKIP][90] ([fdo#109271]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl10/igt@prime_busy@hang-bsd.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl10/igt@prime_busy@hang-bsd.html

  * {igt@sysfs_preempt_timeout@timeout@rcs0}:
    - shard-skl:          [FAIL][92] ([i915#1459]) -> [PASS][93] +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl7/igt@sysfs_preempt_timeout@timeout@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl5/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][94] ([i915#658]) -> [SKIP][95] ([i915#588])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][96] ([i915#454]) -> [SKIP][97] ([i915#468])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-tglb8/igt@i915_pm_dc@dc6-psr.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][98] ([i915#92]) -> ([FAIL][99], [FAIL][100]) ([i915#1389] / [i915#1402] / [i915#92])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl1/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-kbl1/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][101], [FAIL][102], [FAIL][103]) ([fdo#103927] / [i915#1402] / [i915#529]) -> [FAIL][104] ([fdo#103927])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl2/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl7/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl8/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-apl4/igt@runner@aborted.html
    - shard-skl:          [FAIL][105] ([i915#69]) -> ([FAIL][106], [FAIL][107]) ([i915#1402] / [i915#69])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl7/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl5/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/shard-skl2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112406]: https://bugs.freedesktop.org/show_bug.cgi?id=112406
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8142 -> Patchwork_16997

  CI-20190529: 20190529
  CI_DRM_8142: 13dfeddee92ca6b9d134e036ae315e93b96023db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5514: 921758a91a453e8148b3146ad874bbd4ae4364ec @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16997: af208eb667dc2f87b932606c3ff4190b8aaa0d94 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16997/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
