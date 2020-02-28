Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 774B8172EA1
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 03:11:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2EB6EDC5;
	Fri, 28 Feb 2020 02:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E98C56EDC3;
 Fri, 28 Feb 2020 02:11:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E1B7FA41FB;
 Fri, 28 Feb 2020 02:11:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 28 Feb 2020 02:11:32 -0000
Message-ID: <158285589289.7475.9524379425385853332@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226213042.1708867-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200226213042.1708867-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/perf=3A_Mark_up_the_racy_u?=
 =?utf-8?q?se_of_perf-=3Eexclusive=5Fstream?=
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

Series: series starting with [1/3] drm/i915/perf: Mark up the racy use of perf->exclusive_stream
URL   : https://patchwork.freedesktop.org/series/73978/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8011_full -> Patchwork_16726_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16726_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16726_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16726_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-tglb5/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16726_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +12 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb1/igt@gem_busy@busy-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#110841])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb7/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#1277])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-tglb6/igt@gem_exec_balancer@hang.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-tglb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276] / [i915#677])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#677]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#112146]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#644])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-skl:          [PASS][16] -> [FAIL][17] ([i915#1066])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-skl2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][18] -> [INCOMPLETE][19] ([i915#151] / [i915#69])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-skl2/igt@i915_pm_rpm@system-suspend-execbuf.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-skl3/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-tglb:         [PASS][20] -> [FAIL][21] ([i915#488])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-tglb5/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-tglb7/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([fdo#108145])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#31])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-skl5/igt@kms_setmode@basic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-skl7/igt@kms_setmode@basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109276]) +26 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-skl:          [TIMEOUT][32] -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-skl8/igt@gem_ctx_persistence@close-replace-race.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-skl10/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][34] ([fdo#110854]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [SKIP][36] ([fdo#112146]) -> [PASS][37] +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb1/igt@gem_exec_schedule@deep-bsd.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb8/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][38] ([fdo#109276] / [i915#677]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb5/igt@gem_exec_schedule@implicit-both-bsd1.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@in-order-bsd2:
    - shard-iclb:         [SKIP][40] ([fdo#109276]) -> [PASS][41] +10 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb8/igt@gem_exec_schedule@in-order-bsd2.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb1/igt@gem_exec_schedule@in-order-bsd2.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-iclb:         [INCOMPLETE][42] ([i915#1120]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb1/igt@gem_exec_whisper@basic-queues-forked.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb1/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [DMESG-FAIL][44] ([i915#1233]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-tglb2/igt@i915_selftest@live_gt_lrc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-tglb5/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][46] ([i915#180]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][48] ([i915#79]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][50] ([i915#34]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
    - shard-tglb:         [SKIP][52] ([i915#668]) -> [PASS][53] +5 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-tglb5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-tglb7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [DMESG-WARN][54] ([i915#180]) -> [PASS][55] +5 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][56] ([fdo#109642] / [fdo#111068]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][58] ([fdo#109441]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][60] ([fdo#112080]) -> [PASS][61] +11 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][62] ([fdo#112080]) -> [FAIL][63] ([IGT#28])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [TIMEOUT][64] ([i915#1325]) -> [INCOMPLETE][65] ([i915#69])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8011/shard-skl2/igt@gem_softpin@noreloc-s3.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/shard-skl6/igt@gem_softpin@noreloc-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1120]: https://gitlab.freedesktop.org/drm/intel/issues/1120
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1325]: https://gitlab.freedesktop.org/drm/intel/issues/1325
  [i915#1333]: https://gitlab.freedesktop.org/drm/intel/issues/1333
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8011 -> Patchwork_16726

  CI-20190529: 20190529
  CI_DRM_8011: 39d6d8bcc9734483569c4422798a09f5bc025a9a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16726: cc6065ea6703a74ce4e5615a21fc5e6af527ba2d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16726/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
