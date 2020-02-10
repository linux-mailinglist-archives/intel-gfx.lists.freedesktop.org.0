Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DFB157F8D
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 17:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524C36ECB5;
	Mon, 10 Feb 2020 16:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C52B6E9C1;
 Mon, 10 Feb 2020 16:18:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6C347A0078;
 Mon, 10 Feb 2020 16:18:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 10 Feb 2020 16:18:43 -0000
Message-ID: <158135152341.3097.13919735333299919217@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207131938.2787828-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200207131938.2787828-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Make_sure_to_sanitize_CT_status?=
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

Series: drm/i915/guc: Make sure to sanitize CT status
URL   : https://patchwork.freedesktop.org/series/73146/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7886_full -> Patchwork_16480_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16480_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +21 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl6/igt@gem_softpin@noreloc-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-kbl7/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#173])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb7/igt@kms_psr@no_drrs.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#460] / [i915#472])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb6/igt@kms_psr@psr2_suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-tglb6/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-apl8/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-apl4/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-apl8/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [TIMEOUT][29] ([fdo#112271]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb8/igt@gem_exec_balancer@hang.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-tglb7/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][31] ([fdo#112146]) -> [PASS][32] +7 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb3/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][33] ([i915#677]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][35] ([fdo#109276]) -> [PASS][36] +19 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_store@pages-vcs1:
    - shard-iclb:         [SKIP][37] ([fdo#112080]) -> [PASS][38] +9 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb3/igt@gem_exec_store@pages-vcs1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb4/igt@gem_exec_store@pages-vcs1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][39] ([i915#644]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-tglb:         [INCOMPLETE][43] ([i915#460] / [i915#472]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb6/igt@i915_pm_rpm@system-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-tglb6/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-tglb:         [INCOMPLETE][45] ([i915#456] / [i915#460] / [i915#472]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb5/igt@i915_pm_rpm@system-suspend-execbuf.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-tglb5/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][47] ([i915#413]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb6/igt@i915_pm_rps@reset.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
    - shard-tglb:         [SKIP][49] ([i915#668]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [FAIL][51] ([fdo#103375]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-glk5/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-glk6/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][57] ([fdo#112080]) -> [FAIL][58] ([IGT#28])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7886 -> Patchwork_16480

  CI-20190529: 20190529
  CI_DRM_7886: c76da740823aa950e340a8e53758511680da79ca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5425: ad4542ef1adbaa1227bc9ba9e24bb0e0f6dd408d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16480: c8511f548220622486e3cd41249b0a639bf637d5 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16480/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
