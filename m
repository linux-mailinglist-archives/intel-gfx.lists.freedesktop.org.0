Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E93C68AC44
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Feb 2023 21:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63E9810E04E;
	Sat,  4 Feb 2023 20:28:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4F6C10E043;
 Sat,  4 Feb 2023 20:28:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBC70AA01E;
 Sat,  4 Feb 2023 20:28:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3725548187407626736=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aravind Iddamsetty" <aravind.iddamsetty@intel.com>
Date: Sat, 04 Feb 2023 20:28:51 -0000
Message-ID: <167554253185.3757.529089500766207523@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230203115713.4023991-1-aravind.iddamsetty@intel.com>
In-Reply-To: <20230203115713.4023991-1-aravind.iddamsetty@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSW5p?=
 =?utf-8?q?tialize_the_obj_flags_for_shmem_objects?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3725548187407626736==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Initialize the obj flags for shmem objects
URL   : https://patchwork.freedesktop.org/series/113645/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12691_full -> Patchwork_113645v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/index.html

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_113645v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2842])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][3] -> [ABORT][4] ([i915#5566])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk3/igt@gen9_exec_parse@allowed-single.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#79])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2122])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html

  * igt@perf@stress-open-close:
    - shard-glk:          [PASS][9] -> [ABORT][10] ([i915#5213])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk9/igt@perf@stress-open-close.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk7/igt@perf@stress-open-close.html

  
#### Possible fixes ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - {shard-rkl}:        [SKIP][11] ([i915#3281]) -> [PASS][12] +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@api_intel_bb@object-reloc-keep-cache.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - {shard-rkl}:        [FAIL][13] ([i915#7742]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][15] ([i915#6268]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][17] ([i915#6252]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-4/igt@gem_ctx_persistence@hang.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        [FAIL][19] ([i915#5115] / [i915#7052]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-4/igt@gem_eio@suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@gem_eio@suspend.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - {shard-rkl}:        [SKIP][21] ([i915#6247]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-4/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][23] ([i915#2842]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_schedule@semaphore-power:
    - {shard-rkl}:        [SKIP][25] ([i915#7276]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - {shard-rkl}:        [SKIP][27] ([i915#3282]) -> [PASS][28] +6 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-2/igt@gem_tiled_partial_pwrite_pread@writes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gen9_exec_parse@shadow-peek:
    - {shard-rkl}:        [SKIP][29] ([i915#2527]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_dc@dc9-dpms:
    - {shard-rkl}:        [SKIP][31] ([i915#3361]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-4/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][33] ([fdo#109308]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-4/igt@i915_pm_rpm@drm-resources-equal.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@kms_dp_aux_dev:
    - {shard-rkl}:        [SKIP][35] ([i915#1257]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-2/igt@kms_dp_aux_dev.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [FAIL][37] ([i915#79]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-glk:          [FAIL][39] -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk6/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk8/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - {shard-rkl}:        [SKIP][41] ([i915#1849] / [i915#4098]) -> [PASS][42] +20 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane@pixel-format@pipe-b-planes:
    - {shard-rkl}:        [SKIP][43] ([i915#1849]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@kms_plane@pixel-format@pipe-b-planes.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@kms_plane@pixel-format@pipe-b-planes.html

  * igt@kms_psr@sprite_blt:
    - {shard-rkl}:        [SKIP][45] ([i915#1072]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-2/igt@kms_psr@sprite_blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@kms_psr@sprite_blt.html

  * igt@kms_rotation_crc@exhaust-fences:
    - {shard-rkl}:        [SKIP][47] ([i915#1845] / [i915#4098]) -> [PASS][48] +26 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-2/igt@kms_rotation_crc@exhaust-fences.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html

  * igt@perf@polling-small-buf:
    - {shard-rkl}:        [FAIL][49] ([i915#1722]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@perf@polling-small-buf.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@perf@polling-small-buf.html

  * igt@testdisplay:
    - {shard-rkl}:        [SKIP][51] ([i915#4098]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-2/igt@testdisplay.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@testdisplay.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949


Build changes
-------------

  * Linux: CI_DRM_12691 -> Patchwork_113645v1

  CI-20190529: 20190529
  CI_DRM_12691: 2153bc2944d37403c6d5c4e1082d074a34d39ae9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7148: ee8e31cf39c44d3fdbd04d8db239f8a815f86121 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113645v1: 2153bc2944d37403c6d5c4e1082d074a34d39ae9 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/index.html

--===============3725548187407626736==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Initialize the obj flags for shmem objects</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113645/">https://patchwork.freedesktop.org/series/113645/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12691_full -&gt; Patchwork_113645v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/index.html</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113645v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk6/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk3/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk3/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk5/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk9/igt@perf@stress-open-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk7/igt@perf@stress-open-close.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-4/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-4/igt@gem_eio@suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5115">i915#5115</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7052">i915#7052</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6247">i915#6247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-4/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7276">i915#7276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-2/igt@gem_tiled_partial_pwrite_pread@writes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-4/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-4/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-2/igt@kms_dp_aux_dev.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1257">i915#1257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-glk6/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-glk8/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html">PASS</a> +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@kms_plane@pixel-format@pipe-b-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@kms_plane@pixel-format@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-2/igt@kms_psr@sprite_blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@kms_psr@sprite_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-2/igt@kms_rotation_crc@exhaust-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@kms_rotation_crc@exhaust-fences.html">PASS</a> +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-3/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-5/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12691/shard-rkl-2/igt@testdisplay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113645v1/shard-rkl-6/igt@testdisplay.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12691 -&gt; Patchwork_113645v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12691: 2153bc2944d37403c6d5c4e1082d074a34d39ae9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7148: ee8e31cf39c44d3fdbd04d8db239f8a815f86121 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113645v1: 2153bc2944d37403c6d5c4e1082d074a34d39ae9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3725548187407626736==--
