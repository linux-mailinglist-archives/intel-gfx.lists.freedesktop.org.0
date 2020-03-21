Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E53918DC6D
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2020 01:18:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4684189364;
	Sat, 21 Mar 2020 00:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4976F89362;
 Sat, 21 Mar 2020 00:18:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 43597A47DF;
 Sat, 21 Mar 2020 00:18:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sat, 21 Mar 2020 00:18:00 -0000
Message-ID: <158474988025.2758.6769948685646825731@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Hotplug_cleanups_=28rev6=29?=
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

Series: drm/i915: Hotplug cleanups (rev6)
URL   : https://patchwork.freedesktop.org/series/72348/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8167_full -> Patchwork_17038_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17038_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17038_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17038_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl10/igt@kms_flip@plain-flip-fb-recreate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl5/igt@kms_flip@plain-flip-fb-recreate.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][3] ([fdo#103927] / [i915#1402]) -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [TIMEOUT][5] ([i915#1340]) -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl10/igt@gem_ctx_persistence@close-replace-race.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl8/igt@gem_ctx_persistence@close-replace-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_17038_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112080]) +12 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#1277])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-tglb6/igt@gem_exec_balancer@hang.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-tglb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276] / [i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#454])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl6/igt@i915_pm_dc@dc6-psr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl2/igt@i915_suspend@debugfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-apl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_flip@busy-flip:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#275])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl10/igt@kms_flip@busy-flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl5/igt@kms_flip@busy-flip.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-c:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#53])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145] / [i915#265]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl4/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl3/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109276]) +9 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd1:
    - shard-iclb:         [SKIP][35] ([fdo#109276]) -> [PASS][36] +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd1.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb8/igt@gem_exec_schedule@wide-bsd.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][43] ([i915#79]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][45] ([i915#34]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_flip@plain-flip-ts-check.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl1/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [INCOMPLETE][47] ([i915#198]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-glk2/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-glk6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [PASS][58] +7 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * {igt@sysfs_preempt_timeout@timeout@vecs0}:
    - shard-glk:          [FAIL][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-glk6/igt@sysfs_preempt_timeout@timeout@vecs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-glk1/igt@sysfs_preempt_timeout@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [DMESG-WARN][61] -> [TIMEOUT][62] ([i915#1340])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl1/igt@gem_ctx_persistence@close-replace-race.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][63] ([i915#588]) -> [SKIP][64] ([i915#658])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][65] ([i915#468]) -> [FAIL][66] ([i915#454])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-glk:          [FAIL][67] ([i915#1402] / [k.org#202321]) -> [FAIL][68] ([i915#1402] / [i915#1485] / [k.org#202321])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-glk8/igt@runner@aborted.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/shard-glk8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#275]: https://gitlab.freedesktop.org/drm/intel/issues/275
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8167 -> Patchwork_17038

  CI-20190529: 20190529
  CI_DRM_8167: b51a7e7f4f72cf780661a1e4b479e2b27ddbafc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17038: 5ea9c1e2721b47853a773f52d426920ac5c4c633 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17038/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
