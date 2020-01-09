Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A586F135313
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 07:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F127A6E397;
	Thu,  9 Jan 2020 06:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E6746E395;
 Thu,  9 Jan 2020 06:11:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3638FA0075;
 Thu,  9 Jan 2020 06:11:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 09 Jan 2020 06:11:55 -0000
Message-ID: <157855031519.4565.4226492404050789196@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108104539.3422768-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200108104539.3422768-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Pin_the_context_as_we_w?=
 =?utf-8?q?ork_on_it?=
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

Series: series starting with [1/4] drm/i915: Pin the context as we work on it
URL   : https://patchwork.freedesktop.org/series/71755/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7702_full -> Patchwork_16022_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16022_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16022_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16022_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_execlists:
    - shard-tglb:         [PASS][1] -> [DMESG-FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb1/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb2/igt@i915_selftest@live_execlists.html

  * igt@perf@enable-disable:
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb6/igt@perf@enable-disable.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb5/igt@perf@enable-disable.html
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-kbl2/igt@perf@enable-disable.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-kbl2/igt@perf@enable-disable.html
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb5/igt@perf@enable-disable.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb7/igt@perf@enable-disable.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl1/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl8/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-apl8/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-apl3/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-glk1/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-glk3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@oa-exponents:
    - shard-glk:          ([PASS][15], [PASS][16]) -> [DMESG-WARN][17]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-glk2/igt@perf@oa-exponents.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-glk7/igt@perf@oa-exponents.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-glk2/igt@perf@oa-exponents.html
    - shard-skl:          ([PASS][18], [PASS][19]) -> [DMESG-WARN][20]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl3/igt@perf@oa-exponents.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl7/igt@perf@oa-exponents.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl6/igt@perf@oa-exponents.html

  * igt@runner@aborted:
    - shard-kbl:          NOTRUN -> ([FAIL][21], [FAIL][22], [FAIL][23]) ([fdo#111732])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-kbl2/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-kbl6/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          NOTRUN -> ([FAIL][24], [FAIL][25], [FAIL][26]) ([fdo#111732])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-apl3/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-apl7/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-apl3/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16022_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +13 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          [PASS][31] -> [FAIL][32] ([i915#232])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-snb6/igt@gem_eio@reset-stress.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-snb5/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#110854])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#112146]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([fdo#111677] / [i915#472])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-iclb:         [PASS][39] -> [INCOMPLETE][40] ([i915#140]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb1/igt@gem_exec_suspend@basic-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb5/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][41] -> [FAIL][42] ([i915#520])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][43] -> [DMESG-WARN][44] ([i915#716])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          ([PASS][45], [PASS][46], [PASS][47]) -> [INCOMPLETE][48] ([i915#69])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl10/igt@i915_pm_backlight@fade_with_suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl9/igt@i915_pm_backlight@fade_with_suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl2/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][49] -> [FAIL][50] ([i915#413])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb4/igt@i915_pm_rps@reset.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb4/igt@i915_pm_rps@reset.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          ([PASS][51], [PASS][52]) -> [FAIL][53] ([i915#79])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl10/igt@kms_flip@flip-vs-expired-vblank.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-snb:          [PASS][56] -> [INCOMPLETE][57] ([i915#82])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
    - shard-tglb:         [PASS][58] -> [FAIL][59] ([i915#49])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([fdo#108145])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109642] / [fdo#111068])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb6/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][68] -> [FAIL][69] ([i915#31])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl3/igt@kms_setmode@basic.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl6/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][70] -> [SKIP][71] ([fdo#109276]) +24 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-iclb:         [FAIL][72] ([i915#679]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb8/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb3/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [SKIP][74] ([fdo#109276] / [fdo#112080]) -> ([PASS][75], [PASS][76])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb3/igt@gem_ctx_persistence@vcs1-cleanup.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb1/igt@gem_ctx_persistence@vcs1-cleanup.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb4/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][77] ([fdo#109276] / [fdo#112080]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb8/igt@gem_ctx_persistence@vcs1-queued.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb1/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@q-out-order-bsd2:
    - shard-iclb:         ([PASS][79], [SKIP][80], [SKIP][81]) ([fdo#109276]) -> [PASS][82] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb4/igt@gem_ctx_shared@q-out-order-bsd2.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb3/igt@gem_ctx_shared@q-out-order-bsd2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb6/igt@gem_ctx_shared@q-out-order-bsd2.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb2/igt@gem_ctx_shared@q-out-order-bsd2.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][83] ([i915#461]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [INCOMPLETE][85] ([i915#470]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb8/igt@gem_eio@reset-stress.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb8/igt@gem_eio@reset-stress.html

  * igt@gem_eio@unwedge-stress:
    - shard-apl:          [INCOMPLETE][87] ([fdo#103927]) -> [PASS][88] +5 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-apl8/igt@gem_eio@unwedge-stress.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-apl6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][89] ([fdo#111736] / [i915#472]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb6/igt@gem_exec_await@wide-all.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb2/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][91] ([i915#435] / [i915#472]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb1/igt@gem_exec_create@madvise.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb5/igt@gem_exec_create@madvise.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][93] ([i915#472] / [i915#476]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb3/igt@gem_exec_parallel@basic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb2/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][95] ([i915#470] / [i915#472]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb5/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_parallel@vcs1-contexts:
    - shard-iclb:         ([SKIP][97], [SKIP][98]) ([fdo#112080]) -> [PASS][99] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb7/igt@gem_exec_parallel@vcs1-contexts.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb3/igt@gem_exec_parallel@vcs1-contexts.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb2/igt@gem_exec_parallel@vcs1-contexts.html

  * igt@gem_exec_reuse@contexts:
    - shard-skl:          [INCOMPLETE][100] ([i915#659]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl5/igt@gem_exec_reuse@contexts.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl7/igt@gem_exec_reuse@contexts.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][102] ([i915#677]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd1:
    - shard-iclb:         ([SKIP][104], [SKIP][105]) ([fdo#109276]) -> [PASS][106] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [INCOMPLETE][107] ([fdo#111677] / [i915#472]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][109] ([fdo#112146]) -> [PASS][110] +5 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd1:
    - shard-iclb:         [SKIP][111] ([fdo#109276]) -> ([PASS][112], [PASS][113]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd1.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-tglb:         [INCOMPLETE][114] ([i915#460] / [i915#472]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb3/igt@gem_exec_suspend@basic-s3-devices.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb8/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-tglb:         [TIMEOUT][116] ([fdo#112126] / [i915#530]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb9/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-snb:          [FAIL][118] ([i915#520]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-snb5/igt@gem_persistent_relocs@forked-thrashing.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-snb2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][120] ([i915#644]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_wait@busy-vcs1:
    - shard-iclb:         ([PASS][122], [SKIP][123], [SKIP][124]) ([fdo#112080]) -> [PASS][125] +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb4/igt@gem_wait@busy-vcs1.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb6/igt@gem_wait@busy-vcs1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb3/igt@gem_wait@busy-vcs1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb2/igt@gem_wait@busy-vcs1.html

  * igt@i915_pm_rpm@debugfs-forcewake-user:
    - shard-iclb:         [INCOMPLETE][126] ([i915#140] / [i915#189]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb8/igt@i915_pm_rpm@debugfs-forcewake-user.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb1/igt@i915_pm_rpm@debugfs-forcewake-user.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][128] ([i915#413]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb3/igt@i915_pm_rps@waitboost.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb1/igt@i915_pm_rps@waitboost.html

  * igt@kms_busy@basic-modeset-pipe-a:
    - shard-apl:          ([PASS][130], [INCOMPLETE][131], [PASS][132]) ([fdo#103927]) -> [PASS][133]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-apl4/igt@kms_busy@basic-modeset-pipe-a.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-apl2/igt@kms_busy@basic-modeset-pipe-a.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-apl6/igt@kms_busy@basic-modeset-pipe-a.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-apl6/igt@kms_busy@basic-modeset-pipe-a.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][134] ([i915#180]) -> [PASS][135] +1 similar issue
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen:
    - shard-skl:          [FAIL][136] ([i915#54]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-onscreen.html

  * igt@kms_cursor_legacy@all-pipes-single-bo:
    - shard-skl:          [INCOMPLETE][138] -> [PASS][139] +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl5/igt@kms_cursor_legacy@all-pipes-single-bo.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl7/igt@kms_cursor_legacy@all-pipes-single-bo.html

  * igt@kms_cursor_legacy@pipe-a-forked-bo:
    - shard-hsw:          [INCOMPLETE][140] ([i915#61]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-hsw1/igt@kms_cursor_legacy@pipe-a-forked-bo.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-hsw5/igt@kms_cursor_legacy@pipe-a-forked-bo.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][142] ([i915#79]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-interruptible:
    - shard-iclb:         [INCOMPLETE][144] ([i915#140]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb8/igt@kms_flip@plain-flip-interruptible.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb1/igt@kms_flip@plain-flip-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          ([PASS][146], [PASS][147], [INCOMPLETE][148]) ([i915#123]) -> [PASS][149]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][150] ([fdo#108145] / [i915#265]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         ([SKIP][152], [SKIP][153], [SKIP][154]) ([fdo#109441]) -> [PASS][155] +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][156] ([fdo#109441]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-glk:          [INCOMPLETE][158] ([i915#58] / [k.org#198133]) -> [PASS][159] +5 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-glk8/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-glk4/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][160] ([fdo#112080]) -> [PASS][161] +5 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb6/igt@perf_pmu@init-busy-vcs1.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][162] ([fdo#109276]) -> [PASS][163] +7 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][164] ([IGT#28]) -> [SKIP][165] ([fdo#109276] / [fdo#112080])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_ctx_isolation@vcs2-clean:
    - shard-tglb:         [SKIP][166] ([fdo#112080]) -> [SKIP][167] ([fdo#111912] / [fdo#112080])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb9/igt@gem_ctx_isolation@vcs2-clean.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb6/igt@gem_ctx_isolation@vcs2-clean.html

  * igt@gem_ctx_isolation@vcs2-nonpriv:
    - shard-tglb:         [SKIP][168] ([fdo#111912] / [fdo#112080]) -> [SKIP][169] ([fdo#112080])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-tglb7/igt@gem_ctx_isolation@vcs2-nonpriv.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         ([PASS][170], [SKIP][171], [PASS][172]) ([i915#677]) -> [SKIP][173] ([i915#677])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7702/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_77

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16022/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
