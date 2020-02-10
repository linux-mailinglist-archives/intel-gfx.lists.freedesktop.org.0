Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AFF157F51
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 17:00:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C84289C27;
	Mon, 10 Feb 2020 16:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F3E176E9BB;
 Mon, 10 Feb 2020 16:00:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC64EA0119;
 Mon, 10 Feb 2020 16:00:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 10 Feb 2020 16:00:41 -0000
Message-ID: <158135044196.3098.1826933363356106302@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207111124.2762388-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200207111124.2762388-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gem=3A_Don=27t_leak_non-pe?=
 =?utf-8?q?rsistent_requests_on_changing_engines?=
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

Series: series starting with [1/3] drm/i915/gem: Don't leak non-persistent requests on changing engines
URL   : https://patchwork.freedesktop.org/series/73134/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7886_full -> Patchwork_16478_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16478_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb7/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [PASS][3] -> [TIMEOUT][4] ([fdo#112271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb6/igt@gem_exec_balancer@hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb1/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#716])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live_gt_heartbeat:
    - shard-kbl:          [PASS][15] -> [DMESG-FAIL][16] ([i915#541])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl6/igt@i915_selftest@live_gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-kbl7/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#899])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109276]) +22 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-apl3/igt@gem_ctx_isolation@rcs0-s3.html

  * {igt@gem_ctx_persistence@replace-hostile@vcs0}:
    - shard-kbl:          [FAIL][27] ([i915#1154]) -> [PASS][28] +9 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl1/igt@gem_ctx_persistence@replace-hostile@vcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-kbl1/igt@gem_ctx_persistence@replace-hostile@vcs0.html

  * {igt@gem_ctx_persistence@replace@vcs0}:
    - shard-apl:          [FAIL][29] ([i915#1154]) -> [PASS][30] +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-apl4/igt@gem_ctx_persistence@replace@vcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-apl3/igt@gem_ctx_persistence@replace@vcs0.html
    - shard-iclb:         [FAIL][31] ([i915#1154]) -> [PASS][32] +7 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@gem_ctx_persistence@replace@vcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb7/igt@gem_ctx_persistence@replace@vcs0.html
    - shard-glk:          [FAIL][33] ([i915#1154]) -> [PASS][34] +7 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-glk9/igt@gem_ctx_persistence@replace@vcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-glk9/igt@gem_ctx_persistence@replace@vcs0.html

  * {igt@gem_ctx_persistence@replace@vecs0}:
    - shard-tglb:         [FAIL][35] ([i915#1154]) -> [PASS][36] +9 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb1/igt@gem_ctx_persistence@replace@vecs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-tglb7/igt@gem_ctx_persistence@replace@vecs0.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][37] ([fdo#112146]) -> [PASS][38] +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][41] ([i915#644]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_wait@await-vcs1:
    - shard-iclb:         [SKIP][43] ([fdo#112080]) -> [PASS][44] +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb6/igt@gem_wait@await-vcs1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb2/igt@gem_wait@await-vcs1.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][45] ([i915#413]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb6/igt@i915_pm_rps@reset.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl2/igt@i915_suspend@forcewake.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         [SKIP][49] ([i915#668]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [FAIL][51] ([fdo#103375]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][55] ([fdo#103665]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +10 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][59] ([fdo#112080]) -> [FAIL][60] ([IGT#28])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][61] ([i915#454]) -> [SKIP][62] ([i915#468])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-stress-extra-wait:
    - shard-snb:          [SKIP][63] ([fdo#109271]) -> [INCOMPLETE][64] ([i915#82])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-snb6/igt@i915_pm_rpm@modeset-stress-extra-wait.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/shard-snb4/igt@i915_pm_rpm@modeset-stress-extra-wait.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1154]: https://gitlab.freedesktop.org/drm/intel/issues/1154
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7886 -> Patchwork_16478

  CI-20190529: 20190529
  CI_DRM_7886: c76da740823aa950e340a8e53758511680da79ca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5425: ad4542ef1adbaa1227bc9ba9e24bb0e0f6dd408d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16478: 8532f680f37f8d36d8677ce4dd3242ba292c9216 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16478/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
