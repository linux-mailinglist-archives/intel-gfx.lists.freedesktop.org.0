Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 249B11B10A6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 17:47:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD0A89DB4;
	Mon, 20 Apr 2020 15:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B76989DB4;
 Mon, 20 Apr 2020 15:47:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13A35A363B;
 Mon, 20 Apr 2020 15:47:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Mon, 20 Apr 2020 15:47:10 -0000
Message-ID: <158739763007.29874.13352478724352887513@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420094746.20409-1-karthik.b.s@intel.com>
In-Reply-To: <20200420094746.20409-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQXN5?=
 =?utf-8?q?nchronous_flip_implementation_for_i915_=28rev2=29?=
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

Series: Asynchronous flip implementation for i915 (rev2)
URL   : https://patchwork.freedesktop.org/series/74386/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8327_full -> Patchwork_17378_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17378_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17378_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17378_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-normal-all:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-tglb7/igt@gem_exec_whisper@basic-normal-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-tglb3/igt@gem_exec_whisper@basic-normal-all.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-tglb3/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17378_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-kbl2/igt@gem_workarounds@suspend-resume-context.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-kbl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#1119] / [i915#93] / [i915#95])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-kbl1/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-kbl1/igt@kms_big_fb@linear-32bpp-rotate-0.html
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#1119] / [i915#95])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-apl3/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-apl3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][10] -> [DMESG-WARN][11] ([i915#180]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109441]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-iclb6/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#31])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-kbl2/igt@kms_setmode@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-kbl2/igt@kms_setmode@basic.html

  
#### Possible fixes ####

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][16] ([i915#180]) -> [PASS][17] +1 similar issue
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-apl2/igt@gem_softpin@noreloc-s3.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-apl2/igt@gem_softpin@noreloc-s3.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [INCOMPLETE][18] ([i915#69]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl1/igt@i915_suspend@fence-restore-untiled.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-skl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][20] ([i915#54]) -> [PASS][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][22] ([i915#180]) -> [PASS][23] +5 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][24] ([fdo#109349]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip_tiling@flip-to-x-tiled:
    - shard-skl:          [FAIL][26] ([i915#167]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl4/igt@kms_flip_tiling@flip-to-x-tiled.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-skl8/igt@kms_flip_tiling@flip-to-x-tiled.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][28] ([i915#1188]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][30] ([fdo#109441]) -> [PASS][31] +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * {igt@perf@blocking-parameterized}:
    - shard-iclb:         [FAIL][32] ([i915#1542]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-iclb1/igt@perf@blocking-parameterized.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-iclb8/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][34] ([i915#588]) -> [SKIP][35] ([i915#658])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][36] ([i915#454]) -> [SKIP][37] ([i915#468])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-tglb7/igt@i915_pm_dc@dc6-psr.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-mmap-type:
    - shard-snb:          [SKIP][38] ([fdo#109271]) -> [INCOMPLETE][39] ([i915#82])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8327/shard-snb6/igt@i915_pm_rpm@gem-mmap-type.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/shard-snb2/igt@i915_pm_rpm@gem-mmap-type.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#167]: https://gitlab.freedesktop.org/drm/intel/issues/167
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8327 -> Patchwork_17378

  CI-20190529: 20190529
  CI_DRM_8327: 17e0a63ab93b19ea2bfccd9a0425c93e52a65246 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5602: a8fcccd15dcc2dd409edd23785a2d6f6e85fb682 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17378: c2228f5dc3a5f5f256a9d3a429297ad69602b056 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17378/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
