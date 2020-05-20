Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF4B1DB4C4
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 15:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BB066E856;
	Wed, 20 May 2020 13:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7EA336E179;
 Wed, 20 May 2020 13:16:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76D20A008A;
 Wed, 20 May 2020 13:16:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Wed, 20 May 2020 13:16:51 -0000
Message-ID: <158998061145.30692.16043834745374082418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519221621.19931-1-sean@poorly.run>
In-Reply-To: <20200519221621.19931-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Add_additional_R0=27_wait?=
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

Series: drm/i915/hdcp: Add additional R0' wait
URL   : https://patchwork.freedesktop.org/series/77439/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8506_full -> Patchwork_17719_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17719_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17719_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17719_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-kbl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  
Known issues
------------

  Here are the changes found in Patchwork_17719_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl7/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-apl3/igt@gem_workarounds@suspend-resume-context.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#1188])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl9/igt@kms_hdr@bpc-switch.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][9] -> [INCOMPLETE][10] ([i915#155])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([fdo#108145] / [i915#265])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][13] -> [FAIL][14] ([i915#173])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-iclb4/igt@kms_psr@no_drrs.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#31])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl3/igt@kms_setmode@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-skl8/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][19] ([i915#54]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x21-offscreen.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-edp1}:
    - shard-skl:          [INCOMPLETE][21] ([i915#198]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend@a-dp1}:
    - shard-kbl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-snb:          [SKIP][25] ([fdo#109271]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-snb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [SKIP][27] ([fdo#109441]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-iclb1/igt@kms_psr@psr2_sprite_render.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-iclb2/igt@kms_psr@psr2_sprite_render.html

  * {igt@prime_vgem@sync@rcs0}:
    - shard-iclb:         [INCOMPLETE][29] ([i915#409]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-iclb8/igt@prime_vgem@sync@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-iclb4/igt@prime_vgem@sync@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][31] ([i915#454]) -> [SKIP][32] ([i915#468])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [DMESG-FAIL][33] ([i915#180] / [i915#95]) -> [FAIL][34] ([i915#1121] / [i915#93] / [i915#95])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8506/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1121]: https://gitlab.freedesktop.org/drm/intel/issues/1121
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8506 -> Patchwork_17719

  CI-20190529: 20190529
  CI_DRM_8506: d6a73e9084ff6adfabbad014bc294d254484f304 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5661: a772a7c7a761c6125bc0af5284ad603478107737 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17719: 3cae33a9b60fc776426fec12740eb692aa003dbe @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17719/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
