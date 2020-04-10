Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 152701A426A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Apr 2020 08:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C17B6EC66;
	Fri, 10 Apr 2020 06:12:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B209D6EC64;
 Fri, 10 Apr 2020 06:12:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4199A0138;
 Fri, 10 Apr 2020 06:12:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 10 Apr 2020 06:12:38 -0000
Message-ID: <158649915864.10044.130652528471534162@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200409090953.8671-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200409090953.8671-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSEFY?=
 =?utf-8?q?_timer=3A_Describe_the_delayed=5Fwork_for_a_freed_timer_=28rev2?=
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

Series: HAX timer: Describe the delayed_work for a freed timer (rev2)
URL   : https://patchwork.freedesktop.org/series/75740/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8283_full -> Patchwork_17268_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17268_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17268_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17268_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-kbl:          [INCOMPLETE][1] ([i915#1423]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-kbl7/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-kbl7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-apl:          [INCOMPLETE][3] ([i915#1423]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-apl1/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-apl2/igt@i915_module_load@reload-with-fault-injection.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_wait@write-busy@all}:
    - shard-skl:          [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-skl10/igt@gem_wait@write-busy@all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-skl8/igt@gem_wait@write-busy@all.html

  
Known issues
------------

  Here are the changes found in Patchwork_17268_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-iclb5/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][11] -> [FAIL][12] ([i915#1066])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-snb:          [PASS][13] -> [SKIP][14] ([fdo#109271]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-snb2/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#34])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-skl3/igt@kms_hdr@bpc-switch.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#899])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-glk7/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - shard-iclb:         [INCOMPLETE][27] ([i915#1531] / [i915#1581]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-iclb8/igt@i915_selftest@live@requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-iclb7/igt@i915_selftest@live@requests.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-glk:          [FAIL][29] ([i915#52] / [i915#54]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][31] ([i915#123] / [i915#69]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][33] ([i915#1188]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][35] ([i915#69]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][41] ([i915#31]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-apl6/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-apl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][47] ([i915#468]) -> [FAIL][48] ([i915#454])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][49] ([i915#1515]) -> [WARN][50] ([i915#1515])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][51] ([fdo#109642] / [fdo#111068]) -> [FAIL][52] ([i915#608])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8283/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1581]: https://gitlab.freedesktop.org/drm/intel/issues/1581
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
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
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8283 -> Patchwork_17268

  CI-20190529: 20190529
  CI_DRM_8283: a6f4f55d343fea03e11e754b1094dda8cf2538ac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5585: 13c0be2fe8669fef08c0d1c44b147c43d1f53d2b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17268: 05d26e5da5b73691ad6f673c43511085ba18fbeb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17268/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
