Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB20C1AF676
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 05:41:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5296A6E440;
	Sun, 19 Apr 2020 03:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E14E6E43F;
 Sun, 19 Apr 2020 03:41:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35246A47EA;
 Sun, 19 Apr 2020 03:41:16 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 19 Apr 2020 03:41:16 -0000
Message-ID: <158726767618.15016.11452696971996178077@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417115939.32677-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200417115939.32677-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Expose_an_option_to_flush_the_tasklets_via_debugfs_=28?=
 =?utf-8?q?rev2=29?=
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

Series: drm/i915: Expose an option to flush the tasklets via debugfs (rev2)
URL   : https://patchwork.freedesktop.org/series/76090/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8318_full -> Patchwork_17346_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17346_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-skl:          [PASS][1] -> [FAIL][2] ([i915#1528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-skl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#716])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#54] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#54] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#52] / [i915#54])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#1188])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_mmap_write_crc@main:
    - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#93] / [i915#95])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-kbl7/igt@kms_mmap_write_crc@main.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-kbl4/igt@kms_mmap_write_crc@main.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145] / [i915#265]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#899])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#31])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl7/igt@kms_setmode@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-apl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [FAIL][29] ([i915#1066]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-snb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [INCOMPLETE][31] ([i915#1531] / [i915#1658]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-tglb1/igt@i915_selftest@live@requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-tglb7/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-apl:          [FAIL][33] ([i915#54] / [i915#95]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * {igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1}:
    - shard-skl:          [FAIL][35] ([i915#34]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][37] ([i915#1188]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][41] ([fdo#109441]) -> [PASS][42] +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][43] ([i915#31]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-kbl3/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +6 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@sysfs_timeslice_duration@timeout@vecs0}:
    - shard-iclb:         [FAIL][47] -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-iclb8/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-iclb3/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Warnings ####

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [SKIP][49] ([fdo#109271]) -> [INCOMPLETE][50] ([i915#82])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-snb6/igt@i915_pm_rpm@gem-idle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-snb5/igt@i915_pm_rpm@gem-idle.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          [FAIL][51] ([fdo#108145] / [i915#265]) -> [FAIL][52] ([fdo#108145] / [i915#265] / [i915#95])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8318/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8318 -> Patchwork_17346

  CI-20190529: 20190529
  CI_DRM_8318: 9bca43263f42b286d5b761437854909817c6ff3b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17346: 58becf08bc510a6687fd5a68d6ec72556beff0ce @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17346/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
