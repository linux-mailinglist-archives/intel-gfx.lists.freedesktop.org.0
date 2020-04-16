Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 833461ABABA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 10:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 885786E2B2;
	Thu, 16 Apr 2020 08:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B3BA6E038;
 Thu, 16 Apr 2020 08:01:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 54C48A3C0D;
 Thu, 16 Apr 2020 08:01:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 16 Apr 2020 08:01:33 -0000
Message-ID: <158702409331.20884.12746307832069178927@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgUGVy?=
 =?utf-8?q?_client_engine_busyness?=
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

Series: Per client engine busyness
URL   : https://patchwork.freedesktop.org/series/75967/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8300_full -> Patchwork_17306_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17306_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#109276])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-iclb4/igt@gem_exec_params@invalid-bsd-ring.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#1531])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-tglb2/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-tglb7/igt@i915_selftest@live@requests.html

  * igt@kms_busy@basic-flip-pipe-a:
    - shard-hsw:          [PASS][7] -> [INCOMPLETE][8] ([i915#61])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-hsw1/igt@kms_busy@basic-flip-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-hsw8/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#54] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_legacy@all-pipes-torture-bo:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#128])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-kbl7/igt@kms_cursor_legacy@all-pipes-torture-bo.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-kbl2/igt@kms_cursor_legacy@all-pipes-torture-bo.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#34])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-skl2/igt@kms_flip@plain-flip-fb-recreate.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-skl3/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#173])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-iclb8/igt@kms_psr@no_drrs.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#109441]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-iclb7/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#43])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-skl5/igt@kms_vblank@pipe-c-accuracy-idle.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-skl7/igt@kms_vblank@pipe-c-accuracy-idle.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@rcs0}:
    - shard-apl:          [DMESG-WARN][23] ([i915#180]) -> [PASS][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-apl6/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][25] ([i915#454]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [WARN][27] ([i915#1519]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-hsw7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
    - shard-apl:          [FAIL][29] ([i915#54] / [i915#95]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][31] ([i915#52] / [i915#54]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
    - shard-snb:          [SKIP][33] ([fdo#109271]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][35] ([i915#1188]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][39] ([i915#69]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-skl9/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-skl2/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +4 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@prime_vgem@sync@bcs0}:
    - shard-tglb:         [INCOMPLETE][43] ([i915#409]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-tglb1/igt@prime_vgem@sync@bcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-tglb5/igt@prime_vgem@sync@bcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][45] ([i915#588]) -> [SKIP][46] ([i915#658])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-snb:          [SKIP][47] ([fdo#109271]) -> [INCOMPLETE][48] ([i915#82])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-snb4/igt@i915_pm_rpm@system-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-snb6/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          [FAIL][49] ([fdo#108145] / [i915#265] / [i915#95]) -> [FAIL][50] ([fdo#108145] / [i915#265])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8300/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#128]: https://gitlab.freedesktop.org/drm/intel/issues/128
  [i915#1519]: https://gitlab.freedesktop.org/drm/intel/issues/1519
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1532]: https://gitlab.freedesktop.org/drm/intel/issues/1532
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8300 -> Patchwork_17306

  CI-20190529: 20190529
  CI_DRM_8300: 02f5d84db84f885cba1f8d258b23e9ea0f2d922e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5590: c7b4a43942be32245b1c00b5b4a38401d8ca6e0d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17306: e9b16b5095f854deeaee59534fa4047771ace61e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17306/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
