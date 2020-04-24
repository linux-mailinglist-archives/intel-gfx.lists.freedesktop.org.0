Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0B11B7E01
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 20:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EABB36EB0B;
	Fri, 24 Apr 2020 18:42:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AE8906EB07;
 Fri, 24 Apr 2020 18:42:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6D92A47E6;
 Fri, 24 Apr 2020 18:42:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 24 Apr 2020 18:42:17 -0000
Message-ID: <158775373765.10801.3713383755474095729@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200424152412.5928-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200424152412.5928-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Lazily_acquire_the_device_wakeref_for_freeing_obje?=
 =?utf-8?q?cts?=
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

Series: drm/i915/gem: Lazily acquire the device wakeref for freeing objects
URL   : https://patchwork.freedesktop.org/series/76440/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8360_full -> Patchwork_17453_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17453_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-apl6/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-apl1/igt@gem_eio@in-flight-suspend.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#454])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][5] -> [INCOMPLETE][6] ([CI#80] / [i915#155])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-kbl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#52] / [i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-skl7/igt@kms_hdr@bpc-switch.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#53] / [i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-kbl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-kbl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#53] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-apl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-apl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html

  
#### Possible fixes ####

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [FAIL][19] ([i915#129]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-skl6/igt@kms_color@pipe-a-ctm-green-to-red.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-skl3/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][21] ([i915#54]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1}:
    - shard-skl:          [FAIL][23] ([i915#79]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-vga1}:
    - shard-snb:          [INCOMPLETE][27] ([i915#82]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-snb1/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html

  * {igt@kms_flip@flip-vs-suspend@b-hdmi-a1}:
    - shard-hsw:          [INCOMPLETE][29] ([i915#61]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-hsw4/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-hsw2/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [FAIL][31] ([i915#49]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-skl6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-skl3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][33] ([i915#1188]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][37] ([i915#69]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-skl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][43] ([i915#31]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-apl6/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-apl1/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][45] ([i915#1542]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-hsw6/igt@perf@polling-parameterized.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-hsw4/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [DMESG-FAIL][47] ([i915#180] / [i915#95]) -> [FAIL][48] ([i915#95])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [FAIL][49] ([i915#93] / [i915#95]) -> [DMESG-FAIL][50] ([i915#180] / [i915#95])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8360/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#129]: https://gitlab.freedesktop.org/drm/intel/issues/129
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
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
  * Linux: CI_DRM_8360 -> Patchwork_17453

  CI-20190529: 20190529
  CI_DRM_8360: 034e1ba4afede6e10ef50596f891b7ff85f4ae22 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17453: 06a8555045e20cde4126faf363592728f2a2d69f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17453/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
