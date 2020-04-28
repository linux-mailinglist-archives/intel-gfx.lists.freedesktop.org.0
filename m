Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4501BB74C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 09:17:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4BB689F03;
	Tue, 28 Apr 2020 07:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A0D589F03;
 Tue, 28 Apr 2020 07:17:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 44AD1A47EB;
 Tue, 28 Apr 2020 07:17:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexei Podtelezhnikov" <apodtele@gmail.com>
Date: Tue, 28 Apr 2020 07:17:06 -0000
Message-ID: <158805822624.17773.16890923703326881090@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428034752.3975-1-apodtele@gmail.com>
In-Reply-To: <20200428034752.3975-1-apodtele@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_dubious_Valleyview_PCI_IDs?=
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

Series: drm/i915: Remove dubious Valleyview PCI IDs
URL   : https://patchwork.freedesktop.org/series/76578/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8377_full -> Patchwork_17488_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17488_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-kbl2/igt@i915_suspend@sysfs-reader.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-kbl1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#52] / [i915#54]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#1188])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-skl6/igt@kms_hdr@bpc-switch.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#69])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-iclb2/igt@kms_psr@psr2_basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-iclb6/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#31])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-apl7/igt@kms_setmode@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-apl3/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-kbl:          [DMESG-WARN][15] ([i915#180]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * {igt@kms_flip@flip-vs-expired-vblank@b-dp1}:
    - shard-kbl:          [FAIL][19] ([i915#79]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@b-dp1.html

  * {igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1}:
    - shard-skl:          [FAIL][21] ([i915#34]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][25] ([i915#123] / [i915#69]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-skl2/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][27] ([i915#1188]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][29] ([fdo#108145] / [i915#265]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][31] ([fdo#109642] / [fdo#111068]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * {igt@sysfs_heartbeat_interval@mixed@rcs0}:
    - shard-skl:          [FAIL][35] ([i915#1731]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-skl4/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-skl5/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][37] ([i915#454]) -> [SKIP][38] ([i915#468])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-snb:          [SKIP][39] ([fdo#109271]) -> [INCOMPLETE][40] ([i915#82])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-snb6/igt@i915_pm_rpm@system-suspend-modeset.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-snb2/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][41] ([fdo#109642] / [fdo#111068]) -> [FAIL][42] ([i915#608])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8377/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8377 -> Patchwork_17488

  CI-20190529: 20190529
  CI_DRM_8377: 1c73868f3851a83d78063da68c6e9b2c363b5f36 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5612: c8dc1fd926a550308b971ca7d83fe0a927a38152 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17488: 2efbc6a316e7d46d01c8885b29e30c5772aec7cb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17488/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
