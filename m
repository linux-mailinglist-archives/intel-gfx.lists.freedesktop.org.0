Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC05C18EB89
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 19:28:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B2E76E0EC;
	Sun, 22 Mar 2020 18:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C90096E0EB;
 Sun, 22 Mar 2020 18:28:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C162DA00E6;
 Sun, 22 Mar 2020 18:28:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Mar 2020 18:28:48 -0000
Message-ID: <158490172876.23726.16012144592085263573@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200322163225.28791-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200322163225.28791-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/gt=3A_Treat_idling_as_a_RP?=
 =?utf-8?q?S_downclock_event?=
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

Series: series starting with [1/2] drm/i915/gt: Treat idling as a RPS downclock event
URL   : https://patchwork.freedesktop.org/series/74948/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8170_full -> Patchwork_17046_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17046_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_blits@basic:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#211] / [i915#836])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-apl8/igt@gem_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-apl2/igt@gem_blits@basic.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb4/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-tglb:         [PASS][11] -> [TIMEOUT][12] ([i915#1408])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-tglb3/igt@gem_exec_whisper@basic-fds-forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-tglb8/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_linear_blits@interruptible:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#1263])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-apl7/igt@gem_linear_blits@interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-apl3/igt@gem_linear_blits@interruptible.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-glk9/igt@gen9_exec_parse@allowed-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl7/igt@i915_pm_dc@dc6-psr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-skl6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-apl4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109349])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-hsw:          [PASS][27] -> [FAIL][28] ([i915#46])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-hsw5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-hsw7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-c:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#53])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl5/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-skl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#69])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-skl5/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf_pmu@busy-accuracy-98-vcs1:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +13 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb1/igt@perf_pmu@busy-accuracy-98-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb7/igt@perf_pmu@busy-accuracy-98-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +7 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +10 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb3/igt@gem_exec_parallel@vcs1-fds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [i915#677]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][45] ([i915#677]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-blt:
    - shard-skl:          [INCOMPLETE][47] ([i915#1193]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl6/igt@gem_exec_schedule@pi-shared-iova-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-skl7/igt@gem_exec_schedule@pi-shared-iova-blt.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +21 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb6/igt@gem_exec_schedule@promotion-bsd1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#112146]) -> [PASS][52] +7 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb3/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][53] ([i915#644]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [FAIL][55] ([i915#644]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [FAIL][57] ([i915#644]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-kbl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-apl2/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][61] ([i915#413]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-tglb1/igt@i915_pm_rps@waitboost.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-tglb6/igt@i915_pm_rps@waitboost.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][65] ([i915#899]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][67] ([fdo#109642] / [fdo#111068]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][69] ([i915#84]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-glk5/igt@perf@oa-exponents.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-glk5/igt@perf@oa-exponents.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][71] ([i915#468]) -> [FAIL][72] ([i915#454])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][73] ([fdo#103927]) -> ([FAIL][74], [FAIL][75]) ([fdo#103927] / [i915#1485] / [i915#836])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8170/shard-apl3/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-apl6/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/shard-apl2/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1193]: https://gitlab.freedesktop.org/drm/intel/issues/1193
  [i915#1263]: https://gitlab.freedesktop.org/drm/intel/issues/1263
  [i915#1408]: https://gitlab.freedesktop.org/drm/intel/issues/1408
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#211]: https://gitlab.freedesktop.org/drm/intel/issues/211
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8170 -> Patchwork_17046

  CI-20190529: 20190529
  CI_DRM_8170: e464286ae9b7c18b0fab5fc638dff07c8afc5999 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17046: a737b46fd748c6d73ef215809fd34c3244752717 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17046/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
