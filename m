Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE01158B6A
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 09:44:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF616EE04;
	Tue, 11 Feb 2020 08:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A2AB6EE04;
 Tue, 11 Feb 2020 08:44:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61E07A0003;
 Tue, 11 Feb 2020 08:44:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Tue, 11 Feb 2020 08:44:12 -0000
Message-ID: <158141065237.23973.7507053892511779006@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207144116.20172-1-anshuman.gupta@intel.com>
In-Reply-To: <20200207144116.20172-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_HDCP_support_on_above_PORT=5FE?=
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

Series: drm/i915: HDCP support on above PORT_E
URL   : https://patchwork.freedesktop.org/series/73153/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7887_full -> Patchwork_16483_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16483_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#677])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-apl3/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-apl6/igt@gem_exec_suspend@basic-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#447])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb1/igt@i915_pm_dc@dc5-dpms.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#413])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb8/igt@i915_pm_rps@reset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb8/igt@i915_pm_rps@reset.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb5/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#31])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-glk2/igt@kms_setmode@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-glk8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112080]) +15 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109276]) +16 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb7/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-apl8/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][23] ([fdo#110841]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb6/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [TIMEOUT][25] ([fdo#112271]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb4/igt@gem_exec_balancer@hang.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb1/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][27] ([fdo#110854]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-common-bsd1:
    - shard-iclb:         [SKIP][29] ([fdo#109276]) -> [PASS][30] +16 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd1.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [SKIP][31] ([fdo#112146]) -> [PASS][32] +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb1/igt@gem_exec_schedule@preempt-self-bsd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb6/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][33] ([i915#454]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][35] ([i915#899]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][37] ([fdo#109642] / [fdo#111068]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb8/igt@kms_psr@psr2_dpms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +17 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb8/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb2/igt@perf_pmu@busy-accuracy-2-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][43] ([fdo#112080]) -> [FAIL][44] ([IGT#28]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_rpm@legacy-planes:
    - shard-snb:          [INCOMPLETE][45] ([i915#82]) -> [SKIP][46] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-snb4/igt@i915_pm_rpm@legacy-planes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-snb6/igt@i915_pm_rpm@legacy-planes.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][47] ([fdo#107724]) -> [SKIP][48] ([fdo#109349])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7887/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
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
  * Linux: CI_DRM_7887 -> Patchwork_16483

  CI-20190529: 20190529
  CI_DRM_7887: b147ed9753265260d6380604de01c3d646a323cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5425: ad4542ef1adbaa1227bc9ba9e24bb0e0f6dd408d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16483: 6d479e9812352b2afdf4f9ce1071d3e7c5040705 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16483/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
