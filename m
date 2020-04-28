Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEA51BC6F7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 19:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED61B6E88E;
	Tue, 28 Apr 2020 17:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDA086E867;
 Tue, 28 Apr 2020 17:44:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6EDCA47DB;
 Tue, 28 Apr 2020 17:44:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Apr 2020 17:44:56 -0000
Message-ID: <158809589691.17771.11880024640682483397@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428090255.10035-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200428090255.10035-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Avoid_dereferencing_a_dead_context?=
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

Series: drm/i915: Avoid dereferencing a dead context
URL   : https://patchwork.freedesktop.org/series/76584/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8382_full -> Patchwork_17491_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17491_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-kbl2/igt@i915_suspend@fence-restore-tiled2untiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-kbl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][5] -> [FAIL][6] ([i915#96])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#52] / [i915#54]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#52] / [i915#54])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-skl9/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-xtiled.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109441]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#31])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-glk8/igt@kms_setmode@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-glk1/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-skl:          [FAIL][15] ([i915#1528]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-skl2/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [FAIL][19] ([i915#54] / [i915#93] / [i915#95]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][21] ([IGT#5]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][23] ([i915#1188]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [INCOMPLETE][25] ([i915#69]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][27] ([fdo#108145] / [i915#265]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][29] ([fdo#109642] / [fdo#111068]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][31] ([fdo#109441]) -> [PASS][32] +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-iclb4/igt@kms_psr@psr2_no_drrs.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [INCOMPLETE][33] ([i915#198]) -> [FAIL][34] ([i915#454])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-skl3/igt@i915_pm_dc@dc6-dpms.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-skl2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-snb:          [INCOMPLETE][35] ([i915#82]) -> [SKIP][36] ([fdo#109271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-snb1/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-snb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][37] ([i915#1515]) -> [FAIL][38] ([i915#1515])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][39] ([fdo#109642] / [fdo#111068]) -> [FAIL][40] ([i915#608])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8382/shard-iclb4/igt@kms_psr2_su@page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8382 -> Patchwork_17491

  CI-20190529: 20190529
  CI_DRM_8382: 0613efb5f36366a2a1e7d66e893b7a817860e83b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17491: 214ef915d9c55d873578c57a390b851b560bc969 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17491/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
