Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EF11A1FB0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 13:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91BD6EA51;
	Wed,  8 Apr 2020 11:17:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CB046EA40;
 Wed,  8 Apr 2020 11:17:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86CF5A47EA;
 Wed,  8 Apr 2020 11:17:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Apr 2020 11:17:23 -0000
Message-ID: <158634464352.19349.3348419833853439355@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407222625.15542-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200407222625.15542-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Drop_vestigal_timeslicing_assert?=
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

Series: drm/i915/selftests: Drop vestigal timeslicing assert
URL   : https://patchwork.freedesktop.org/series/75640/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8270_full -> Patchwork_17245_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17245_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17245_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17245_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-kbl7/igt@gem_exec_whisper@basic-fds-forked.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-kbl2/igt@gem_exec_whisper@basic-fds-forked.html

  
Known issues
------------

  Here are the changes found in Patchwork_17245_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1119])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-glk3/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#72])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180] / [i915#95])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#79])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk1/igt@kms_flip@flip-vs-expired-vblank.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][11] -> [FAIL][12] ([i915#1188])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#69])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109441]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-iclb3/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Possible fixes ####

  * {igt@gem_wait@write-busy@all}:
    - shard-glk:          [FAIL][21] ([i915#1604]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk2/igt@gem_wait@write-busy@all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-glk7/igt@gem_wait@write-busy@all.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [FAIL][23] ([i915#1066]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-snb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][25] ([i915#69]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-skl10/igt@i915_suspend@forcewake.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-skl4/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-glk:          [FAIL][27] ([i915#67]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk2/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-glk1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][29] ([i915#79]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][31] ([i915#79]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-snb:          [SKIP][33] ([fdo#109271]) -> [PASS][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-snb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][37] ([fdo#109441]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][39] ([i915#31]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-apl4/igt@kms_setmode@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-apl8/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][41] ([i915#180]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * {igt@perf@blocking-parameterized}:
    - shard-kbl:          [FAIL][43] ([i915#1542]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-kbl3/igt@perf@blocking-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-kbl4/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][45] ([i915#658]) -> [SKIP][46] ([i915#588])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-snb:          [SKIP][47] ([fdo#109271]) -> [INCOMPLETE][48] ([i915#82])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-snb2/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/shard-snb5/igt@i915_pm_rpm@modeset-lpsp-stress.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1604]: https://gitlab.freedesktop.org/drm/intel/issues/1604
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#67]: https://gitlab.freedesktop.org/drm/intel/issues/67
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8270 -> Patchwork_17245

  CI-20190529: 20190529
  CI_DRM_8270: 3375eae2472503b49dcac86a09ab0018243f9f01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5577: 7ee7e86fd79e4dbb6300ef4c23e50cb699216ae2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17245: d99dd821eb9b7e4dafc2b80a8ac787571401e78a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17245/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
