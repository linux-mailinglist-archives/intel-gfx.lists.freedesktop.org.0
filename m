Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B86318DD79
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2020 02:36:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B15996E22B;
	Sat, 21 Mar 2020 01:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F142D6E22B;
 Sat, 21 Mar 2020 01:36:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C168AA00C7;
 Sat, 21 Mar 2020 01:36:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Sat, 21 Mar 2020 01:36:24 -0000
Message-ID: <158475458476.2758.804334118612411162@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1584714939.git.jani.nikula@intel.com>
In-Reply-To: <cover.1584714939.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_drm_device_based_logging_changes?=
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

Series: drm/i915: drm device based logging changes
URL   : https://patchwork.freedesktop.org/series/74927/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8167_full -> Patchwork_17040_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17040_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110841])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb7/igt@gem_exec_schedule@deep-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb1/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276]) +14 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_store@pages-vcs1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112080]) +14 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb1/igt@gem_exec_store@pages-vcs1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb5/igt@gem_exec_store@pages-vcs1.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#454])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#454])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl6/igt@i915_pm_dc@dc6-psr.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#54])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([i915#155])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-c:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#53])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-skl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl4/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-skl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][29] ([fdo#112080]) -> [PASS][30] +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][31] ([fdo#109276] / [i915#677]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][33] ([i915#677]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +7 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276]) -> [PASS][38] +20 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][39] ([i915#644]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [FAIL][41] ([i915#644]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][43] ([i915#79]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][45] ([i915#34]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_flip@plain-flip-ts-check.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-skl8/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
    - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][53] ([i915#899]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb6/igt@kms_psr@psr2_suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * {igt@sysfs_preempt_timeout@timeout@vecs0}:
    - shard-glk:          [FAIL][57] -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-glk6/igt@sysfs_preempt_timeout@timeout@vecs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-glk4/igt@sysfs_preempt_timeout@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [DMESG-WARN][59] -> [TIMEOUT][60] ([i915#1340])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl1/igt@gem_ctx_persistence@close-replace-race.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [INCOMPLETE][61] ([fdo#103927] / [i915#1402]) -> [TIMEOUT][62] ([i915#1340])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][63] ([i915#588]) -> [SKIP][64] ([i915#658])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][65] ([i915#468]) -> [FAIL][66] ([i915#454])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-tglb3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [TIMEOUT][67] ([i915#1319]) -> [FAIL][68] ([fdo#110321])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl3/igt@kms_content_protection@lic.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-apl8/igt@kms_content_protection@lic.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [INCOMPLETE][69] ([i915#198]) -> [FAIL][70] ([i915#1188])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8167 -> Patchwork_17040

  CI-20190529: 20190529
  CI_DRM_8167: b51a7e7f4f72cf780661a1e4b479e2b27ddbafc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17040: 5196c0d8ee072e997c79eb7a258c2f9d25ab07d6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17040/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
