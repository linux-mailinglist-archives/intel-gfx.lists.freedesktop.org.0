Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1911C0F50
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 10:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 541E76E4C9;
	Fri,  1 May 2020 08:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D77B6E4B0;
 Fri,  1 May 2020 08:18:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76D4EA00E6;
 Fri,  1 May 2020 08:18:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 01 May 2020 08:18:22 -0000
Message-ID: <158832110245.18947.8425526120088177236@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430232208.26052-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200430232208.26052-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Use_chained_reloc_batches?=
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

Series: drm/i915/gem: Use chained reloc batches
URL   : https://patchwork.freedesktop.org/series/76793/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8403_full -> Patchwork_17535_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17535_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17535_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17535_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-contexts:
    - shard-iclb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-iclb3/igt@gem_exec_whisper@basic-contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-iclb3/igt@gem_exec_whisper@basic-contexts.html
    - shard-tglb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-tglb1/igt@gem_exec_whisper@basic-contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-tglb3/igt@gem_exec_whisper@basic-contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_exec_reloc@basic-parallel}:
    - shard-kbl:          [PASS][5] -> [TIMEOUT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-kbl4/igt@gem_exec_reloc@basic-parallel.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-kbl1/igt@gem_exec_reloc@basic-parallel.html
    - shard-snb:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-snb1/igt@gem_exec_reloc@basic-parallel.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-snb4/igt@gem_exec_reloc@basic-parallel.html
    - shard-tglb:         [PASS][9] -> [TIMEOUT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-tglb8/igt@gem_exec_reloc@basic-parallel.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-tglb3/igt@gem_exec_reloc@basic-parallel.html
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-skl6/igt@gem_exec_reloc@basic-parallel.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-skl2/igt@gem_exec_reloc@basic-parallel.html
    - shard-apl:          [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-apl1/igt@gem_exec_reloc@basic-parallel.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-apl3/igt@gem_exec_reloc@basic-parallel.html
    - shard-iclb:         [PASS][15] -> [TIMEOUT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-iclb2/igt@gem_exec_reloc@basic-parallel.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-iclb3/igt@gem_exec_reloc@basic-parallel.html
    - shard-glk:          [PASS][17] -> [TIMEOUT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-glk2/igt@gem_exec_reloc@basic-parallel.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-glk8/igt@gem_exec_reloc@basic-parallel.html

  
Known issues
------------

  Here are the changes found in Patchwork_17535_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-kbl2/igt@gem_eio@in-flight-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#1479])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-glk9/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1436] / [i915#716])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-kbl7/igt@gen9_exec_parse@allowed-all.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#716])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-skl3/igt@gen9_exec_parse@allowed-single.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-snb:          [PASS][27] -> [DMESG-WARN][28] ([i915#128])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-snb1/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-snb4/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145] / [i915#265])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-iclb7/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][33] ([i915#72]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-glk5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-glk4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-hsw:          [FAIL][35] ([IGT#5]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-hsw1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-hsw1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-glk:          [FAIL][37] ([i915#52] / [i915#54]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][39] ([i915#1188]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-skl5/igt@kms_hdr@bpc-switch.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-skl7/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][43] ([fdo#108145] / [i915#265]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][45] ([i915#899]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-glk5/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][47] ([fdo#109441]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][51] ([i915#468]) -> [FAIL][52] ([i915#454]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-tglb5/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-FAIL][53] ([i915#180] / [i915#95]) -> [FAIL][54] ([i915#93] / [i915#95])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          [FAIL][55] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][56] ([fdo#108145] / [i915#265]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][57] ([fdo#109642] / [fdo#111068]) -> [FAIL][58] ([i915#608])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8403/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1479]: https://gitlab.freedesktop.org/drm/intel/issues/1479
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8403 -> Patchwork_17535

  CI-20190529: 20190529
  CI_DRM_8403: 09978e99929f6e5acfe1e959f6499a134f210887 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5619: 94de923ca8d4cc8f532b8062d87aaad9da6ef956 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17535: dffa147cbfe145d395dbf3b6f61578ab9e7052c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17535/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
