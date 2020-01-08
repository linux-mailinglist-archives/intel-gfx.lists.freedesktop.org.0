Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0DC513396A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 04:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40AB6E852;
	Wed,  8 Jan 2020 03:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10ABF898D9;
 Wed,  8 Jan 2020 03:09:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00EDDA47E0;
 Wed,  8 Jan 2020 03:09:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jan 2020 03:09:40 -0000
Message-ID: <157845298098.23224.10022187117877154877@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200107143118.3288995-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200107143118.3288995-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Take_responsibility_for_engine-=3Erelease_as_the_la?=
 =?utf-8?q?st_step?=
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

Series: drm/i915/gt: Take responsibility for engine->release as the last step
URL   : https://patchwork.freedesktop.org/series/71696/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7695_full -> Patchwork_16014_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16014_full:

### Piglit changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * spec@ext_framebuffer_multisample_blit_scaled@blit-scaled samples=8 with gl_texture_2d_multisample_array:
    - {pig-hsw-4770r}:    NOTRUN -> [WARN][1]
   [1]: None

  
Known issues
------------

  Here are the changes found in Patchwork_16014_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@vcs0-mixed-process:
    - shard-glk:          [PASS][2] -> [FAIL][3] ([i915#679])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk4/igt@gem_ctx_persistence@vcs0-mixed-process.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-glk4/igt@gem_ctx_persistence@vcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] / [fdo#112080])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb7/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#461])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#111736] / [i915#472])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_exec_await@wide-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb8/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([fdo#111593] / [i915#472])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb5/igt@gem_exec_gttfill@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb9/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([i915#435] / [i915#472])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@gem_exec_nop@basic-sequential.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb2/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#109])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl8/igt@gem_exec_reloc@basic-gtt-read-active.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-skl10/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-chain-blt:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([fdo#111606] / [fdo#111677] / [i915#472])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb9/igt@gem_exec_schedule@preempt-queue-chain-blt.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([i915#472]) +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb6/igt@gem_exec_suspend@basic-s0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb6/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-tglb:         [PASS][22] -> [INCOMPLETE][23] ([i915#460] / [i915#472])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb9/igt@gem_exec_suspend@basic-s3-devices.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb6/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-apl:          [PASS][24] -> [TIMEOUT][25] ([i915#530])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [PASS][26] -> [FAIL][27] ([i915#520]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-snb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-snb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([i915#470] / [i915#472])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@gem_sync@basic-all.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb4/igt@gem_sync@basic-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][34] -> [FAIL][35] ([i915#49]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][36] -> [SKIP][37] ([fdo#109441]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@kms_psr@psr2_basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb3/igt@kms_psr@psr2_basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#112080]) +6 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109276]) +12 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_blits@basic:
    - shard-kbl:          [DMESG-WARN][42] ([i915#836]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl2/igt@gem_blits@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-kbl2/igt@gem_blits@basic.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][44] ([i915#180]) -> [PASS][45] +7 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@nop:
    - shard-tglb:         [INCOMPLETE][46] ([fdo#111736] / [i915#472]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb2/igt@gem_exec_balancer@nop.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb1/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][48] ([fdo#110854]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb4/igt@gem_exec_balancer@smoke.html
    - shard-tglb:         [INCOMPLETE][50] ([fdo#111593] / [i915#472]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb4/igt@gem_exec_balancer@smoke.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [INCOMPLETE][52] ([i915#435] / [i915#472]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb6/igt@gem_exec_reuse@single.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb2/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55] +8 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [SKIP][56] ([fdo#109276]) -> [PASS][57] +17 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb8/igt@gem_exec_schedule@in-order-bsd2.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb4/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][58] ([fdo#111677] / [i915#472]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb7/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][60] ([i915#530]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [INCOMPLETE][62] ([i915#470]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb9/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb8/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][64] ([i915#644]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][66] ([i915#454]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][68] ([i915#413]) -> [PASS][69] +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb5/igt@i915_pm_rps@reset.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [DMESG-WARN][70] ([i915#180]) -> [PASS][71] +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-apl2/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [FAIL][72] ([i915#54]) -> [PASS][73] +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][74] ([i915#72]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-panning-interruptible:
    - shard-skl:          [DMESG-WARN][76] ([i915#109]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl1/igt@kms_flip@flip-vs-panning-interruptible.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-skl7/igt@kms_flip@flip-vs-panning-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [FAIL][78] ([i915#699]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl4/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-skl6/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
    - shard-tglb:         [FAIL][80] ([i915#49]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][82] ([fdo#108145]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][84] ([fdo#108145] / [i915#265]) -> [PASS][85] +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][86] ([fdo#109441]) -> [PASS][87] +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][88] ([i915#69]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-skl6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [SKIP][90] ([fdo#112080]) -> [PASS][91] +6 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb7/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb4/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][92] ([fdo#109276] / [fdo#112080]) -> [FAIL][93] ([IGT#28])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][94] ([i915#82]) -> [DMESG-WARN][95] ([i915#444])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-snb4/igt@gem_eio@kms.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-snb2/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][96] ([i915#818]) -> [FAIL][97] ([i915#694])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-hsw7/igt@gem_tiled_blits@normal.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][98] ([i915#454]) -> [SKIP][99] ([i915#468])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7695/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/shard-tglb4/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7695 -> Patchwork_16014

  CI-20190529: 20190529
  CI_DRM_7695: 8df346a062d56d97ab53555d3f5829c26f950233 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5358: c6fc013f414b806175dc4143c58ab445e5235ea5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16014: 27b70a59a5036127fb58e37c25f21f148aeaf836 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16014/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
