Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D971DC698
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 07:27:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 422996E105;
	Thu, 21 May 2020 05:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0ABD26E105;
 Thu, 21 May 2020 05:27:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 043A9A0138;
 Thu, 21 May 2020 05:27:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Thu, 21 May 2020 05:27:41 -0000
Message-ID: <159003886199.4443.12044048365378175254@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519221621.19931-1-sean@poorly.run>
In-Reply-To: <20200519221621.19931-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Add_additional_R0=27_wait_=28rev2=29?=
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

Series: drm/i915/hdcp: Add additional R0' wait (rev2)
URL   : https://patchwork.freedesktop.org/series/77439/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8511_full -> Patchwork_17731_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17731_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-0-int-2drect (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][1] +7 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/pig-icl-1065g7/spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-0-int-2drect.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8511_full and Patchwork_17731_full:

### New Piglit tests (8) ###

  * spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-0-int-2drect:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-0-int-2drect-const:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-1-int-2drect:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-1-int-2drect-const:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-2-int-2drect:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-2-int-2drect-const:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-3-int-2drect:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  * spec@arb_gpu_shader5@texturegatheroffset@fs-rgba-3-int-2drect-const:
    - Statuses : 1 incomplete(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_17731_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][2] -> [DMESG-WARN][3] ([i915#180])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-kbl2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][4] -> [INCOMPLETE][5] ([i915#155])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#300])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
    - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#49]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][12] -> [FAIL][13] ([fdo#108145] / [i915#265]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109441]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-iclb5/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#31])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl1/igt@kms_setmode@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-kbl6/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-hostile@rcs0:
    - shard-iclb:         [FAIL][18] ([i915#1622]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb3/igt@gem_ctx_persistence@engines-hostile@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-iclb8/igt@gem_ctx_persistence@engines-hostile@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-skl:          [FAIL][20] ([i915#1528]) -> [PASS][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl3/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-skl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * {igt@gem_exec_schedule@pi-distinct-iova@bcs0}:
    - shard-glk:          [FAIL][22] ([i915#859]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-glk6/igt@gem_exec_schedule@pi-distinct-iova@bcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-glk5/igt@gem_exec_schedule@pi-distinct-iova@bcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [DMESG-WARN][24] ([i915#1436] / [i915#716]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][26] ([i915#454]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          [DMESG-WARN][28] ([i915#180]) -> [PASS][29] +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-kbl3/igt@i915_suspend@fence-restore-untiled.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html

  * {igt@kms_flip@flip-vs-expired-vblank@a-edp1}:
    - shard-skl:          [FAIL][30] ([i915#79]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@c-dp1}:
    - shard-apl:          [DMESG-WARN][32] ([i915#180]) -> [PASS][33] +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][34] ([i915#1188]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][36] ([fdo#108145] / [i915#265]) -> [PASS][37] +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][38] ([fdo#109441]) -> [PASS][39] +3 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb5/igt@kms_psr@psr2_cursor_render.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][40] ([i915#31]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@kms_setmode@basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-apl8/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][42] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][43] ([i915#1319])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl2/igt@kms_content_protection@atomic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          [DMESG-FAIL][44] ([fdo#110321]) -> [FAIL][45] ([fdo#110321])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-apl8/igt@kms_content_protection@lic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-apl1/igt@kms_content_protection@lic.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][46] -> [SKIP][47] ([fdo#109642] / [fdo#111068])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8511/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/shard-iclb5/igt@kms_psr2_su@frontbuffer.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1622]: https://gitlab.freedesktop.org/drm/intel/issues/1622
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1883]: https://gitlab.freedesktop.org/drm/intel/issues/1883
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#859]: https://gitlab.freedesktop.org/drm/intel/issues/859


Participating hosts (11 -> 12)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_8511 -> Patchwork_17731

  CI-20190529: 20190529
  CI_DRM_8511: 504ee538bd65abff745914a6f0b7aad62bbc1d11 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5664: 404e2fa06b9c5986dec3fa210234fe8b034b157e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17731: 2f923bf79607e9e1f5edbf555daf1ba40740b8cf @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17731/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
