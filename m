Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D05161877
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 18:06:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB3E26E09F;
	Mon, 17 Feb 2020 17:06:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 92CD76E09F;
 Mon, 17 Feb 2020 17:06:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8AECBA47E7;
 Mon, 17 Feb 2020 17:06:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <natechancellor@gmail.com>
Date: Mon, 17 Feb 2020 17:06:31 -0000
Message-ID: <158195919153.16570.14482201818456036574@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214054706.33870-1-natechancellor@gmail.com>
In-Reply-To: <20200214054706.33870-1-natechancellor@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Cast_remain_to_unsigned_long_in_eb=5Frelocate=5Fvma?=
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

Series: drm/i915: Cast remain to unsigned long in eb_relocate_vma
URL   : https://patchwork.freedesktop.org/series/73440/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7936_full -> Patchwork_16565_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16565_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-apl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_16565_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#977])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-tglb5/igt@gem_busy@close-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-tglb5/igt@gem_busy@close-race.html

  * igt@gem_eio@unwedge-stress:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#232])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-glk2/igt@gem_eio@unwedge-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-glk6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb4/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +9 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +18 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-tglb:         [PASS][19] -> [SKIP][20] ([i915#668]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-kbl2/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#807])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-tglb5/igt@perf@oa-exponents.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-tglb8/igt@perf@oa-exponents.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][33] ([fdo#112080]) -> [PASS][34] +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb5/igt@gem_ctx_isolation@vcs1-none.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-blt:
    - shard-skl:          [INCOMPLETE][37] ([i915#1193]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-skl10/igt@gem_exec_schedule@pi-shared-iova-blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-skl5/igt@gem_exec_schedule@pi-shared-iova-blt.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb7/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +19 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][43] ([i915#644]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][45] ([i915#79]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * {igt@kms_hdr@bpc-switch}:
    - shard-skl:          [FAIL][49] ([i915#1188]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-skl8/igt@kms_hdr@bpc-switch.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][53] ([fdo#108145]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][55] ([i915#899]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:
    - shard-skl:          [DMESG-WARN][57] ([IGT#6]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-skl5/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-skl4/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][59] ([fdo#109642] / [fdo#111068]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][63] ([i915#31]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-apl7/igt@kms_setmode@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-apl7/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][65] ([i915#31]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-skl10/igt@kms_setmode@basic.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-skl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][67] ([i915#468]) -> [FAIL][68] ([i915#454])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [INCOMPLETE][69] ([fdo#103665] / [i915#600]) -> [DMESG-WARN][70] ([i915#180])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7936/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1193]: https://gitlab.freedesktop.org/drm/intel/issues/1193
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#600]: https://gitlab.freedesktop.org/drm/intel/issues/600
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#807]: https://gitlab.freedesktop.org/drm/intel/issues/807
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7936 -> Patchwork_16565

  CI-20190529: 20190529
  CI_DRM_7936: ca171ea6194e80454caeac3c7b1c0ee8eca8f32c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5441: 534ca091fe4ffed916752165bc5becd7ff56cd84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16565: 46e16ae78b49d58bc349f24b4b01fc701a615023 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16565/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
