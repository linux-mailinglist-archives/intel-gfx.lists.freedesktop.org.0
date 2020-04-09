Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 112FD1A34CC
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 15:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6B16E1F6;
	Thu,  9 Apr 2020 13:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 51C416E1D2;
 Thu,  9 Apr 2020 13:24:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C4B4A0091;
 Thu,  9 Apr 2020 13:24:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 09 Apr 2020 13:24:39 -0000
Message-ID: <158643867928.11549.455759539235775709@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200409003111.36589-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200409003111.36589-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/guc=3A_re-enable_ARAT_expi?=
 =?utf-8?q?red_interrupt_when_using_GuC?=
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

Series: series starting with [1/2] drm/i915/guc: re-enable ARAT expired interrupt when using GuC
URL   : https://patchwork.freedesktop.org/series/75715/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8281_full -> Patchwork_17261_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17261_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@sysfs_heartbeat_interval@mixed@bcs0}:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl4/igt@sysfs_heartbeat_interval@mixed@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-skl8/igt@sysfs_heartbeat_interval@mixed@bcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8281_full and Patchwork_17261_full:

### New IGT tests (2) ###

  * igt@gem_exec_store@cachelines:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_store@pages:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_17261_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-apl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#1318])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl9/igt@gem_exec_whisper@basic-queues-priority.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-skl8/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-glk4/igt@gen9_exec_parse@allowed-all.html
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#716])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-kbl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][11] -> [TIMEOUT][12] ([i915#1418])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#54] / [i915#95])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109349])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#34])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl3/igt@kms_flip@plain-flip-fb-recreate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-skl2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#49])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#1188])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145] / [i915#265]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-skl:          [FAIL][27] ([i915#1528]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-skl7/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][29] ([fdo#109276]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][31] ([i915#454]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl1/igt@i915_suspend@forcewake.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-apl7/igt@i915_suspend@forcewake.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][35] ([i915#1188]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl10/igt@kms_hdr@bpc-switch.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][43] ([i915#454]) -> [SKIP][44] ([i915#468]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-snb:          [SKIP][45] ([fdo#109271]) -> [INCOMPLETE][46] ([i915#82])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-snb4/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-snb5/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-apl:          [FAIL][47] ([fdo#108145] / [i915#265]) -> [FAIL][48] ([fdo#108145] / [i915#265] / [i915#95])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][49] ([fdo#109642] / [fdo#111068]) -> [FAIL][50] ([i915#608])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][51] ([i915#1423] / [i915#92]) -> ([FAIL][52], [FAIL][53]) ([i915#1423] / [i915#716] / [i915#92])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8281/shard-kbl2/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-kbl6/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/shard-kbl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1418]: https://gitlab.freedesktop.org/drm/intel/issues/1418
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8281 -> Patchwork_17261

  CI-20190529: 20190529
  CI_DRM_8281: 4d6c69198d6840226f92f2c4645e2c8260ca3e83 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5581: ab0620e555119ec55f12ba9ab9e6e9246d407648 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17261: 2b775979212a30032975bf16c18001c9b228626b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17261/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
