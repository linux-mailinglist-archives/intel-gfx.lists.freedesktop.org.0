Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E311B512F
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 02:11:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDCC589C69;
	Thu, 23 Apr 2020 00:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BD6FF89BF4;
 Thu, 23 Apr 2020 00:11:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B783AA47E6;
 Thu, 23 Apr 2020 00:11:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 23 Apr 2020 00:11:47 -0000
Message-ID: <158760070772.26750.17167133688909198068@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422190558.30509-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200422190558.30509-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Only_close_vma_we_open?=
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

Series: drm/i915: Only close vma we open
URL   : https://patchwork.freedesktop.org/series/76349/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8350_full -> Patchwork_17429_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17429_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17429_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17429_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          [INCOMPLETE][1] ([i915#155] / [i915#1687]) -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-kbl7/igt@gem_workarounds@suspend-resume-context.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-kbl7/igt@gem_workarounds@suspend-resume-context.html

  
Known issues
------------

  Here are the changes found in Patchwork_17429_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@perf@engine_cs:
    - shard-snb:          [PASS][3] -> [FAIL][4] ([i915#1763])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-snb2/igt@i915_selftest@perf@engine_cs.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-snb5/igt@i915_selftest@perf@engine_cs.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#69])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-skl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-apl7/igt@i915_suspend@sysfs-reader.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-apl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][9] -> [DMESG-WARN][10] ([i915#180] / [i915#93] / [i915#95])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([fdo#108145] / [i915#265]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109642] / [fdo#111068])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#173])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-iclb2/igt@kms_psr@no_drrs.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-iclb1/igt@kms_psr@no_drrs.html

  
#### Possible fixes ####

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][19] ([fdo#109349]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1}:
    - shard-skl:          [FAIL][21] ([i915#46]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@b-edp1}:
    - shard-skl:          [INCOMPLETE][23] ([i915#198]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@b-edp1.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][25] ([fdo#109441]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-iclb1/igt@kms_psr@psr2_primary_blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [FAIL][27] ([i915#31]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-kbl2/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-kbl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][29] ([i915#180]) -> [PASS][30] +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * {igt@perf@polling-small-buf}:
    - shard-iclb:         [FAIL][31] ([i915#1722]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-iclb2/igt@perf@polling-small-buf.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-iclb1/igt@perf@polling-small-buf.html

  
#### Warnings ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-tglb:         [INCOMPLETE][33] ([i915#1602] / [i915#456]) -> [INCOMPLETE][34] ([i915#1602] / [i915#402] / [i915#456])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/shard-tglb1/igt@gem_workarounds@suspend-resume-context.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/shard-tglb7/igt@gem_workarounds@suspend-resume-context.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1687]: https://gitlab.freedesktop.org/drm/intel/issues/1687
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8350 -> Patchwork_17429

  CI-20190529: 20190529
  CI_DRM_8350: 018bab6d1c4ac37bff9306384383fab59750e140 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5606: 678afb3954bec6227c8762756a0ad6d9946d49b2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17429: 5a5b5e4e47c029c14cd66584d794244d54c56554 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17429/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
