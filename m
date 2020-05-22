Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3321DE8F5
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 16:29:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5776E6E9F5;
	Fri, 22 May 2020 14:29:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B89A26E9F4;
 Fri, 22 May 2020 14:29:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B1511A363B;
 Fri, 22 May 2020 14:29:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 May 2020 14:29:38 -0000
Message-ID: <159015777870.3045.10897033489329897684@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521170255.27035-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200521170255.27035-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Stop_cross-poluting_PIN=5FGLOBAL_with_PIN=5FUSER_wi?=
 =?utf-8?q?th_no-ppgtt?=
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

Series: drm/i915/gt: Stop cross-poluting PIN_GLOBAL with PIN_USER with no-ppgtt
URL   : https://patchwork.freedesktop.org/series/77517/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8520_full -> Patchwork_17753_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17753_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17753_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17753_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-iclb:         NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-iclb2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_selftest@perf@request}:
    - shard-iclb:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-iclb5/igt@i915_selftest@perf@request.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-iclb2/igt@i915_selftest@perf@request.html

  
Known issues
------------

  Here are the changes found in Patchwork_17753_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-kbl7/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][6] -> [FAIL][7] ([i915#54])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#54])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
    - shard-apl:          [PASS][10] -> [FAIL][11] ([i915#54])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-apl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#72])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-glk6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - shard-snb:          [PASS][14] -> [INCOMPLETE][15] ([i915#82])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-snb5/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-snb1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#165] / [i915#93] / [i915#95])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#1188])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl3/igt@kms_hdr@bpc-switch.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180] / [i915#93] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([fdo#108145] / [i915#265])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#109441])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][28] -> [INCOMPLETE][29] ([i915#69])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-suspend:
    - shard-skl:          [INCOMPLETE][30] ([i915#69]) -> [PASS][31] +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl5/igt@gem_eio@in-flight-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-skl6/igt@gem_eio@in-flight-suspend.html

  * {igt@gem_exec_schedule@pi-userfault@bcs0}:
    - shard-glk:          [INCOMPLETE][32] ([i915#58] / [k.org#198133]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-glk5/igt@gem_exec_schedule@pi-userfault@bcs0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-glk2/igt@gem_exec_schedule@pi-userfault@bcs0.html

  * {igt@gem_exec_schedule@pi-userfault@rcs0}:
    - shard-glk:          [FAIL][34] ([i915#1772]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-glk5/igt@gem_exec_schedule@pi-userfault@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-glk2/igt@gem_exec_schedule@pi-userfault@rcs0.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [FAIL][36] ([i915#54]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][38] ([IGT#5]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][40] ([i915#180]) -> [PASS][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][42] ([fdo#109441]) -> [PASS][43] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][44] ([i915#180]) -> [PASS][45] +7 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][46] ([i915#1542]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-iclb6/igt@perf@blocking-parameterized.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-iclb2/igt@perf@blocking-parameterized.html

  * {igt@sysfs_heartbeat_interval@mixed@rcs0}:
    - shard-skl:          [FAIL][48] ([i915#1731]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-skl10/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-skl10/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][50] ([i915#468]) -> [FAIL][51] ([i915#454])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][52] ([i915#454]) -> [SKIP][53] ([i915#468])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][54] ([i915#1319]) -> [DMESG-FAIL][55] ([fdo#110321])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-apl7/igt@kms_content_protection@atomic-dpms.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-apl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-FAIL][56] ([i915#180] / [i915#95]) -> [FAIL][57] ([i915#1121] / [i915#93] / [i915#95])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][58] ([i915#608]) -> [SKIP][59] ([fdo#109642] / [fdo#111068])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8520/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/shard-iclb1/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1121]: https://gitlab.freedesktop.org/drm/intel/issues/1121
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#1772]: https://gitlab.freedesktop.org/drm/intel/issues/1772
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8520 -> Patchwork_17753

  CI-20190529: 20190529
  CI_DRM_8520: 1dd5736705657844b104b48d36677cd1096cdfc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5669: 918d56bd0181d516e41e3505134f7a81b8fef8fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17753: d248fc3b877b275b48e9060278ec5c2d2428fad2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17753/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
