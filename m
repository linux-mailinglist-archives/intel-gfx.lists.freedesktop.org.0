Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B6517AA20
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 17:05:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57FE66EBD8;
	Thu,  5 Mar 2020 16:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8F976EBD8;
 Thu,  5 Mar 2020 16:05:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C28B2A00FD;
 Thu,  5 Mar 2020 16:05:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 05 Mar 2020 16:05:50 -0000
Message-ID: <158342435076.17236.3224348521775309119@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200304125118.12335-1-anshuman.gupta@intel.com>
In-Reply-To: <20200304125118.12335-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/edp=3A_Ignore_short_pulse_when_panel_powered_off?=
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

Series: drm/i915/edp: Ignore short pulse when panel powered off
URL   : https://patchwork.freedesktop.org/series/74265/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8066_full -> Patchwork_16817_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16817_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112146]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb3/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [i915#677]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb6/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_exec_schedule@promotion-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb3/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-apl4/igt@gem_workarounds@suspend-resume.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-apl4/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#151] / [i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl5/igt@i915_pm_rpm@system-suspend-modeset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl5/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#54])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_flip@dpms-off-confusion:
    - shard-kbl:          [PASS][21] -> [INCOMPLETE][22] ([fdo#103665])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-kbl4/igt@kms_flip@dpms-off-confusion.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-kbl1/igt@kms_flip@dpms-off-confusion.html
    - shard-apl:          [PASS][23] -> [INCOMPLETE][24] ([fdo#103927])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-apl2/igt@kms_flip@dpms-off-confusion.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-apl2/igt@kms_flip@dpms-off-confusion.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#79])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][27] -> [INCOMPLETE][28] ([i915#221])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl10/igt@kms_flip@flip-vs-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl10/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#34])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][35] -> [FAIL][36] ([i915#899])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-glk4/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#31])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl9/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl10/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][41] ([fdo#112080]) -> [PASS][42] +6 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb5/igt@gem_busy@extended-parallel-vcs1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb2/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_sseu@full-enable:
    - shard-skl:          [FAIL][47] -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl1/igt@i915_pm_sseu@full-enable.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl8/igt@i915_pm_sseu@full-enable.html

  * igt@i915_selftest@mock@buddy:
    - shard-skl:          [INCOMPLETE][49] ([i915#1310] / [i915#1360]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl2/igt@i915_selftest@mock@buddy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl8/igt@i915_selftest@mock@buddy.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [INCOMPLETE][51] ([i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl5/igt@i915_suspend@debugfs-reader.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
    - shard-skl:          [FAIL][53] ([i915#54]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][57] ([i915#1188]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +13 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb7/igt@prime_busy@hang-bsd2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_exec_schedule@pi-userfault-bsd:
    - shard-iclb:         [SKIP][63] ([i915#677]) -> [INCOMPLETE][64] ([i915#1381])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8066/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd.html

  
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1310]: https://gitlab.freedesktop.org/drm/intel/issues/1310
  [i915#1360]: https://gitlab.freedesktop.org/drm/intel/issues/1360
  [i915#1381]: https://gitlab.freedesktop.org/drm/intel/issues/1381
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8066 -> Patchwork_16817

  CI-20190529: 20190529
  CI_DRM_8066: 9e1454777a07902c85ce3febcc9648837a2224fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5491: d52794b426ae16630cc1e0354ae435ec98f6174b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16817: e394b1179ebcf458edc0cc1c9ddd081972b29021 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16817/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
