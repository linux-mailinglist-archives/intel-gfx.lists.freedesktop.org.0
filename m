Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D6368C2A0
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 17:11:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C34DB10E412;
	Mon,  6 Feb 2023 16:11:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD02310E412;
 Mon,  6 Feb 2023 16:11:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A3E67A00E6;
 Mon,  6 Feb 2023 16:11:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9071576495689218526=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Mon, 06 Feb 2023 16:11:45 -0000
Message-ID: <167569990563.27492.18048390946163575825@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/9=5D_drm/i915/display/core=3A_use_i?=
 =?utf-8?q?ntel=5Fde=5Frmw_if_possible_=28rev4=29?=
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

--===============9071576495689218526==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/9] drm/i915/display/core: use intel_de_rmw if possible (rev4)
URL   : https://patchwork.freedesktop.org/series/112438/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12701_full -> Patchwork_112438v4_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/index.html

Participating hosts (10 -> 11)
------------------------------

  Additional (1): shard-rkl0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112438v4_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_pm_dc@dc5-dpms-negative}:
    - {shard-tglu-9}:     NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-9/igt@i915_pm_dc@dc5-dpms-negative.html

  
Known issues
------------

  Here are the changes found in Patchwork_112438v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][2] ([i915#2842])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#3886])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-glk:          NOTRUN -> [SKIP][4] ([fdo#109271]) +22 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk7/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][5] ([i915#7862]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  
#### Possible fixes ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - {shard-rkl}:        [SKIP][6] ([i915#3281]) -> [PASS][7] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@fbdev@read:
    - {shard-rkl}:        [SKIP][8] ([i915#2582]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@fbdev@read.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@fbdev@read.html

  * igt@gem_partial_pwrite_pread@write:
    - {shard-rkl}:        [SKIP][10] ([i915#3282]) -> [PASS][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-6/igt@gem_partial_pwrite_pread@write.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-5/igt@gem_partial_pwrite_pread@write.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [ABORT][12] ([i915#5566]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - {shard-rkl}:        [SKIP][14] ([i915#2527]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][16] ([i915#6258]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_rpm@cursor-dpms:
    - {shard-rkl}:        [SKIP][18] ([i915#1849]) -> [PASS][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@i915_pm_rpm@cursor-dpms.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-tglu}:       [SKIP][20] ([i915#1397]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@i915_pm_rpm@dpms-lpsp.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-rkl}:        [SKIP][22] ([i915#1397]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - {shard-dg1}:        [SKIP][24] ([i915#1397]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_atomic@atomic_plane_damage:
    - {shard-rkl}:        [SKIP][26] ([i915#4098]) -> [PASS][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@kms_atomic@atomic_plane_damage.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@kms_atomic@atomic_plane_damage.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - {shard-tglu}:       [SKIP][28] ([i915#1845] / [i915#7651]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs:
    - {shard-tglu}:       [SKIP][30] ([i915#7651]) -> [PASS][31] +13 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][32] ([i915#2346]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - {shard-rkl}:        [SKIP][34] ([i915#1849] / [i915#4098]) -> [PASS][35] +18 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - {shard-tglu}:       [SKIP][36] ([i915#1849]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@pixel-format@pipe-b-planes:
    - {shard-tglu}:       [SKIP][38] ([i915#1849] / [i915#3558]) -> [PASS][39] +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@kms_plane@pixel-format@pipe-b-planes.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@kms_plane@pixel-format@pipe-b-planes.html

  * igt@kms_psr@cursor_render:
    - {shard-rkl}:        [SKIP][40] ([i915#1072]) -> [PASS][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@kms_psr@cursor_render.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@kms_psr@cursor_render.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - {shard-rkl}:        [SKIP][42] ([i915#1845] / [i915#4098]) -> [PASS][43] +31 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-90.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@perf@gen12-mi-rpc:
    - {shard-rkl}:        [SKIP][44] ([fdo#109289]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-5/igt@perf@gen12-mi-rpc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-3/igt@perf@gen12-mi-rpc.html

  * igt@perf_pmu@idle@rcs0:
    - {shard-rkl}:        [FAIL][46] ([i915#4349]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-2/igt@perf_pmu@idle@rcs0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-3/igt@perf_pmu@idle@rcs0.html

  * igt@prime_mmap_kms@buffer-sharing:
    - {shard-tglu}:       [SKIP][48] ([fdo#109274]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@prime_mmap_kms@buffer-sharing.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@prime_mmap_kms@buffer-sharing.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
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
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
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
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7862]: https://gitlab.freedesktop.org/drm/intel/issues/7862
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984


Build changes
-------------

  * Linux: CI_DRM_12701 -> Patchwork_112438v4

  CI-20190529: 20190529
  CI_DRM_12701: 59f7ee248c81c7f9840eeabe3e8fac5e6f5a1a9f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7149: 1c7ea154b625e1fb826f1519b816b4256dd10b62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112438v4: 59f7ee248c81c7f9840eeabe3e8fac5e6f5a1a9f @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/index.html

--===============9071576495689218526==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/9] drm/i915/display/core: use intel_de_rmw if possible (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112438/">https://patchwork.freedesktop.org/series/112438/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12701_full -&gt; Patchwork_112438v4_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/index.html</p>
<h2>Participating hosts (10 -&gt; 11)</h2>
<p>Additional (1): shard-rkl0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112438v4_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@i915_pm_dc@dc5-dpms-negative}:<ul>
<li>{shard-tglu-9}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-9/igt@i915_pm_dc@dc5-dpms-negative.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112438v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk7/igt@kms_chamelium_color@ctm-negative.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk7/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7862">i915#7862</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-6/igt@gem_partial_pwrite_pread@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-5/igt@gem_partial_pwrite_pread@write.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-glk6/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk7/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#6258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@i915_hangman@engine-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@i915_pm_rpm@cursor-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-dg1-16/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic_plane_damage:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@kms_atomic@atomic_plane_damage.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@kms_atomic@atomic_plane_damage.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_rc_ccs.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">PASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-stridechange.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-b-planes:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@kms_plane@pixel-format@pipe-b-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3558">i915#3558</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@kms_plane@pixel-format@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@kms_psr@cursor_render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@kms_psr@cursor_render.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html">PASS</a> +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-5/igt@perf@gen12-mi-rpc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-3/igt@perf@gen12-mi-rpc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@idle@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-rkl-2/igt@perf_pmu@idle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-rkl-3/igt@perf_pmu@idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_mmap_kms@buffer-sharing:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12701/shard-tglu-6/igt@prime_mmap_kms@buffer-sharing.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112438v4/shard-tglu-3/igt@prime_mmap_kms@buffer-sharing.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12701 -&gt; Patchwork_112438v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12701: 59f7ee248c81c7f9840eeabe3e8fac5e6f5a1a9f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7149: 1c7ea154b625e1fb826f1519b816b4256dd10b62 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112438v4: 59f7ee248c81c7f9840eeabe3e8fac5e6f5a1a9f @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============9071576495689218526==--
