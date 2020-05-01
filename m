Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C47631C2017
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 23:54:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 514416ED5C;
	Fri,  1 May 2020 21:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 326DB6ECE7;
 Fri,  1 May 2020 21:54:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 29F03A47E8;
 Fri,  1 May 2020 21:54:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 01 May 2020 21:54:03 -0000
Message-ID: <158837004314.18944.3100900055569554039@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501192945.22215-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200501192945.22215-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gem=3A_Use_chained_re?=
 =?utf-8?q?loc_batches?=
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

Series: series starting with [CI,1/3] drm/i915/gem: Use chained reloc batches
URL   : https://patchwork.freedesktop.org/series/76837/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8407_full -> Patchwork_17546_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17546_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17546_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17546_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_vblank@pipe-d-wait-forked-busy:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-tglb7/igt@kms_vblank@pipe-d-wait-forked-busy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-tglb7/igt@kms_vblank@pipe-d-wait-forked-busy.html

  
Known issues
------------

  Here are the changes found in Patchwork_17546_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@processes:
    - shard-tglb:         [PASS][3] -> [FAIL][4] ([i915#1528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-tglb7/igt@gem_ctx_persistence@processes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-tglb6/igt@gem_ctx_persistence@processes.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-kbl3/igt@gem_eio@in-flight-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-kbl4/igt@gem_eio@in-flight-suspend.html

  * igt@i915_pm_rps@reset:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#39])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-skl1/igt@i915_pm_rps@reset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-skl9/igt@i915_pm_rps@reset.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109441]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  
#### Possible fixes ####

  * {igt@gem_exec_reloc@basic-many-active@rcs0}:
    - shard-apl:          [FAIL][15] -> [PASS][16] +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-apl4/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-tglb:         [FAIL][17] -> [PASS][18] +9 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-tglb3/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-tglb2/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-glk:          [FAIL][19] -> [PASS][20] +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-hsw:          [INCOMPLETE][21] ([i915#61]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-hsw6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * {igt@gem_exec_reloc@basic-many-active@vcs0}:
    - shard-kbl:          [FAIL][23] -> [PASS][24] +9 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-kbl1/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-kbl3/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * {igt@gem_exec_reloc@basic-spin@vcs0}:
    - shard-snb:          [FAIL][25] ([i915#757]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-snb6/igt@gem_exec_reloc@basic-spin@vcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-snb5/igt@gem_exec_reloc@basic-spin@vcs0.html

  * {igt@gem_exec_reloc@basic-wide-active@bcs0}:
    - shard-skl:          [FAIL][27] -> [PASS][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-skl1/igt@gem_exec_reloc@basic-wide-active@bcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-skl9/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * {igt@gem_exec_reloc@basic-wide-active@rcs0}:
    - shard-snb:          [INCOMPLETE][29] ([i915#82]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-snb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
    - shard-iclb:         [FAIL][31] -> [PASS][32] +7 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-iclb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-iclb7/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][33] ([i915#716]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-apl6/igt@gen9_exec_parse@allowed-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [INCOMPLETE][35] ([i915#300]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-snb:          [DMESG-WARN][37] ([i915#128]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-snb6/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-snb2/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * {igt@kms_flip@flip-vs-suspend@a-edp1}:
    - shard-skl:          [INCOMPLETE][39] ([i915#198]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-skl9/igt@kms_flip@flip-vs-suspend@a-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-skl8/igt@kms_flip@flip-vs-suspend@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-snb:          [SKIP][41] ([fdo#109271]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][45] ([fdo#108145] / [i915#265]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][47] ([fdo#109441]) -> [PASS][48] +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][49] ([i915#31]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-kbl2/igt@kms_setmode@basic.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-hsw:          [FAIL][53] ([i915#1542]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-hsw1/igt@perf@blocking-parameterized.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-hsw4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [INCOMPLETE][56] ([i915#198])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][57] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][58] ([fdo#108145] / [i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][59] ([fdo#108145] / [i915#265]) -> [FAIL][60] ([fdo#108145] / [i915#265] / [i915#95])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8407/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#757]: https://gitlab.freedesktop.org/drm/intel/issues/757
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8407 -> Patchwork_17546

  CI-20190529: 20190529
  CI_DRM_8407: ecb91f743598d9d646fa046c7341058e48494e7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5626: f27fdfff026276ac75c69e487c929a843f66f6ca @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17546: 7390196f81a6e57e51f05cf9cf673ef407de63ac @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17546/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
