Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C333189117
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 23:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEFD36E811;
	Tue, 17 Mar 2020 22:09:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D48666E5B9;
 Tue, 17 Mar 2020 22:09:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC281A0091;
 Tue, 17 Mar 2020 22:09:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 17 Mar 2020 22:09:22 -0000
Message-ID: <158448296280.5179.16197503198273159955@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200316225153.3394-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200316225153.3394-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Avoid_gem=5Fcontext-=3Emutex_for_simple_vma_lookup?=
 =?utf-8?q?_=28rev3=29?=
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

Series: drm/i915/gem: Avoid gem_context->mutex for simple vma lookup (rev3)
URL   : https://patchwork.freedesktop.org/series/74759/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8142_full -> Patchwork_16996_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16996_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16996_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16996_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-iclb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb1/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8142_full and Patchwork_16996_full:

### New IGT tests (1) ###

  * igt@sysfs_preempt_timeout@idempotent:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_16996_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#110841])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#110854])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#112080]) +13 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([i915#677]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#109276] / [i915#677]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +23 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#112146]) +8 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#644])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#644])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-kbl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-iclb:         [PASS][22] -> [TIMEOUT][23] ([i915#1284])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@kms_flip@flip-vs-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][24] -> [INCOMPLETE][25] ([i915#69]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-iclb:         [PASS][26] -> [TIMEOUT][27] ([i915#1346])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([fdo#108145]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb4/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#84])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-glk7/igt@perf@oa-exponents.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-glk7/igt@perf@oa-exponents.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][36] ([i915#1402]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [INCOMPLETE][38] ([fdo#103927] / [i915#1402]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [INCOMPLETE][40] ([i915#1402] / [i915#58] / [k.org#198133]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][42] ([fdo#109276] / [i915#677]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][44] ([fdo#112146]) -> [PASS][45] +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][46] ([i915#677]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb4/igt@gem_exec_schedule@pi-userfault-bsd.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-iclb:         [INCOMPLETE][48] ([i915#1401]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb6/igt@gem_exec_whisper@basic-fds-all.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb3/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][50] ([i915#644]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][52] ([i915#447]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb8/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][54] ([i915#454]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][56] ([i915#413]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb1/igt@i915_pm_rps@waitboost.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb3/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][58] ([i915#1430] / [i915#656]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl7/igt@i915_selftest@live@execlists.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl8/igt@i915_selftest@live@execlists.html
    - shard-apl:          [INCOMPLETE][60] ([fdo#103927] / [i915#656]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl8/igt@i915_selftest@live@execlists.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-apl3/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][62] ([i915#79]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][64] ([i915#221]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][66] ([i915#34]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][68] ([i915#1188]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][70] ([fdo#108145]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][72] ([fdo#108145] / [i915#265]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][74] ([fdo#109441]) -> [PASS][75] +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-apl:          [DMESG-WARN][78] ([i915#180]) -> [PASS][79] +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][80] ([fdo#112080]) -> [PASS][81] +9 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb2/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd:
    - shard-skl:          [SKIP][82] ([fdo#109271]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl10/igt@prime_busy@hang-bsd.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl9/igt@prime_busy@hang-bsd.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][84] ([fdo#109276]) -> [PASS][85] +17 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-iclb5/igt@prime_busy@hang-bsd2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-iclb2/igt@prime_busy@hang-bsd2.html

  * {igt@sysfs_timeslice_duration@timeout@rcs0}:
    - shard-skl:          [FAIL][86] ([i915#1459]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-skl10/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-skl9/igt@sysfs_timeslice_duration@timeout@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][88] ([i915#454]) -> [SKIP][89] ([i915#468])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-tglb8/igt@i915_pm_dc@dc6-psr.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][90], [FAIL][91], [FAIL][92]) ([fdo#103927] / [i915#1402] / [i915#529]) -> [FAIL][93] ([fdo#103927])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl2/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl7/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8142/shard-apl8/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/shard-apl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1284]: https://gitlab.freedesktop.org/drm/intel/issues/1284
  [i915#1346]: https://gitlab.freedesktop.org/drm/intel/issues/1346
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1430]: https://gitlab.freedesktop.org/drm/intel/issues/1430
  [i915#1459]: https://gitlab.freedesktop.org/drm/intel/issues/1459
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8142 -> Patchwork_16996

  CI-20190529: 20190529
  CI_DRM_8142: 13dfeddee92ca6b9d134e036ae315e93b96023db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5514: 921758a91a453e8148b3146ad874bbd4ae4364ec @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16996: 14c937a62591a82e1bc1d11ebc58194af9959877 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16996/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
