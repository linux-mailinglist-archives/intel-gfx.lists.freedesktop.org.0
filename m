Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 862AD1BCEEB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 23:39:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40456E9D6;
	Tue, 28 Apr 2020 21:39:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 847C46E9DB;
 Tue, 28 Apr 2020 21:39:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E769A47E8;
 Tue, 28 Apr 2020 21:39:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?TWljaGHFgiBPcnplxYI=?= <michalorzel.eng@gmail.com>
Date: Tue, 28 Apr 2020 21:39:17 -0000
Message-ID: <158810995751.17774.12326525378412491174@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1588093804-30446-1-git-send-email-michalorzel.eng@gmail.com>
In-Reply-To: <1588093804-30446-1-git-send-email-michalorzel.eng@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Replace_drm=5Fmodeset=5Flock/unlock=5Fall_with_DRM=5FMODESE?=
 =?utf-8?b?VF9MT0NLX0FMTF8qIGhlbHBlcnMgKHJldjIp?=
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

Series: drm: Replace drm_modeset_lock/unlock_all with DRM_MODESET_LOCK_ALL_* helpers (rev2)
URL   : https://patchwork.freedesktop.org/series/76671/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8384_full -> Patchwork_17496_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17496_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rps@waitboost:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#39])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-apl4/igt@i915_pm_rps@waitboost.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-apl7/igt@i915_pm_rps@waitboost.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#69])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-skl4/igt@i915_suspend@sysfs-reader.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-skl5/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#54] / [i915#93] / [i915#95])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_legacy@pipe-b-torture-bo:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#128])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-kbl6/igt@kms_cursor_legacy@pipe-b-torture-bo.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-kbl2/igt@kms_cursor_legacy@pipe-b-torture-bo.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109349])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([fdo#108145] / [i915#265])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-iclb5/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#43])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-glk4/igt@kms_vblank@pipe-c-accuracy-idle.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-glk2/igt@kms_vblank@pipe-c-accuracy-idle.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-tglb:         [FAIL][23] ([i915#1528]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][25] ([fdo#109276]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-iclb7/igt@gem_exec_params@invalid-bsd-ring.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][27] ([i915#180]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][31] ([fdo#108145] / [i915#265]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][33] ([i915#899]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][35] ([fdo#109642] / [fdo#111068]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][39] ([i915#31]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-apl2/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-apl3/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][41] ([i915#1542]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-iclb3/igt@perf@blocking-parameterized.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-iclb6/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][43] ([i915#1319]) -> [FAIL][44] ([fdo#110321] / [fdo#110336]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-apl2/igt@kms_content_protection@atomic-dpms.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-apl7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][45] ([fdo#109642] / [fdo#111068]) -> [FAIL][46] ([i915#608])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/shard-iclb5/igt@kms_psr2_su@page_flip.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
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
  * Linux: CI_DRM_8384 -> Patchwork_17496

  CI-20190529: 20190529
  CI_DRM_8384: 513c18c3d94d97a584c40998d2666f5e1390ac66 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17496: a9abedc6ec4fba47e6d5cf17c849e32901bedb63 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
