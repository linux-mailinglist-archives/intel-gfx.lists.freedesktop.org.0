Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E76071BE7BD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 21:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 536CD6EB0C;
	Wed, 29 Apr 2020 19:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8FE686EB0B;
 Wed, 29 Apr 2020 19:50:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A414A47EE;
 Wed, 29 Apr 2020 19:50:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Wed, 29 Apr 2020 19:50:56 -0000
Message-ID: <158818985653.6697.12478643708069465809@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429134555.22106-1-ramalingam.c@intel.com>
In-Reply-To: <20200429134555.22106-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Fix_the_return_handling_of_drm=5Fhdcp=5Fcheck=5Fk?=
 =?utf-8?q?svs=5Frevoked?=
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

Series: drm/i915/hdcp: Fix the return handling of drm_hdcp_check_ksvs_revoked
URL   : https://patchwork.freedesktop.org/series/76730/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8391_full -> Patchwork_17515_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17515_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#198])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-skl8/igt@i915_pm_dc@dc5-psr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-skl3/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-b-torture-move:
    - shard-iclb:         [PASS][7] -> [DMESG-WARN][8] ([i915#128])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-iclb6/igt@kms_cursor_legacy@pipe-b-torture-move.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-iclb1/igt@kms_cursor_legacy@pipe-b-torture-move.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#699] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-kbl7/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-kbl4/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][11] -> [INCOMPLETE][12] ([i915#123] / [i915#69])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109642] / [fdo#111068])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-iclb6/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-iclb6/igt@kms_psr@psr2_suspend.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][19] ([i915#180]) -> [PASS][20] +6 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][21] ([i915#69]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled:
    - shard-glk:          [FAIL][23] ([i915#177] / [i915#52] / [i915#54]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-pwrite-untiled.html

  * {igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2}:
    - shard-glk:          [FAIL][25] ([i915#34]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1}:
    - shard-skl:          [FAIL][27] ([i915#79]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * {igt@kms_flip@flip-vs-suspend@c-edp1}:
    - shard-skl:          [INCOMPLETE][29] ([i915#198]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-skl3/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-skl2/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][31] ([i915#1188]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-skl2/igt@kms_hdr@bpc-switch.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180]) -> [PASS][34] +6 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][39] ([i915#454]) -> [SKIP][40] ([i915#468]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [FAIL][41] ([i915#608]) -> [SKIP][42] ([fdo#109642] / [fdo#111068])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8391/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/shard-iclb8/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8391 -> Patchwork_17515

  CI-20190529: 20190529
  CI_DRM_8391: 9cada6f702d618458eb6dda220f5cfefe655f475 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17515: 86e0d1e31c471181398ea4f2f381bd2d04c4f4c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17515/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
