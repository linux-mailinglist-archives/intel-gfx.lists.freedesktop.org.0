Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8E61C27E6
	for <lists+intel-gfx@lfdr.de>; Sat,  2 May 2020 20:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D49B6E0AC;
	Sat,  2 May 2020 18:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A8B16E088;
 Sat,  2 May 2020 18:59:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2AF01A47EB;
 Sat,  2 May 2020 18:59:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 02 May 2020 18:59:54 -0000
Message-ID: <158844599414.5001.15384247697463681817@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200502150229.15103-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200502150229.15103-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Mark_concurrent_submissions_with_a_weak-dependency_=28?=
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

Series: drm/i915: Mark concurrent submissions with a weak-dependency (rev2)
URL   : https://patchwork.freedesktop.org/series/76860/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8410_full -> Patchwork_17550_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17550_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#78])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#1188])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane@plane-position-hole-pipe-b-planes:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#165])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-kbl6/igt@kms_plane@plane-position-hole-pipe-b-planes.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-kbl2/igt@kms_plane@plane-position-hole-pipe-b-planes.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#899])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-glk8/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#31])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-hsw2/igt@kms_setmode@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-hsw2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#69])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@bcs0}:
    - shard-kbl:          [DMESG-WARN][17] ([i915#180]) -> [PASS][18] +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [WARN][19] ([i915#1519]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-hsw1/igt@i915_pm_rc6_residency@rc6-idle.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][21] ([i915#72]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-glk9/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-glk7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][23] ([i915#57]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][25] ([i915#180]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-snb:          [SKIP][27] ([fdo#109271]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence:
    - shard-skl:          [FAIL][29] ([i915#53]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-skl5/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-skl7/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][31] ([fdo#108145] / [i915#265]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][33] ([fdo#109441]) -> [PASS][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][35] ([i915#454]) -> [SKIP][36] ([i915#468])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][37] ([i915#468]) -> [FAIL][38] ([i915#454])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-tglb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          [FAIL][39] ([fdo#108145] / [i915#265]) -> [FAIL][40] ([fdo#108145] / [i915#265] / [i915#95])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8410/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#57]: https://gitlab.freedesktop.org/drm/intel/issues/57
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8410 -> Patchwork_17550

  CI-20190529: 20190529
  CI_DRM_8410: 195fa140b9c39046f1e9a447265ee131ae733bde @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5626: f27fdfff026276ac75c69e487c929a843f66f6ca @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17550: 82467dd216b0c1fdfbcc85559319bc68dd82562b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17550/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
