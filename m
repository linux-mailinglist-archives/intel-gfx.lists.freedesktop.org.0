Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16633193775
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 06:10:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF1B06E267;
	Thu, 26 Mar 2020 05:10:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCB686E264;
 Thu, 26 Mar 2020 05:10:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AE120A00CC;
 Thu, 26 Mar 2020 05:10:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Mar 2020 05:10:33 -0000
Message-ID: <158519943368.23001.6114431501580979255@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200325234803.6175-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200325234803.6175-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Drop_final_few_uses_of_drm=5Fi915=5Fprivate=2Eengine?=
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

Series: drm/i915: Drop final few uses of drm_i915_private.engine
URL   : https://patchwork.freedesktop.org/series/75095/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8190_full -> Patchwork_17091_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17091_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17091_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17091_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_17091_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-kbl4/igt@gem_eio@in-flight-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-kbl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#1292])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-kbl3/igt@gem_exec_balancer@bonded-slice.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-kbl3/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-random:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-glk9/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-glk5/igt@kms_cursor_crc@pipe-b-cursor-64x64-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#72])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#221])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-skl1/igt@kms_flip@flip-vs-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-skl9/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_prime@basic-crc:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#1031] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-apl4/igt@kms_prime@basic-crc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-apl2/igt@kms_prime@basic-crc.html
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#1031] / [i915#93] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-kbl7/igt@kms_prime@basic-crc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-kbl6/igt@kms_prime@basic-crc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb7/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf@short-reads:
    - shard-apl:          [PASS][31] -> [FAIL][32] ([i915#51])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-apl8/igt@perf@short-reads.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-apl1/igt@perf@short-reads.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#112080]) +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb7/igt@perf_pmu@init-busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +15 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb4/igt@prime_vgem@fence-wait-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][37] ([i915#677]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +11 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb8/igt@gem_exec_schedule@promotion-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb4/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-apl8/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][45] ([i915#716]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-skl1/igt@gen9_exec_parse@allowed-all.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-skl7/igt@gen9_exec_parse@allowed-all.html
    - shard-apl:          [DMESG-WARN][47] ([i915#716]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-apl7/igt@gen9_exec_parse@allowed-all.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][49] ([i915#34]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-skl10/igt@kms_flip@plain-flip-fb-recreate.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-skl9/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][51] ([i915#1188]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][55] ([fdo#108145]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][57] ([i915#899]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb1/igt@kms_psr@psr2_suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][61] ([i915#31]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-apl1/igt@kms_setmode@basic.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-apl1/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +6 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb8/igt@perf_pmu@busy-vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][65] ([i915#658]) -> [SKIP][66] ([i915#588])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][67] ([i915#608]) -> [SKIP][68] ([fdo#109642] / [fdo#111068])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-iclb1/igt@kms_psr2_su@page_flip.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][69], [FAIL][70]) ([fdo#103927] / [i915#716]) -> [FAIL][71] ([fdo#103927])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-apl7/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8190/shard-apl8/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/shard-apl1/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1031]: https://gitlab.freedesktop.org/drm/intel/issues/1031
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1292]: https://gitlab.freedesktop.org/drm/intel/issues/1292
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8190 -> Patchwork_17091

  CI-20190529: 20190529
  CI_DRM_8190: 73f711b364bc85c8a7189487c09431eb1f515ed0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5538: 47becbc9cd1fc7b1b78692f90fd3dcd5a9066965 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17091: 5d93726b0f962863c2138c1ad13025f63d5e75d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17091/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
