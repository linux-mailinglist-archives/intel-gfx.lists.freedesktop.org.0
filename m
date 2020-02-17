Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5030B1619BA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 19:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B7CA6E0D8;
	Mon, 17 Feb 2020 18:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F069C6E0D1;
 Mon, 17 Feb 2020 18:28:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E7C61A0088;
 Mon, 17 Feb 2020 18:28:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kadiyala, Kishore" <kishore.kadiyala@intel.com>
Date: Mon, 17 Feb 2020 18:28:55 -0000
Message-ID: <158196413591.16571.7432678784454821001@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200214105316.16076-1-kishore.kadiyala@intel.com>
In-Reply-To: <20200214105316.16076-1-kishore.kadiyala@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_support_for_Color_encoding_YCBCR=5FBT2020?=
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

Series: Add support for Color encoding YCBCR_BT2020
URL   : https://patchwork.freedesktop.org/series/73457/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7938_full -> Patchwork_16568_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16568_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16568_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16568_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-iclb:         [PASS][1] -> [FAIL][2] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb3/igt@kms_plane@pixel-format-pipe-a-planes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb2/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane@pixel-format-pipe-c-planes:
    - shard-glk:          [PASS][3] -> [FAIL][4] +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-glk6/igt@kms_plane@pixel-format-pipe-c-planes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-glk5/igt@kms_plane@pixel-format-pipe-c-planes.html
    - shard-tglb:         [PASS][5] -> [FAIL][6] +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-tglb7/igt@kms_plane@pixel-format-pipe-c-planes.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-tglb1/igt@kms_plane@pixel-format-pipe-c-planes.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_ctx_persistence@close-replace-race}:
    - shard-iclb:         [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb8/igt@gem_ctx_persistence@close-replace-race.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb6/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [PASS][9] -> [FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-apl2/igt@gem_ctx_persistence@close-replace-race.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_16568_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#977])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-tglb6/igt@gem_busy@close-race.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-tglb5/igt@gem_busy@close-race.html

  * igt@gem_eio@unwedge-stress:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#232])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-glk3/igt@gem_eio@unwedge-stress.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-glk4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#112080]) +10 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([i915#677]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb3/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][21] -> [DMESG-WARN][22] ([i915#716])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-glk8/igt@gen9_exec_parse@allowed-single.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-glk5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#173])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb7/igt@kms_psr@no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb4/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-apl:          [PASS][37] -> [FAIL][38] ([i915#43])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-apl1/igt@kms_vblank@pipe-c-accuracy-idle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-apl1/igt@kms_vblank@pipe-c-accuracy-idle.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][39] -> [SKIP][40] ([fdo#109276]) +10 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@drm_read@fault-buffer:
    - shard-snb:          [SKIP][41] ([fdo#109271]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-snb4/igt@drm_read@fault-buffer.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-snb2/igt@drm_read@fault-buffer.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][43] ([fdo#109276]) -> [PASS][44] +18 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb3/igt@gem_exec_schedule@out-order-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb2/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +7 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
    - shard-skl:          [FAIL][49] ([i915#54]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [FAIL][53] ([i915#34]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * {igt@kms_hdr@bpc-switch-suspend}:
    - shard-apl:          [DMESG-WARN][55] ([i915#180]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-apl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [INCOMPLETE][57] ([i915#250]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][61] ([i915#69]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-skl10/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-skl3/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +12 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb3/igt@perf_pmu@busy-vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][65] ([fdo#112080]) -> [FAIL][66] ([IGT#28]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_rpm@gem-execbuf:
    - shard-snb:          [INCOMPLETE][67] ([i915#82]) -> [SKIP][68] ([fdo#109271])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7938/shard-snb4/igt@i915_pm_rpm@gem-execbuf.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/shard-snb5/igt@i915_pm_rpm@gem-execbuf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#977]: https://gitlab.freedesktop.org/drm/intel/issues/977


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7938 -> Patchwork_16568

  CI-20190529: 20190529
  CI_DRM_7938: 9fda6807b50ceb40ef01b055f6428db8965e3d06 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5441: 534ca091fe4ffed916752165bc5becd7ff56cd84 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16568: b4fc9ab087da4ae3bcedf2a5beab580e74273b64 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16568/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
