Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 879AB1D8B97
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 01:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55CF289BF1;
	Mon, 18 May 2020 23:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD7B789BBE;
 Mon, 18 May 2020 23:23:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A50EBA3C0D;
 Mon, 18 May 2020 23:23:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aishwarya Ramakrishnan" <aishwaryarj100@gmail.com>
Date: Mon, 18 May 2020 23:23:03 -0000
Message-ID: <158984418364.31685.18095380907345413982@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518150336.15265-1-aishwaryarj100@gmail.com>
In-Reply-To: <20200518150336.15265-1-aishwaryarj100@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_Use_ARRAY=5FSIZE_for_vgpu=5Ftypes?=
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

Series: drm/i915/gvt: Use ARRAY_SIZE for vgpu_types
URL   : https://patchwork.freedesktop.org/series/77369/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8498_full -> Patchwork_17699_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17699_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][3] -> [FAIL][4] ([IGT#5])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#177] / [i915#52] / [i915#54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#69])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl8/igt@kms_fbcon_fbt@psr-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip_tiling@flip-changes-tiling:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl8/igt@kms_flip_tiling@flip-changes-tiling.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-apl6/igt@kms_flip_tiling@flip-changes-tiling.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-iclb7/igt@kms_psr@psr2_sprite_render.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1542])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl5/igt@perf@blocking.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-skl4/igt@perf@blocking.html

  
#### Possible fixes ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][21] ([i915#1436] / [i915#716]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl1/igt@gen9_exec_parse@allowed-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][23] ([i915#1795] / [i915#1874]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl2/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-skl7/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26] +4 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1}:
    - shard-glk:          [FAIL][27] ([i915#79]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][29] ([i915#79]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][33] ([i915#173]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb1/igt@kms_psr@no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-iclb5/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][35] ([fdo#109441]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-iclb8/igt@kms_psr@psr2_sprite_blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][37] ([i915#31]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-skl10/igt@kms_setmode@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-skl2/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][39] ([i915#31]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl7/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-kbl1/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-tglb:         [FAIL][41] ([i915#1542]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-tglb1/igt@perf@polling-parameterized.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-tglb5/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][43] ([i915#468]) -> [FAIL][44] ([i915#454])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [DMESG-FAIL][45] ([fdo#110321]) -> [TIMEOUT][46] ([i915#1319])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl7/igt@kms_content_protection@atomic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          [FAIL][47] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][48] ([i915#1319])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-apl6/igt@kms_content_protection@legacy.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-kbl:          [FAIL][49] ([fdo#110321]) -> [TIMEOUT][50] ([i915#1319])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/shard-kbl3/igt@kms_content_protection@lic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/shard-kbl4/igt@kms_content_protection@lic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#1795]: https://gitlab.freedesktop.org/drm/intel/issues/1795
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1874]: https://gitlab.freedesktop.org/drm/intel/issues/1874
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
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

  * Linux: CI_DRM_8498 -> Patchwork_17699

  CI-20190529: 20190529
  CI_DRM_8498: 1493c649ae92207a758afa50a639275bd6c80e2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5659: 66ab5e42811fee3dea8c21ab29e70e323a0650de @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17699: ccbbd4f3aab67ca12a16da43196fa26d1633bf87 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17699/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
