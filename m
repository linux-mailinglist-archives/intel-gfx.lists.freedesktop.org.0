Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D61B11C619C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 22:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 408E26E24E;
	Tue,  5 May 2020 20:09:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D53D26E249;
 Tue,  5 May 2020 20:09:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF058A00E7;
 Tue,  5 May 2020 20:09:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 05 May 2020 20:09:08 -0000
Message-ID: <158870934884.25911.1195238179687206352@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200505084629.31365-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200505084629.31365-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Record_the_active_CCID_from_before_reset?=
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

Series: drm/i915/execlists: Record the active CCID from before reset
URL   : https://patchwork.freedesktop.org/series/76946/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8427_full -> Patchwork_17580_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17580_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-apl8/igt@gem_eio@in-flight-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-apl4/igt@gem_eio@in-flight-suspend.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-kbl7/igt@gem_workarounds@suspend-resume-context.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-kbl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#69])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-skl1/igt@i915_pm_backlight@fade_with_suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#300])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#70])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-apl1/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-apl1/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#70])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-kbl4/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-kbl7/igt@kms_cursor_edge_walk@pipe-a-64x64-top-edge.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-hsw:          [PASS][13] -> [FAIL][14] ([i915#96])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-hsw7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180] / [i915#95]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#49])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-skl7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-skl4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([i915#1188])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-skl5/igt@kms_hdr@bpc-switch.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109441]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-iclb1/igt@kms_psr@psr2_primary_mmap_cpu.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@engines-mixed-process@vecs0:
    - shard-skl:          [FAIL][25] ([i915#1528]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-skl6/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-skl8/igt@gem_ctx_persistence@engines-mixed-process@vecs0.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1}:
    - shard-apl:          [FAIL][27] ([i915#79]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-apl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-kbl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][33] ([i915#180] / [i915#93] / [i915#95]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][35] ([fdo#108145] / [i915#265]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][37] ([i915#173]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-iclb1/igt@kms_psr@no_drrs.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-iclb4/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][41] ([i915#31]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-glk9/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-glk4/igt@kms_setmode@basic.html

  * {igt@perf@polling-parameterized}:
    - shard-tglb:         [FAIL][43] ([i915#1542]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-tglb7/igt@perf@polling-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-tglb1/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][45] ([i915#588]) -> [SKIP][46] ([i915#658])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][47] ([i915#468]) -> [FAIL][48] ([i915#454])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8427/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8427 -> Patchwork_17580

  CI-20190529: 20190529
  CI_DRM_8427: d7afe86abe766f68e758be1c9db6618e55bdf38d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5632: e630cb8cd2ec01d6d5358eb2a3f6ea70498b8183 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17580: 92e7b4e3f924ed7fd4d57f69f156573ac43684cb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17580/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
