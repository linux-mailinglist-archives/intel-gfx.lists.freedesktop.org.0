Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D11DF156315
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 06:26:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5D286E170;
	Sat,  8 Feb 2020 05:26:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E904A6E16F;
 Sat,  8 Feb 2020 05:26:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DD993A0087;
 Sat,  8 Feb 2020 05:26:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 08 Feb 2020 05:26:23 -0000
Message-ID: <158113958387.30227.1386791835643720829@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205145910.1911321-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200205145910.1911321-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Relax_timeout_for_error-interrupt_reset_proc?=
 =?utf-8?q?essing?=
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

Series: drm/i915/selftests: Relax timeout for error-interrupt reset processing
URL   : https://patchwork.freedesktop.org/series/73032/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7870_full -> Patchwork_16436_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16436_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16436_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16436_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-hsw4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16436_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_blits@basic:
    - shard-hsw:          [PASS][2] -> [INCOMPLETE][3] ([i915#61])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-hsw5/igt@gem_blits@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-hsw4/igt@gem_blits@basic.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-glk:          [PASS][4] -> [INCOMPLETE][5] ([i915#58] / [k.org#198133])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-glk9/igt@gem_ctx_exec@basic-nohangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-glk2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-apl7/igt@gem_ctx_isolation@bcs0-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#110841])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +5 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#677])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb3/igt@gem_exec_schedule@pi-userfault-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#644])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-skl10/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][18] -> [INCOMPLETE][19] ([i915#69])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-skl9/igt@gem_softpin@noreloc-s3.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-skl2/igt@gem_softpin@noreloc-s3.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][20] -> [FAIL][21] ([i915#694])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-hsw4/igt@gem_tiled_blits@interruptible.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#118] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-glk7/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-glk8/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-hsw:          [PASS][24] -> [SKIP][25] ([fdo#109271])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-hsw4/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-hsw7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][26] -> [FAIL][27] ([IGT#5])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#34])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-skl:          [PASS][30] -> [FAIL][31] ([i915#49])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([fdo#108145])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([fdo#108145] / [i915#265])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#899])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][38] -> [SKIP][39] ([fdo#109642] / [fdo#111068])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb6/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb6/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][42] -> [FAIL][43] ([i915#31])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-apl7/igt@kms_setmode@basic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-apl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#112080]) +13 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109276]) +23 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-apl:          [INCOMPLETE][48] ([fdo#103927]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-apl8/igt@gem_ctx_exec@basic-nohangcheck.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-apl7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][50] ([i915#69]) -> [PASS][51] +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-skl7/igt@gem_eio@in-flight-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-skl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][52] ([fdo#110854]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb7/igt@gem_exec_balancer@smoke.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][54] ([fdo#112080]) -> [PASS][55] +13 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [SKIP][56] ([fdo#112146]) -> [PASS][57] +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb1/igt@gem_exec_schedule@deep-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb3/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][58] ([i915#677]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-hsw:          [FAIL][60] ([i915#694]) -> [PASS][61] +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][62] ([i915#644]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][64] ([i915#454]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][66] ([i915#413]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-tglb5/igt@i915_pm_rps@waitboost.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-tglb6/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][68] ([i915#725]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-hsw7/igt@i915_selftest@live_blt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-hsw2/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][70] ([IGT#5]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73] +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][74] ([i915#180]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][76] ([fdo#109276]) -> [PASS][77] +19 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][78] ([IGT#28]) -> [SKIP][79] ([fdo#112080])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][80] ([i915#468]) -> [FAIL][81] ([i915#454])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7870/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7870 -> Patchwork_16436

  CI-20190529: 20190529
  CI_DRM_7870: 50e5a3e658304d45872624fe081ec9d672c8a082 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16436: 8144e2a09947e42b4abfd3ef4887266f44e08806 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16436/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
