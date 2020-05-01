Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBCA1C1D68
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 20:52:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62EE6ED3F;
	Fri,  1 May 2020 18:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1664B6ED38;
 Fri,  1 May 2020 18:51:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0FF17A47EB;
 Fri,  1 May 2020 18:51:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 01 May 2020 18:51:58 -0000
Message-ID: <158835911803.18945.10666050343127287593@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200501142322.17048-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200501142322.17048-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
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
URL   : https://patchwork.freedesktop.org/series/76821/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8406_full -> Patchwork_17542_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17542_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-parallel}:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-kbl4/igt@gem_exec_reloc@basic-parallel.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-kbl3/igt@gem_exec_reloc@basic-parallel.html
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-skl5/igt@gem_exec_reloc@basic-parallel.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-skl8/igt@gem_exec_reloc@basic-parallel.html

  
Known issues
------------

  Here are the changes found in Patchwork_17542_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#165])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-kbl2/igt@gem_fenced_exec_thrash@too-many-fences.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-kbl2/igt@gem_fenced_exec_thrash@too-many-fences.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1188])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109441]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-iclb4/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#31])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-kbl1/igt@kms_setmode@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-kbl6/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_blits@basic:
    - shard-apl:          [DMESG-WARN][13] ([i915#836]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-apl2/igt@gem_blits@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-apl8/igt@gem_blits@basic.html

  * {igt@gem_exec_reloc@basic-many-active@rcs0}:
    - shard-apl:          [FAIL][15] -> [PASS][16] +4 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-apl7/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-tglb:         [FAIL][17] -> [PASS][18] +9 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-tglb3/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-tglb7/igt@gem_exec_reloc@basic-many-active@rcs0.html
    - shard-glk:          [FAIL][19] -> [PASS][20] +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-glk1/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * {igt@gem_exec_reloc@basic-many-active@vcs0}:
    - shard-kbl:          [FAIL][21] -> [PASS][22] +9 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-kbl2/igt@gem_exec_reloc@basic-many-active@vcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-kbl7/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * {igt@gem_exec_reloc@basic-spin@vcs0}:
    - shard-snb:          [FAIL][23] ([i915#757]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-snb1/igt@gem_exec_reloc@basic-spin@vcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-snb2/igt@gem_exec_reloc@basic-spin@vcs0.html

  * {igt@gem_exec_reloc@basic-wide-active@bcs0}:
    - shard-skl:          [FAIL][25] -> [PASS][26] +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-skl6/igt@gem_exec_reloc@basic-wide-active@bcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-skl10/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * {igt@gem_exec_reloc@basic-wide-active@rcs0}:
    - shard-snb:          [INCOMPLETE][27] ([i915#82]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html
    - shard-iclb:         [FAIL][29] -> [PASS][30] +7 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-iclb2/igt@gem_exec_reloc@basic-wide-active@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-iclb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][31] ([i915#716]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-apl8/igt@gen9_exec_parse@allowed-all.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-apl3/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          [FAIL][35] ([i915#49]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence:
    - shard-skl:          [FAIL][37] ([i915#53]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-skl5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][41] ([fdo#108145] / [i915#265]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][43] ([fdo#109441]) -> [PASS][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Warnings ####

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][45] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][46] ([fdo#108145] / [i915#265])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8406/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#757]: https://gitlab.freedesktop.org/drm/intel/issues/757
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8406 -> Patchwork_17542

  CI-20190529: 20190529
  CI_DRM_8406: 591ff846d6332ae3d11fa34f14107ce23da02790 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5626: f27fdfff026276ac75c69e487c929a843f66f6ca @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17542: aca39b6c9b2e3860e03574bee1a412ee833b49ff @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17542/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
