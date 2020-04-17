Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B201AD4F0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 05:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8098E6E215;
	Fri, 17 Apr 2020 03:47:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCF5E6E02A;
 Fri, 17 Apr 2020 03:47:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B535FA47E0;
 Fri, 17 Apr 2020 03:47:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 17 Apr 2020 03:47:00 -0000
Message-ID: <158709522071.10466.518670590788552363@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200416071804.30187-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200416071804.30187-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Move_the_batch_buffer_pool_from_the_engine_to_the_g?=
 =?utf-8?q?t_=28rev2=29?=
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

Series: drm/i915/gt: Move the batch buffer pool from the engine to the gt (rev2)
URL   : https://patchwork.freedesktop.org/series/75979/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8307_full -> Patchwork_17322_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17322_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_schedule@pi-shared-iova@bcs0}:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-skl2/igt@gem_exec_schedule@pi-shared-iova@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-skl5/igt@gem_exec_schedule@pi-shared-iova@bcs0.html

  * {igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2}:
    - shard-glk:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  
Known issues
------------

  Here are the changes found in Patchwork_17322_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109349])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-iclb4/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#31])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-skl8/igt@kms_setmode@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-skl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][19] ([i915#454]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_color@pipe-a-degamma:
    - shard-skl:          [FAIL][21] ([fdo#108145] / [i915#71]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-skl8/igt@kms_color@pipe-a-degamma.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-skl9/igt@kms_color@pipe-a-degamma.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [FAIL][23] ([i915#1149]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-tglb5/igt@kms_color@pipe-a-gamma.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-tglb8/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-apl:          [FAIL][25] ([i915#54] / [i915#95]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [FAIL][29] ([i915#52] / [i915#54]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [FAIL][31] ([i915#64]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-tglb2/igt@kms_fbcon_fbt@fbc-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-tglb6/igt@kms_fbcon_fbt@fbc-suspend.html

  * {igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1}:
    - shard-apl:          [INCOMPLETE][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-apl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-apl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][35] ([i915#180]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][39] ([i915#1542]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-iclb7/igt@perf@blocking-parameterized.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-iclb2/igt@perf@blocking-parameterized.html

  * {igt@sysfs_heartbeat_interval@mixed@vcs0}:
    - shard-skl:          [INCOMPLETE][41] ([i915#198]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-skl10/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][43] ([i915#468]) -> [FAIL][44] ([i915#454])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [INCOMPLETE][45] ([i915#82]) -> [SKIP][46] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-snb4/igt@i915_pm_rpm@gem-idle.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-snb1/igt@i915_pm_rpm@gem-idle.html

  * igt@i915_selftest@live@gt_pm:
    - shard-tglb:         [INCOMPLETE][47] ([i915#1725]) -> [DMESG-FAIL][48] ([i915#1725])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-tglb6/igt@i915_selftest@live@gt_pm.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-tglb1/igt@i915_selftest@live@gt_pm.html

  * igt@runner@aborted:
    - shard-tglb:         ([FAIL][49], [FAIL][50]) ([i915#1233] / [i915#1602] / [i915#529]) -> [FAIL][51] ([i915#1602])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-tglb6/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8307/shard-tglb1/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/shard-tglb1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1725]: https://gitlab.freedesktop.org/drm/intel/issues/1725
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#64]: https://gitlab.freedesktop.org/drm/intel/issues/64
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8307 -> Patchwork_17322

  CI-20190529: 20190529
  CI_DRM_8307: 547ca85e9cbca6fcfcadc6bf5e0e7b9a34a089d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5591: f57b7fdbe8d04ce3edf0433a03c7d9d5c3d96680 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17322: d3fac4ed494116df8257a4b57d612cc0926d0467 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17322/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
