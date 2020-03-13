Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 988B71840CB
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 07:16:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83536E1F2;
	Fri, 13 Mar 2020 06:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F0AD86E1F2;
 Fri, 13 Mar 2020 06:16:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9F94A41FB;
 Fri, 13 Mar 2020 06:16:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 13 Mar 2020 06:16:13 -0000
Message-ID: <158408017392.30351.10998775705041197665@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200310160047.20748-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200310160047.20748-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gen12=3A_Disable_preemption_timeout_=28rev4=29?=
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

Series: drm/i915/gen12: Disable preemption timeout (rev4)
URL   : https://patchwork.freedesktop.org/series/74526/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8126_full -> Patchwork_16952_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16952_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16952_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16952_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt@default:
    - shard-tglb:         [PASS][1] -> [FAIL][2] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-tglb5/igt@gem_ctx_persistence@legacy-engines-hostile-preempt@default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-tglb5/igt@gem_ctx_persistence@legacy-engines-hostile-preempt@default.html

  
Known issues
------------

  Here are the changes found in Patchwork_16952_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb5/igt@gem_exec_schedule@preempt-self-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb1/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#644])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-tglb8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-tglb2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-skl7/igt@i915_pm_backlight@fade_with_suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#454])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [PASS][15] -> [INCOMPLETE][16] ([fdo#103927] / [i915#656])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-apl8/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-apl6/igt@i915_selftest@live@execlists.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-apl7/igt@kms_flip@flip-vs-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-apl2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#34])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-skl8/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#899])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-skl2/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-skl4/igt@kms_setmode@basic.html

  * igt@perf@short-reads:
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#51])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-apl3/igt@perf@short-reads.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-apl2/igt@perf@short-reads.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +17 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb6/igt@perf_pmu@busy-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +26 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +10 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb5/igt@gem_busy@busy-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-skl:          [INCOMPLETE][39] ([i915#69]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-skl8/igt@gem_ctx_isolation@bcs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-skl9/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][41] ([fdo#110854]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [i915#677]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +8 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +18 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][51] ([i915#454]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][53] ([i915#413]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-kbl:          [INCOMPLETE][55] ([fdo#112259] / [i915#656]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-kbl7/igt@i915_selftest@live@execlists.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-kbl4/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][57] ([i915#72]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-glk4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][59] ([i915#79]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-glk4/igt@kms_flip@flip-vs-expired-vblank.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#221]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-skl8/igt@kms_flip@flip-vs-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-skl5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-hsw:          [INCOMPLETE][65] ([i915#61]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][67] ([i915#1188]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][69] ([fdo#108145]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][71] ([i915#899]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][73] ([fdo#109441]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][75] ([i915#454]) -> [SKIP][76] ([i915#468])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][77], [FAIL][78], [FAIL][79]) ([i915#1389] / [i915#1402] / [i915#656] / [i915#92]) -> ([FAIL][80], [FAIL][81]) ([i915#1389] / [i915#1402] / [i915#92])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-kbl4/igt@runner@aborted.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-kbl7/igt@runner@aborted.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-kbl4/igt@runner@aborted.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-kbl1/igt@runner@aborted.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][82], [FAIL][83]) ([fdo#103927] / [i915#1402]) -> ([FAIL][84], [FAIL][85], [FAIL][86]) ([fdo#103927] / [i915#1402] / [i915#529])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-apl6/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8126/shard-apl2/igt@runner@aborted.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-apl3/igt@runner@aborted.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-apl7/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/shard-apl6/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8126 -> Patchwork_16952

  CI-20190529: 20190529
  CI_DRM_8126: 2bd9e989a5653d4cd710e9dd2b42b0a080f1add8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5505: 8973d811f3fdfb4ace4aabab2095ce0309881648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16952: 29ee5b2d76d9cff0df53a973f7bf9a11e26814dd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16952/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
