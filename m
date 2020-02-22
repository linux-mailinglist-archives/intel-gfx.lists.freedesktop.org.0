Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C10168C35
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 04:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCE506E3DF;
	Sat, 22 Feb 2020 03:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C4406E3DF;
 Sat, 22 Feb 2020 03:38:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F024A47E2;
 Sat, 22 Feb 2020 03:38:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Sat, 22 Feb 2020 03:38:38 -0000
Message-ID: <158234271856.32576.11341065651096857328@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220003250.23248-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20200220003250.23248-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Donot_reuse_icl_get_and_put_dplls_=28rev2=29?=
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

Series: drm/i915/ehl: Donot reuse icl get and put dplls (rev2)
URL   : https://patchwork.freedesktop.org/series/73681/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7968_full -> Patchwork_16638_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16638_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16638_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16638_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-apl:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-apl6/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16638_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][2] -> [FAIL][3] ([i915#1277])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-tglb6/igt@gem_exec_balancer@hang.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-tglb3/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#110854])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([i915#677])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276]) +23 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112146]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-hsw:          [PASS][12] -> [FAIL][13] ([i915#694])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-hsw8/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#644])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][16] -> [FAIL][17] ([i915#644])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-iclb:         [PASS][18] -> [INCOMPLETE][19] ([i915#1185] / [i915#189])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb4/igt@i915_pm_rpm@system-suspend-devices.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb7/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-hsw:          [PASS][20] -> [INCOMPLETE][21] ([CI#80] / [i915#61])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-hsw1/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-hsw2/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([IGT#5])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][24] -> [INCOMPLETE][25] ([i915#221]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-skl9/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#899])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][32] -> [SKIP][33] ([fdo#109642] / [fdo#111068])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#109441]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-glk:          [PASS][36] -> [TIMEOUT][37] ([fdo#112271])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-glk9/igt@kms_rotation_crc@primary-rotation-90.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-glk6/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@perf@short-reads:
    - shard-apl:          [PASS][38] -> [TIMEOUT][39] ([fdo#112271] / [i915#51])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-apl1/igt@perf@short-reads.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-apl1/igt@perf@short-reads.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#112080]) +13 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@sync-bsd:
    - shard-apl:          [PASS][42] -> [INCOMPLETE][43] ([fdo#103927] / [i915#409])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-apl6/igt@prime_vgem@sync-bsd.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-apl6/igt@prime_vgem@sync-bsd.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-glk:          [INCOMPLETE][44] ([i915#58] / [k.org#198133]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-glk4/igt@gem_ctx_isolation@vecs0-s3.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-glk9/igt@gem_ctx_isolation@vecs0-s3.html

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-apl:          [INCOMPLETE][46] ([fdo#103927]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-apl7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_reuse@baggage:
    - shard-apl:          [TIMEOUT][48] ([fdo#112271]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-apl2/igt@gem_exec_reuse@baggage.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-apl7/igt@gem_exec_reuse@baggage.html

  * {igt@gem_exec_schedule@implicit-both-bsd1}:
    - shard-iclb:         [SKIP][50] ([fdo#109276] / [i915#677]) -> [PASS][51] +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][52] ([i915#677]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55] +8 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-skl:          [INCOMPLETE][56] ([i915#69]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-skl1/igt@gem_exec_suspend@basic-s3.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-skl10/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-hsw:          [FAIL][58] ([i915#694]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-hsw8/igt@gem_partial_pwrite_pread@reads-uncached.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-hsw2/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][60] ([i915#79]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * {igt@kms_hdr@bpc-switch-dpms}:
    - shard-skl:          [FAIL][62] ([i915#1188]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][66] ([fdo#108145] / [i915#265]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][68] ([i915#899]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-skl:          [DMESG-WARN][70] ([IGT#6]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-skl7/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-skl4/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][72] ([fdo#109441]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][74] ([i915#31]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-apl2/igt@kms_setmode@basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-apl3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][76] ([i915#180]) -> [PASS][77] +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][78] ([fdo#112080]) -> [PASS][79] +10 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [INCOMPLETE][80] ([i915#1176] / [i915#61]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-hsw5/igt@perf_pmu@cpu-hotplug.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-hsw1/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [FAIL][82] ([i915#831]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-hsw8/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][84] ([fdo#109276]) -> [PASS][85] +16 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][86] ([IGT#28]) -> [SKIP][87] ([fdo#112080])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][88] ([i915#818]) -> [FAIL][89] ([i915#694])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-hsw1/igt@gem_tiled_blits@interruptible.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-hsw6/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][90] ([i915#454]) -> [SKIP][91] ([i915#468])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-snb:          [SKIP][92] ([fdo#109271]) -> [INCOMPLETE][93] ([i915#82])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-snb4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-snb4/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          [TIMEOUT][94] ([fdo#112271]) -> [TIMEOUT][95] ([fdo#112271] / [i915#727])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7968/shard-kbl4/igt@kms_content_protection@atomic-dpms.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/shard-kbl4/igt@kms_content_protection@atomic-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1176]: https://gitlab.freedesktop.org/drm/intel/issues/1176
  [i915#1185]: https://gitlab.freedesktop.org/drm/intel/issues/1185
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7968 -> Patchwork_16638

  CI-20190529: 20190529
  CI_DRM_7968: fbfd614e946dc8ba097ea684179eee70fb6e53ed @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5452: c05dc6cd816feb1cc518ce777ab3fd6c81893113 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16638: 093d71af9e3fa0560bfd27666d8f401daf67731d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16638/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
