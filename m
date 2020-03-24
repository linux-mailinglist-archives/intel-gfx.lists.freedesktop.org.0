Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF70D191BC9
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 22:14:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5543D89A14;
	Tue, 24 Mar 2020 21:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D69089A14;
 Tue, 24 Mar 2020 21:13:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05F2AA0071;
 Tue, 24 Mar 2020 21:13:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Tue, 24 Mar 2020 21:13:57 -0000
Message-ID: <158508443799.5746.13829039283488588874@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324185457.14635-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200324185457.14635-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_add_OA_interrupt_support_=28rev8=29?=
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

Series: drm/i915/perf: add OA interrupt support (rev8)
URL   : https://patchwork.freedesktop.org/series/54280/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8183_full -> Patchwork_17072_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17072_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110854])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [i915#677]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +22 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb3/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#79])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109642] / [fdo#111068])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb3/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#109441]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb4/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112080]) +11 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb2/igt@perf_pmu@busy-vcs1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb3/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][27] ([fdo#112080]) -> [PASS][28] +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][29] ([i915#470] / [i915#529]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-tglb2/igt@gem_exec_parallel@contexts.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-tglb2/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [SKIP][31] ([fdo#109276] / [i915#677]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][33] ([i915#677]) -> [PASS][34] +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-self-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb1/igt@gem_exec_schedule@preempt-self-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb8/igt@gem_exec_schedule@preempt-self-bsd.html

  * igt@gem_ringfill@basic-default-hang:
    - shard-tglb:         [INCOMPLETE][37] -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-tglb6/igt@gem_ringfill@basic-default-hang.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-tglb8/igt@gem_ringfill@basic-default-hang.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-apl:          [FAIL][41] ([i915#54]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-glk:          [FAIL][45] ([i915#54]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][47] ([i915#34]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][49] ([i915#1188]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl7/igt@kms_hdr@bpc-switch.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][51] ([fdo#108145]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][55] ([fdo#109276]) -> [PASS][56] +20 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [FAIL][57] ([i915#454]) -> [INCOMPLETE][58] ([i915#198])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-skl5/igt@i915_pm_dc@dc6-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-skl1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@cursor:
    - shard-snb:          [INCOMPLETE][59] ([i915#82]) -> [SKIP][60] ([fdo#109271])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8183/shard-snb2/igt@i915_pm_rpm@cursor.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/shard-snb5/igt@i915_pm_rpm@cursor.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8183 -> Patchwork_17072

  CI-20190529: 20190529
  CI_DRM_8183: 795894daf2cc32246af94541733e08649d082470 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5535: d1dcf40cc6869ac858586c5ad9f09af6617ce2ee @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17072: 72aa75eecb08b19d17cd766043dc0d2ccbbba8f6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17072/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
