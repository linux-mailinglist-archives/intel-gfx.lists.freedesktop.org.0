Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06414157FE4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 17:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51DD06ECBD;
	Mon, 10 Feb 2020 16:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AED266E9C3;
 Mon, 10 Feb 2020 16:36:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A7CB8A00FD;
 Mon, 10 Feb 2020 16:36:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 10 Feb 2020 16:36:32 -0000
Message-ID: <158135259265.3097.16574925951834197206@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Try_to_fix_encoder_possible=5Fclones/crtc_=28rev2=29?=
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

Series: drm: Try to fix encoder possible_clones/crtc (rev2)
URL   : https://patchwork.freedesktop.org/series/63399/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7886_full -> Patchwork_16482_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16482_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110854])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +13 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-apl6/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#716])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-glk4/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#447])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb4/igt@i915_pm_dc@dc5-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#454])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#899])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109276]) +26 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [TIMEOUT][25] ([fdo#112271]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb8/igt@gem_exec_balancer@hang.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-tglb5/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][27] ([fdo#112146]) -> [PASS][28] +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][29] ([i915#677]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb8/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][31] ([i915#413]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         [SKIP][35] ([i915#668]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [FAIL][37] ([fdo#103375]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][39] ([fdo#109642] / [fdo#111068]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-kbl:          [INCOMPLETE][43] ([fdo#103665]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][45] ([fdo#112080]) -> [PASS][46] +15 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb8/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +21 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb4/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][49] ([fdo#109349]) -> [DMESG-WARN][50] ([fdo#107724])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7886 -> Patchwork_16482

  CI-20190529: 20190529
  CI_DRM_7886: c76da740823aa950e340a8e53758511680da79ca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5425: ad4542ef1adbaa1227bc9ba9e24bb0e0f6dd408d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16482: 3e57a6ac85fa82e45de24c0fe193644ff89d96fd @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16482/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
