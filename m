Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C52CE16106E
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 11:51:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2116E918;
	Mon, 17 Feb 2020 10:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB1036E918;
 Mon, 17 Feb 2020 10:51:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4258A73CB;
 Mon, 17 Feb 2020 10:51:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 17 Feb 2020 10:51:49 -0000
Message-ID: <158193670966.7222.16067142267296102342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213132045.6631-1-jani.nikula@intel.com>
In-Reply-To: <20200213132045.6631-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dsc=3A_force_full_modeset_whenever_DSC_is_enabled_at_prob?=
 =?utf-8?q?e?=
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

Series: drm/i915/dsc: force full modeset whenever DSC is enabled at probe
URL   : https://patchwork.freedesktop.org/series/73410/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7932_full -> Patchwork_16556_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16556_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_blits@basic:
    - shard-skl:          [PASS][1] -> [DMESG-WARN][2] ([i915#836])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl7/igt@gem_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-skl7/igt@gem_blits@basic.html

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl6/igt@gem_ctx_isolation@bcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl8/igt@gem_eio@in-flight-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-skl5/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +21 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#79])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][21] -> [INCOMPLETE][22] ([i915#221])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl6/igt@kms_flip@flip-vs-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-skl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-tglb:         [PASS][25] -> [SKIP][26] ([i915#668])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([fdo#108145])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][33] ([fdo#112080]) -> [PASS][34] +13 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb8/igt@gem_busy@extended-parallel-vcs1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][35] ([fdo#110854]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][37] ([fdo#109276]) -> [PASS][38] +18 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb8/igt@gem_exec_schedule@out-order-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [FAIL][43] ([i915#644]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-iclb:         [INCOMPLETE][47] ([i915#189]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb2/igt@i915_pm_rpm@cursor-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb4/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-tglb:         [SKIP][51] ([i915#668]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-y:
    - shard-skl:          [DMESG-WARN][53] ([IGT#6]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl2/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-skl3/igt@kms_plane_multiple@atomic-pipe-c-tiling-y.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][55] ([fdo#109441]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][57] ([i915#31]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl8/igt@kms_setmode@basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-apl6/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][59] ([i915#31]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl3/igt@kms_setmode@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-skl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][63] ([IGT#28]) -> [SKIP][64] ([fdo#112080]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_selftest@mock_timelines:
    - shard-glk:          [INCOMPLETE][65] ([i915#58] / [k.org#198133]) -> [INCOMPLETE][66] ([i915#1234] / [i915#58] / [k.org#198133])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-glk8/igt@i915_selftest@mock_timelines.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-glk8/igt@i915_selftest@mock_timelines.html
    - shard-kbl:          [INCOMPLETE][67] ([fdo#103665]) -> [INCOMPLETE][68] ([fdo#103665] / [i915#1234])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-kbl6/igt@i915_selftest@mock_timelines.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-kbl1/igt@i915_selftest@mock_timelines.html
    - shard-apl:          [INCOMPLETE][69] ([fdo#103927]) -> [INCOMPLETE][70] ([fdo#103927] / [i915#1234])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7932/shard-apl8/igt@i915_selftest@mock_timelines.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/shard-apl1/igt@i915_selftest@mock_timelines.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1234]: https://gitlab.freedesktop.org/drm/intel/issues/1234
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#189]: https://gitlab.freedesktop.org/drm/intel/issues/189
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7932 -> Patchwork_16556

  CI-20190529: 20190529
  CI_DRM_7932: da6301c2a1bda78897e67fb22e011c1574b7c6a2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5439: ed1f7d96d4d5d4565bcd3adb3a23b2002a25419e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16556: 042be97b434710f869f7a59990ee249fd899a810 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16556/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
