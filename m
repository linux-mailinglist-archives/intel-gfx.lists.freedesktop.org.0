Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBCC1A1EE4
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 12:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 137676EA1D;
	Wed,  8 Apr 2020 10:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 25BBF6EA1C;
 Wed,  8 Apr 2020 10:38:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 20350A00C7;
 Wed,  8 Apr 2020 10:38:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Apr 2020 10:38:15 -0000
Message-ID: <158634229510.19346.11738839835684636665@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200407221832.15465-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200407221832.15465-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Mark_up_racy_read_of_intel=5Fring=2Ehead?=
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

Series: drm/i915/gt: Mark up racy read of intel_ring.head
URL   : https://patchwork.freedesktop.org/series/75639/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8270_full -> Patchwork_17244_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_17244_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#1531] / [i915#1658])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-tglb1/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-tglb3/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-256x85-onscreen.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#72])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#407])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk1/igt@kms_flip@2x-modeset-vs-vblank-race.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-glk5/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][13] -> [DMESG-WARN][14] ([i915#180]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([fdo#108145] / [i915#265]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#109441])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-iclb6/igt@kms_psr@psr2_no_drrs.html

  
#### Possible fixes ####

  * {igt@gem_wait@write-busy@all}:
    - shard-glk:          [FAIL][19] ([i915#1604]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk2/igt@gem_wait@write-busy@all.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-glk2/igt@gem_wait@write-busy@all.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [FAIL][21] ([i915#1066]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-snb4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][23] ([i915#69]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-skl10/igt@i915_suspend@forcewake.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-skl9/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-glk:          [FAIL][25] ([i915#67]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk2/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-glk7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][27] ([i915#79]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][29] ([i915#79]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][31] ([i915#180]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-snb:          [SKIP][33] ([fdo#109271]) -> [PASS][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-snb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][35] ([i915#1188]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-skl9/igt@kms_hdr@bpc-switch.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-skl1/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][37] ([fdo#108145] / [i915#265]) -> [PASS][38] +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][39] ([fdo#109441]) -> [PASS][40] +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][41] ([i915#31]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-apl4/igt@kms_setmode@basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-apl2/igt@kms_setmode@basic.html

  * {igt@perf@blocking-parameterized}:
    - shard-kbl:          [FAIL][43] ([i915#1542]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8270/shard-kbl3/igt@perf@blocking-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/shard-kbl1/igt@perf@blocking-parameterized.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1604]: https://gitlab.freedesktop.org/drm/intel/issues/1604
  [i915#1658]: https://gitlab.freedesktop.org/drm/intel/issues/1658
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#67]: https://gitlab.freedesktop.org/drm/intel/issues/67
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8270 -> Patchwork_17244

  CI-20190529: 20190529
  CI_DRM_8270: 3375eae2472503b49dcac86a09ab0018243f9f01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5577: 7ee7e86fd79e4dbb6300ef4c23e50cb699216ae2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17244: ecfd6942fcf63ec186b3fa7b3033edb7cd398ba0 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17244/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
