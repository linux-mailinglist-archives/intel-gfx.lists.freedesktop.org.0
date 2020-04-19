Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCB11AFE5F
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 23:18:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F7E6E0D6;
	Sun, 19 Apr 2020 21:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 97F476E0C4;
 Sun, 19 Apr 2020 21:18:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 914FDA011A;
 Sun, 19 Apr 2020 21:18:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 19 Apr 2020 21:18:07 -0000
Message-ID: <158733108756.15016.2079918496209799165@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417201912.5015-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200417201912.5015-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Poison_residual_state_=5BHWSP=5D_across_resume=2E_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/gt: Poison residual state [HWSP] across resume. (rev2)
URL   : https://patchwork.freedesktop.org/series/76100/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8322_full -> Patchwork_17360_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17360_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17360_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17360_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl8/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-skl1/igt@i915_module_load@reload-with-fault-injection.html
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl2/igt@i915_module_load@reload-with-fault-injection.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-kbl2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-tglb8/igt@i915_module_load@reload-with-fault-injection.html
    - shard-apl:          [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl2/igt@i915_module_load@reload-with-fault-injection.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-apl4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-iclb:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb3/igt@i915_module_load@reload-with-fault-injection.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-iclb5/igt@i915_module_load@reload-with-fault-injection.html

  
Known issues
------------

  Here are the changes found in Patchwork_17360_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][11] -> [FAIL][12] ([i915#1528])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl3/igt@gem_ctx_persistence@processes.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-apl8/igt@gem_ctx_persistence@processes.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl1/igt@gem_workarounds@suspend-resume-fd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-skl8/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][15] -> [INCOMPLETE][16] ([i915#58] / [k.org#198133])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][17] -> [FAIL][18] ([i915#1066])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-random:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#54] / [i915#93] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109349])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-iclb3/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_mmap_write_crc@main:
    - shard-kbl:          [PASS][25] -> [FAIL][26] ([i915#93] / [i915#95])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl4/igt@kms_mmap_write_crc@main.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-kbl7/igt@kms_mmap_write_crc@main.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-iclb6/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl7/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-skl6/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][35] -> [FAIL][36] ([i915#31])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl6/igt@kms_setmode@basic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-kbl4/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][37] ([fdo#109276]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb6/igt@gem_exec_params@invalid-bsd-ring.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-iclb1/igt@gem_exec_params@invalid-bsd-ring.html

  * {igt@kms_flip@flip-vs-expired-vblank@c-edp1}:
    - shard-skl:          [FAIL][39] ([i915#79]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * {igt@kms_flip@plain-flip-ts-check@c-edp1}:
    - shard-skl:          [FAIL][43] ([i915#34]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-skl4/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][47] ([fdo#108145] / [i915#265]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][49] ([fdo#109642] / [fdo#111068]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][51] ([fdo#109441]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * {igt@perf@polling-parameterized}:
    - shard-tglb:         [FAIL][53] ([i915#1542]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-tglb6/igt@perf@polling-parameterized.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-tglb1/igt@perf@polling-parameterized.html

  * {igt@perf@polling-small-buf}:
    - shard-iclb:         [FAIL][55] -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-iclb3/igt@perf@polling-small-buf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-iclb7/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          [FAIL][57] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][58] ([fdo#108145] / [i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][59] -> [FAIL][60] ([i915#1423] / [i915#92])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-kbl2/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-kbl2/igt@runner@aborted.html
    - shard-glk:          [FAIL][61] ([k.org#202321]) -> ([FAIL][62], [FAIL][63]) ([i915#1423] / [k.org#202321])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-glk8/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-glk7/igt@runner@aborted.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-glk4/igt@runner@aborted.html
    - shard-tglb:         [FAIL][64] ([i915#1602]) -> [FAIL][65] ([i915#1390])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8322/shard-tglb7/igt@runner@aborted.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/shard-tglb8/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1390]: https://gitlab.freedesktop.org/drm/intel/issues/1390
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8322 -> Patchwork_17360

  CI-20190529: 20190529
  CI_DRM_8322: fd447e6b1ee13e6a9731bddc7694552640e8a01e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5599: cdb07101dda33e2fcb0f4c2aa199c47159d88f35 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17360: 2580009039243acff75a1b6d89c230f10fbd53f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17360/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
