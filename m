Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5406158B81
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 09:54:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9FE6EE0A;
	Tue, 11 Feb 2020 08:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 072096EE09;
 Tue, 11 Feb 2020 08:54:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E40DCA00C7;
 Tue, 11 Feb 2020 08:54:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 11 Feb 2020 08:54:05 -0000
Message-ID: <158141124590.23973.18268404692790389392@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207151720.2812125-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200207151720.2812125-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/mm=3A_Break_long_searches_in_fragmented_address_spaces?=
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

Series: drm/mm: Break long searches in fragmented address spaces
URL   : https://patchwork.freedesktop.org/series/73154/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7887_full -> Patchwork_16484_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16484_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112146]) +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#644])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#79])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#407])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-glk9/igt@kms_flip@modeset-vs-vblank-race-interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-glk3/igt@kms_flip@modeset-vs-vblank-race-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#31])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-apl6/igt@kms_setmode@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-apl4/igt@kms_setmode@basic.html
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#31])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-glk2/igt@kms_setmode@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-glk1/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112080]) +13 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109276]) +11 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [TIMEOUT][23] ([fdo#112271]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb4/igt@gem_exec_balancer@hang.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][25] ([fdo#110854]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][27] ([fdo#112080]) -> [PASS][28] +8 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [SKIP][29] ([fdo#112146]) -> [PASS][30] +5 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb1/igt@gem_exec_schedule@preempt-self-bsd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb6/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][31] ([i915#644]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][33] ([i915#454]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][35] ([i915#413]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][37] ([i915#899]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb6/igt@kms_psr@psr2_cursor_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +26 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_rpm@legacy-planes:
    - shard-snb:          [INCOMPLETE][43] ([i915#82]) -> [SKIP][44] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-snb4/igt@i915_pm_rpm@legacy-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-snb6/igt@i915_pm_rpm@legacy-planes.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][45] ([fdo#107724]) -> [SKIP][46] ([fdo#109349])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7887 -> Patchwork_16484

  CI-20190529: 20190529
  CI_DRM_7887: b147ed9753265260d6380604de01c3d646a323cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5425: ad4542ef1adbaa1227bc9ba9e24bb0e0f6dd408d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16484: 0aacd903a4e7a4a30b32b1b91de5ae4a4dea7102 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16484/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
