Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9150A18E386
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Mar 2020 19:00:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5AD26E22E;
	Sat, 21 Mar 2020 18:00:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D0EC6E20A;
 Sat, 21 Mar 2020 18:00:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45C7EA47E2;
 Sat, 21 Mar 2020 18:00:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 21 Mar 2020 18:00:25 -0000
Message-ID: <158481362525.2757.9047566413662492811@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200321135218.6922-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200321135218.6922-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Extend_intel=5Fwakeref_?=
 =?utf-8?q?to_support_delayed_puts_=28rev2=29?=
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

Series: series starting with [1/4] drm/i915: Extend intel_wakeref to support delayed puts (rev2)
URL   : https://patchwork.freedesktop.org/series/74938/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8167_full -> Patchwork_17043_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17043_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17043_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17043_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][1] ([fdo#103927] / [i915#1402]) -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-apl2/igt@gem_ctx_persistence@close-replace-race.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8167_full and Patchwork_17043_full:

### New IGT tests (3) ###

  * igt@gem_mmap@pf-nonblock:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_mmap_gtt@pf-nonblock:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_mmap_wc@pf-nonblock:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  

Known issues
------------

  Here are the changes found in Patchwork_17043_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +21 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#1277])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-tglb6/igt@gem_exec_balancer@hang.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-tglb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb8/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112146]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl6/igt@i915_pm_dc@dc6-psr.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-skl10/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@mman:
    - shard-apl:          [PASS][19] -> [INCOMPLETE][20] ([fdo#103927])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl4/igt@i915_selftest@live@mman.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-apl7/igt@i915_selftest@live@mman.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#300])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-256x256-onscreen.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-c:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#53])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-skl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-c.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb7/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl4/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-skl5/igt@kms_setmode@basic.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109276]) +19 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][35] ([fdo#112080]) -> [PASS][36] +10 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][37] ([fdo#109276] / [i915#677]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb5/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb2/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +7 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb3/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][43] ([i915#644]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-skl:          [FAIL][47] ([i915#34]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_flip@plain-flip-ts-check.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-skl10/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [INCOMPLETE][49] ([i915#198]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb6/igt@kms_psr@psr2_suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +29 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb3/igt@prime_busy@hang-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb4/igt@prime_busy@hang-bsd2.html

  * {igt@sysfs_preempt_timeout@timeout@vecs0}:
    - shard-glk:          [FAIL][59] -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-glk6/igt@sysfs_preempt_timeout@timeout@vecs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-glk8/igt@sysfs_preempt_timeout@timeout@vecs0.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [DMESG-WARN][61] -> [INCOMPLETE][62] ([i915#1402])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl1/igt@gem_ctx_persistence@close-replace-race.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-kbl3/igt@gem_ctx_persistence@close-replace-race.html
    - shard-glk:          [INCOMPLETE][63] ([i915#1402] / [i915#58] / [k.org#198133]) -> [TIMEOUT][64] ([i915#1340])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-glk8/igt@gem_ctx_persistence@close-replace-race.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-glk1/igt@gem_ctx_persistence@close-replace-race.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][65] ([i915#588]) -> [SKIP][66] ([i915#658])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][67] ([i915#468]) -> [FAIL][68] ([i915#454])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][69], [FAIL][70]) ([i915#1389] / [i915#1402] / [i915#1485] / [i915#92]) -> ([FAIL][71], [FAIL][72]) ([i915#1389] / [i915#1402] / [i915#92])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl1/igt@runner@aborted.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-kbl4/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-kbl3/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-kbl7/igt@runner@aborted.html
    - shard-glk:          [FAIL][73] ([i915#1402] / [k.org#202321]) -> [FAIL][74] ([i915#1402] / [i915#1485] / [k.org#202321])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8167/shard-glk8/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/shard-glk1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8167 -> Patchwork_17043

  CI-20190529: 20190529
  CI_DRM_8167: b51a7e7f4f72cf780661a1e4b479e2b27ddbafc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5526: f49ebeee9f54d6f23c60a842f75f65561d452ab0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17043: bed27875a49f92e4f6f2c7d301067b7d3cb3e86c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17043/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
