Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6A01A1638
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 21:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA0A6E8F6;
	Tue,  7 Apr 2020 19:51:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 93D086E8F6;
 Tue,  7 Apr 2020 19:51:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8CB98A47E2;
 Tue,  7 Apr 2020 19:51:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 07 Apr 2020 19:51:39 -0000
Message-ID: <158628909954.26326.8904863577719163970@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200407103222.15629-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQ29u?=
 =?utf-8?q?sider_DBuf_bandwidth_when_calculating_CDCLK_=28rev8=29?=
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

Series: Consider DBuf bandwidth when calculating CDCLK (rev8)
URL   : https://patchwork.freedesktop.org/series/74739/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8264_full -> Patchwork_17235_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17235_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17235_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17235_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-tglb5/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-tglb6/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_schedule@wide@vecs0}:
    - shard-glk:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-glk6/igt@gem_exec_schedule@wide@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-glk4/igt@gem_exec_schedule@wide@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17235_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#69]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl4/igt@gem_eio@in-flight-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-skl6/igt@gem_eio@in-flight-suspend.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#1531])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-tglb1/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-tglb3/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#54] / [i915#95])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#54] / [i915#93] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#52] / [i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-glk6/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180] / [i915#95])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         [PASS][19] -> [SKIP][20] ([i915#668]) +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#198])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl2/igt@kms_psr@suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-skl1/igt@kms_psr@suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [FAIL][31] ([i915#1277]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-tglb6/igt@gem_exec_balancer@hang.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-tglb2/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][33] ([fdo#109276]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - shard-skl:          [FAIL][35] ([i915#138]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl5/igt@i915_pm_rpm@basic-pci-d3-state.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-skl5/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@blt:
    - shard-snb:          [DMESG-FAIL][37] ([i915#1409]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb4/igt@i915_selftest@live@blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-snb6/igt@i915_selftest@live@blt.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [INCOMPLETE][39] ([i915#69]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-skl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-skl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-glk:          [FAIL][43] ([i915#34]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [FAIL][45] ([i915#79]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl4/igt@kms_flip@flip-vs-expired-vblank.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-apl4/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-snb:          [DMESG-WARN][49] ([i915#42]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-snb6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-snb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-kbl:          [DMESG-WARN][51] ([i915#165] / [i915#78]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-none.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-kbl3/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][53] ([fdo#109441]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][55] ([i915#31]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl7/igt@kms_setmode@basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-apl8/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [FAIL][58] ([fdo#108145] / [i915#265] / [i915#95])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8264/shard-apl3/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#138]: https://gitlab.freedesktop.org/drm/intel/issues/138
  [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8264 -> Patchwork_17235

  CI-20190529: 20190529
  CI_DRM_8264: e0104585f880a64d4a9b40803cf4fb51ab499f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5573: 9c582425d6b4fc1de9fc2ffc8015cc6f0a0d3e98 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17235: 20fd5967e21bef1bd29fd91bd13a058a31876063 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17235/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
