Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E9D1D2216
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 00:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3973A6E247;
	Wed, 13 May 2020 22:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 884D66E157;
 Wed, 13 May 2020 22:35:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A11CA008A;
 Wed, 13 May 2020 22:35:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 May 2020 22:35:11 -0000
Message-ID: <158940931146.25407.6188089894746394712@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513173504.28322-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200513173504.28322-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Drop_no-semaphore_boosting_=28rev2=29?=
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

Series: drm/i915: Drop no-semaphore boosting (rev2)
URL   : https://patchwork.freedesktop.org/series/77237/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8475_full -> Patchwork_17649_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17649_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2] ([i915#69])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl5/igt@i915_suspend@forcewake.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-skl3/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#300])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#1181])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-apl3/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109349])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([fdo#103375])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-iclb3/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#31])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-hsw4/igt@kms_setmode@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-hsw4/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][19] ([i915#54]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][21] ([i915#180]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
    - shard-snb:          [SKIP][23] ([fdo#109271]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-snb4/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-tglb:         [DMESG-WARN][25] ([i915#128]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-tglb2/igt@kms_cursor_legacy@pipe-d-torture-move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-tglb7/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][27] ([i915#79]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][31] ([i915#1188]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][33] ([fdo#108145] / [i915#265]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][35] ([i915#173]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb1/igt@kms_psr@no_drrs.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][39] ([i915#31]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl4/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-apl7/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-hsw:          [FAIL][41] ([i915#1542]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-hsw6/igt@perf@polling-parameterized.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-hsw1/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-snb:          [SKIP][43] ([fdo#109271]) -> [INCOMPLETE][44] ([i915#82])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-snb1/igt@i915_pm_rpm@modeset-lpsp.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-snb4/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [DMESG-FAIL][45] ([fdo#110321] / [i915#95]) -> [TIMEOUT][46] ([i915#1319])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1181]: https://gitlab.freedesktop.org/drm/intel/issues/1181
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8475 -> Patchwork_17649

  CI-20190529: 20190529
  CI_DRM_8475: fdb67b76a2d3b315585813539269dac22e2305f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17649: edfc62f71833c90cd42a5821a5c466e606b25a89 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17649/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
