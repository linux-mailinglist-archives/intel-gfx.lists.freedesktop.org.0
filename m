Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C70F1B803C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 22:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99BC56EB72;
	Fri, 24 Apr 2020 20:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 439296EB75;
 Fri, 24 Apr 2020 20:10:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D2C2A47DB;
 Fri, 24 Apr 2020 20:10:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Apr 2020 20:10:27 -0000
Message-ID: <158775902711.10800.7586554271744021632@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200424162805.25920-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200424162805.25920-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Trace_RPS_event?=
 =?utf-8?q?s?=
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

Series: series starting with [CI,1/2] drm/i915/gt: Trace RPS events
URL   : https://patchwork.freedesktop.org/series/76442/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8361_full -> Patchwork_17455_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17455_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([i915#129])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-skl2/igt@kms_color@pipe-a-ctm-green-to-red.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-skl8/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#54]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#54] / [i915#93] / [i915#95]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-iclb:         [PASS][9] -> [TIMEOUT][10] ([i915#1544])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#49])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-skl2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#53] / [i915#93] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-kbl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-kbl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#53] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-apl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-apl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-apl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][27] ([i915#716]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][29] ([i915#69]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-skl6/igt@i915_suspend@forcewake.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-skl6/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-apl:          [FAIL][31] ([i915#54] / [i915#95]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][33] ([i915#300]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2}:
    - shard-glk:          [FAIL][35] ([i915#79]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-vga1}:
    - shard-snb:          [INCOMPLETE][37] ([i915#82]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][41] ([fdo#109642] / [fdo#111068]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-iclb4/igt@kms_psr@psr2_basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-iclb2/igt@kms_psr@psr2_basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-snb:          [INCOMPLETE][45] ([i915#82]) -> [SKIP][46] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-snb2/igt@i915_pm_rpm@system-suspend-execbuf.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-snb1/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          [FAIL][47] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][48] ([fdo#108145] / [i915#265])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][49] ([i915#608]) -> [SKIP][50] ([fdo#109642] / [fdo#111068])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8361/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/shard-iclb8/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1544]: https://gitlab.freedesktop.org/drm/intel/issues/1544
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8361 -> Patchwork_17455

  CI-20190529: 20190529
  CI_DRM_8361: b4686529aa525cedc337041c3e2741a93c1a0449 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17455: 1d1b796b4dd3fee70053d867ff15d517dd1f51cb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17455/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
