Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FC41D2405
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 02:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9FC16E293;
	Thu, 14 May 2020 00:43:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CCC7A6E293;
 Thu, 14 May 2020 00:43:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD7BDA00CC;
 Thu, 14 May 2020 00:43:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <natechancellor@gmail.com>
Date: Thu, 14 May 2020 00:43:38 -0000
Message-ID: <158941701874.2827.266483293684524423@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200513182340.3968668-1-natechancellor@gmail.com>
In-Reply-To: <20200513182340.3968668-1-natechancellor@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_duplicate_inline_specifier_on_write=5Fpte?=
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

Series: drm/i915: Remove duplicate inline specifier on write_pte
URL   : https://patchwork.freedesktop.org/series/77240/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8475_full -> Patchwork_17652_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17652_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#1436] / [i915#716])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl8/igt@gen9_exec_parse@allowed-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#454])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1795] / [i915#1874])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl8/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-skl2/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([IGT#5])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#1181])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-apl8/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109349])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-iclb5/igt@kms_psr@psr2_sprite_render.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-random:
    - shard-skl:          [FAIL][15] ([i915#54]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
    - shard-snb:          [SKIP][19] ([fdo#109271]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-snb2/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-snb6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-tglb:         [DMESG-WARN][21] ([i915#128]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-tglb2/igt@kms_cursor_legacy@pipe-d-torture-move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-tglb2/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][23] ([i915#79]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][27] ([i915#1188]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][31] ([i915#173]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb1/igt@kms_psr@no_drrs.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-iclb4/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-iclb3/igt@kms_psr@psr2_primary_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][35] ([i915#31]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-kbl6/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-kbl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][37] ([i915#69]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [TIMEOUT][39] ([i915#1319]) -> [DMESG-FAIL][40] ([fdo#110321])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl8/igt@kms_content_protection@atomic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [DMESG-FAIL][41] ([fdo#110321] / [i915#95]) -> [TIMEOUT][42] ([i915#1319])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl8/igt@kms_content_protection@atomic-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - shard-apl:          [FAIL][43] ([fdo#110321]) -> [TIMEOUT][44] ([i915#1319])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8475/shard-apl4/igt@kms_content_protection@srm.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/shard-apl3/igt@kms_content_protection@srm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [i915#1181]: https://gitlab.freedesktop.org/drm/intel/issues/1181
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1795]: https://gitlab.freedesktop.org/drm/intel/issues/1795
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8475 -> Patchwork_17652

  CI-20190529: 20190529
  CI_DRM_8475: fdb67b76a2d3b315585813539269dac22e2305f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17652: 57549b07e20b914ff7bd611afdcc0ca2b534c456 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17652/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
