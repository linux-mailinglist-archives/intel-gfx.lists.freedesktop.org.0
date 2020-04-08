Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 589161A1D18
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7016E9AD;
	Wed,  8 Apr 2020 08:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 688456E9AC;
 Wed,  8 Apr 2020 08:08:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 623CDA00CC;
 Wed,  8 Apr 2020 08:08:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Wed, 08 Apr 2020 08:08:33 -0000
Message-ID: <158633331339.19346.3371589216291264963@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407214350.217495-1-andi@etezian.org>
In-Reply-To: <20200407214350.217495-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_=28rev6?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev6)
URL   : https://patchwork.freedesktop.org/series/75333/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8269_full -> Patchwork_17242_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17242_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-iclb8/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_sseu@full-enable:
    - shard-apl:          [PASS][3] -> [SKIP][4] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl8/igt@i915_pm_sseu@full-enable.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-apl2/igt@i915_pm_sseu@full-enable.html
    - shard-kbl:          [PASS][5] -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl7/igt@i915_pm_sseu@full-enable.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-kbl7/igt@i915_pm_sseu@full-enable.html
    - shard-skl:          [PASS][7] -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl9/igt@i915_pm_sseu@full-enable.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-skl1/igt@i915_pm_sseu@full-enable.html
    - shard-glk:          [PASS][9] -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk8/igt@i915_pm_sseu@full-enable.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-glk9/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#1119])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-glk6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-skl1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#1188])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-tglb:         [PASS][21] -> [SKIP][22] ([i915#668]) +7 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-tglb1/igt@kms_psr@psr2_cursor_plane_onoff.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-tglb6/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
    - shard-snb:          [SKIP][27] ([fdo#109271]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-snb7/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-tglb:         [FAIL][31] ([i915#488]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-tglb1/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-tglb6/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][33] ([i915#79]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-glk6/igt@kms_flip@flip-vs-expired-vblank.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][35] ([i915#180] / [i915#95]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][39] ([i915#173]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb1/igt@kms_psr@no_drrs.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-skl:          [FAIL][43] ([i915#31]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl10/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-skl9/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][47] ([i915#69]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][49] ([i915#588]) -> [SKIP][50] ([i915#658])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8269/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8269 -> Patchwork_17242

  CI-20190529: 20190529
  CI_DRM_8269: 301d0427e2e3108839bf6c36f58dd0b2b5258c25 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5577: 7ee7e86fd79e4dbb6300ef4c23e50cb699216ae2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17242: 18e6d48db27860f49db12e7aa50aca6f0154c5de @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17242/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
