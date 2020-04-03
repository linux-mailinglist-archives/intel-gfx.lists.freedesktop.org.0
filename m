Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4036419D717
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91EA36EB80;
	Fri,  3 Apr 2020 13:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 631396EB7F;
 Fri,  3 Apr 2020 13:02:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CCCEA00C7;
 Fri,  3 Apr 2020 13:02:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Apr 2020 13:02:48 -0000
Message-ID: <158591896835.13351.8043802860858821477@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402124218.6375-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200402124218.6375-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Utilize_rcu_iteration_of_context_engines_=28rev3?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gem: Utilize rcu iteration of context engines (rev3)
URL   : https://patchwork.freedesktop.org/series/75270/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8238_full -> Patchwork_17181_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17181_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17181_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17181_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl5/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-skl8/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@hang:
    - shard-iclb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb1/igt@gem_mmap_gtt@hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-iclb2/igt@gem_mmap_gtt@hang.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 1d (NEW):
    - pig-snb-2600:       NOTRUN -> [FAIL][5]
   [5]: None

  
New tests
---------

  New tests have been introduced between CI_DRM_8238_full and Patchwork_17181_full:

### New Piglit tests (1) ###

  * spec@glsl-1.20@execution@tex-miplevel-selection gl2:texture(bias) 1d:
    - Statuses : 1 fail(s)
    - Exec time: [7.83] s

  

Known issues
------------

  Here are the changes found in Patchwork_17181_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][6] -> [INCOMPLETE][7] ([i915#69])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl7/igt@i915_pm_backlight@fade_with_suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-skl10/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([i915#1531])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-tglb7/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-tglb3/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl1/igt@i915_suspend@sysfs-reader.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#52] / [i915#54])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-glk9/igt@kms_draw_crc@draw-method-rgb565-pwrite-xtiled.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-skl:          [PASS][14] -> [FAIL][15] ([i915#34])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][16] -> [DMESG-WARN][17] ([i915#180] / [i915#93] / [i915#95]) +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#1188])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#648] / [i915#69])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][22] -> [FAIL][23] ([fdo#108145] / [i915#265])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-128:
    - shard-kbl:          [PASS][24] -> [FAIL][25] ([i915#1559] / [i915#93] / [i915#95])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-kbl6/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
    - shard-apl:          [PASS][26] -> [FAIL][27] ([i915#1559] / [i915#95])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl2/igt@kms_plane_cursor@pipe-a-overlay-size-128.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-apl2/igt@kms_plane_cursor@pipe-a-overlay-size-128.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][28] -> [SKIP][29] ([fdo#109441]) +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_tiled_swapping@non-threaded:
    - shard-kbl:          [FAIL][30] -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@gem_tiled_swapping@non-threaded.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-kbl4/igt@gem_tiled_swapping@non-threaded.html

  * {igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt}:
    - shard-snb:          [DMESG-WARN][32] ([i915#478]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb6/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy@gtt.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][34] ([i915#180]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-apl4/igt@gem_workarounds@suspend-resume-context.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-apl7/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][36] ([i915#79]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-glk:          [FAIL][38] ([i915#34]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-glk7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-glk3/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [INCOMPLETE][40] ([i915#221]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][42] ([i915#180]) -> [PASS][43] +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-top-left-pipe-a-planes:
    - shard-skl:          [FAIL][44] ([i915#1036]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl3/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-skl7/igt@kms_plane@plane-panning-top-left-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][46] ([fdo#108145] / [i915#265]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][48] ([fdo#109441]) -> [PASS][49] +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@prime_vgem@wait-bsd2:
    - shard-iclb:         [SKIP][50] ([fdo#109276]) -> [PASS][51] +4 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb5/igt@prime_vgem@wait-bsd2.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-iclb4/igt@prime_vgem@wait-bsd2.html

  
#### Warnings ####

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-snb:          [INCOMPLETE][52] ([i915#82]) -> [SKIP][53] ([fdo#109271]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-snb4/igt@i915_pm_rpm@dpms-non-lpsp.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-snb5/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][54] ([fdo#109642] / [fdo#111068]) -> [FAIL][55] ([i915#608])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8238/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1036]: https://gitlab.freedesktop.org/drm/intel/issues/1036
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1559]: https://gitlab.freedesktop.org/drm/intel/issues/1559
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 11)
------------------------------

  Additional (1): pig-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8238 -> Patchwork_17181

  CI-20190529: 20190529
  CI_DRM_8238: 840f70602a47208a2f1e444ba276f412f10e38df @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5558: 3b55a816300d80bc5e0b995cd41ee8c8649a1ea2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17181: 92fc6f8ff1aacb1926e17b399dfa898b17997e36 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17181/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
