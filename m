Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE411CB232
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 16:46:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE346E237;
	Fri,  8 May 2020 14:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F8E4893AB;
 Fri,  8 May 2020 14:46:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28F04A47DA;
 Fri,  8 May 2020 14:46:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 08 May 2020 14:46:15 -0000
Message-ID: <158894917516.22722.12060390127331573510@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200508111035.18813-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200508111035.18813-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZG1h?=
 =?utf-8?q?-buf=3A_Use_atomic=5Ffetch=5Fadd=28=29_for_the_context_id?=
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

Series: dma-buf: Use atomic_fetch_add() for the context id
URL   : https://patchwork.freedesktop.org/series/77076/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8451_full -> Patchwork_17611_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17611_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-hsw:          [PASS][1] -> [INCOMPLETE][2] ([i915#61]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-hsw4/igt@gem_exec_flush@basic-uc-prw-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-hsw5/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#454])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#54] / [i915#93] / [i915#95]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-onscreen.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#699] / [i915#93] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-kbl3/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf@stress-open-close:
    - shard-iclb:         [PASS][15] -> [INCOMPLETE][16] ([i915#1356])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-iclb8/igt@perf@stress-open-close.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-iclb5/igt@perf@stress-open-close.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][17] ([fdo#109276]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-iclb5/igt@gem_exec_params@invalid-bsd-ring.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][19] ([i915#716]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl6/igt@gen9_exec_parse@allowed-all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-apl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [INCOMPLETE][21] ([i915#69]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-skl1/igt@i915_suspend@fence-restore-untiled.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-skl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-skl:          [FAIL][23] ([i915#54]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][27] ([i915#180] / [i915#95]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][29] ([fdo#109349]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][31] ([i915#79]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-iclb3/igt@kms_psr@psr2_no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@perf@enable-disable:
    - shard-apl:          [INCOMPLETE][39] ([i915#1847]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl8/igt@perf@enable-disable.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-apl8/igt@perf@enable-disable.html
    - shard-glk:          [INCOMPLETE][41] ([i915#58] / [k.org#198133]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-glk7/igt@perf@enable-disable.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-glk9/igt@perf@enable-disable.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][43] ([i915#468]) -> [FAIL][44] ([i915#454])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-tglb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [FAIL][45] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][46] ([i915#1319])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][47] ([fdo#110321]) -> [TIMEOUT][48] ([i915#1319])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8451/shard-apl8/igt@kms_content_protection@srm.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/shard-apl2/igt@kms_content_protection@srm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1356]: https://gitlab.freedesktop.org/drm/intel/issues/1356
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1847]: https://gitlab.freedesktop.org/drm/intel/issues/1847
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8451 -> Patchwork_17611

  CI-20190529: 20190529
  CI_DRM_8451: 901f1db9311638ff4fa9070be8248f1edd199aee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5641: 4f6c17f0dbbdf2c7b4e647bb909e6d31dfce9827 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17611: 1603bf6c1212dd003776b038e82a5e20b604b01f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17611/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
