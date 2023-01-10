Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A826637B4
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 04:09:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7387310E08C;
	Tue, 10 Jan 2023 03:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC4DE10E08C;
 Tue, 10 Jan 2023 03:09:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95FAAA006C;
 Tue, 10 Jan 2023 03:09:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8670209340542659673=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Tue, 10 Jan 2023 03:09:50 -0000
Message-ID: <167332019057.5204.9271252914956429155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230109140210.25822-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230109140210.25822-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_timeslots_argument_for_DP_DSC_SST_case_=28rev2=29?=
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

--===============8670209340542659673==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix timeslots argument for DP DSC SST case (rev2)
URL   : https://patchwork.freedesktop.org/series/112349/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12559_full -> Patchwork_112349v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/index.html

Participating hosts (14 -> 10)
------------------------------

  Missing    (4): shard-rkl0 pig-kbl-iris pig-glk-j5005 pig-skl-6260u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112349v2_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_chamelium_color@gamma}:
    - {shard-tglu}:       NOTRUN -> [SKIP][1] +15 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-3/igt@kms_chamelium_color@gamma.html

  * {igt@kms_chamelium_frames@dp-crc-fast}:
    - {shard-rkl}:        NOTRUN -> [SKIP][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-5/igt@kms_chamelium_frames@dp-crc-fast.html

  * {igt@kms_chamelium_frames@hdmi-crc-multiple}:
    - {shard-tglu-10}:    NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-10/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  
Known issues
------------

  Here are the changes found in Patchwork_112349v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#2346])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@virtual-idle:
    - {shard-rkl}:        [FAIL][6] ([i915#7742]) -> [PASS][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@read:
    - {shard-rkl}:        [SKIP][8] ([i915#2582]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@fbdev@read.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@fbdev@read.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - {shard-rkl}:        [SKIP][10] ([i915#6252]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-3/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@suspend:
    - {shard-rkl}:        [FAIL][12] ([i915#7052]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-3/igt@gem_eio@suspend.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-1/igt@gem_eio@suspend.html

  * igt@gem_exec_reloc@basic-scanout@vcs0:
    - {shard-tglu}:       [SKIP][14] ([i915#3639]) -> [PASS][15] +4 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-tglu-6/igt@gem_exec_reloc@basic-scanout@vcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-5/igt@gem_exec_reloc@basic-scanout@vcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {shard-rkl}:        [FAIL][16] ([fdo#103375]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-3/igt@gem_exec_suspend@basic-s3@smem.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_mmap_gtt@coherency:
    - {shard-rkl}:        [SKIP][18] ([fdo#111656]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-6/igt@gem_mmap_gtt@coherency.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-5/igt@gem_mmap_gtt@coherency.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - {shard-rkl}:        [SKIP][20] ([i915#3282]) -> [PASS][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gen9_exec_parse@bb-chained:
    - {shard-rkl}:        [SKIP][22] ([i915#2527]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][24] ([i915#6258]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_dc@dc5-psr:
    - {shard-rkl}:        [SKIP][26] ([i915#658]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@i915_pm_dc@dc5-psr.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - {shard-dg1}:        [SKIP][28] ([i915#1937]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-dg1-16/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-dg1-14/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - {shard-dg1}:        [SKIP][30] ([i915#1397]) -> [PASS][31] +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        [SKIP][32] ([fdo#109308]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@i915_pm_rpm@i2c.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - {shard-dg1}:        [DMESG-WARN][34] -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-dg1-16/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-dg1-14/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][36] ([i915#1845] / [i915#4098]) -> [PASS][37] +21 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - {shard-tglu}:       [SKIP][38] ([i915#1849]) -> [PASS][39] +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - {shard-rkl}:        [SKIP][40] ([i915#1849] / [i915#4098]) -> [PASS][41] +15 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_psr@sprite_render:
    - {shard-rkl}:        [SKIP][42] ([i915#1072]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@kms_psr@sprite_render.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@kms_psr@sprite_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm:
    - {shard-tglu}:       [SKIP][44] ([i915#7651]) -> [PASS][45] +9 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-5/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html

  * igt@kms_vblank@pipe-b-wait-busy-hang:
    - {shard-tglu}:       [SKIP][46] ([i915#1845] / [i915#7651]) -> [PASS][47] +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-tglu-6/igt@kms_vblank@pipe-b-wait-busy-hang.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-5/igt@kms_vblank@pipe-b-wait-busy-hang.html

  * igt@perf@gen12-mi-rpc:
    - {shard-rkl}:        [SKIP][48] ([fdo#109289]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-5/igt@perf@gen12-mi-rpc.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-3/igt@perf@gen12-mi-rpc.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][50] ([i915#2436]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - {shard-dg1}:        [FAIL][52] ([i915#1755]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-dg1-19/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-dg1-17/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742


Build changes
-------------

  * Linux: CI_DRM_12559 -> Patchwork_112349v2
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_12559: b4a7d5ac8957c0b894b81d125b15b1ff45eaf5b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7113: 15562e123ee6ed88163c7da2ef330dfe9bbd16a5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112349v2: b4a7d5ac8957c0b894b81d125b15b1ff45eaf5b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/index.html

--===============8670209340542659673==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix timeslots argument for DP DSC SST case (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112349/">https://patchwork.freedesktop.org/series/112349/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12559_full -&gt; Patchwork_112349v2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/index.html</p>
<h2>Participating hosts (14 -&gt; 10)</h2>
<p>Missing    (4): shard-rkl0 pig-kbl-iris pig-glk-j5005 pig-skl-6260u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112349v2_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_chamelium_color@gamma}:</p>
<ul>
<li>{shard-tglu}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-3/igt@kms_chamelium_color@gamma.html">SKIP</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_chamelium_frames@dp-crc-fast}:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-5/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_chamelium_frames@hdmi-crc-multiple}:</p>
<ul>
<li>{shard-tglu-10}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-10/igt@kms_chamelium_frames@hdmi-crc-multiple.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112349v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-3/igt@gem_ctx_persistence@legacy-engines-hang@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-3/igt@gem_eio@suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7052">i915#7052</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-1/igt@gem_eio@suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-tglu-6/igt@gem_exec_reloc@basic-scanout@vcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3639">i915#3639</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-5/igt@gem_exec_reloc@basic-scanout@vcs0.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-3/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-6/igt@gem_mmap_gtt@coherency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111656">fdo#111656</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-5/igt@gem_mmap_gtt@coherency.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#6258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@i915_pm_dc@dc5-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-dg1-16/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-dg1-14/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@i915_pm_rpm@i2c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-dg1-16/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-dg1-14/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs.html">PASS</a> +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">PASS</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_render:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-1/igt@kms_psr@sprite_render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-6/igt@kms_psr@sprite_render.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-tglu-6/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-5/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-wait-busy-hang:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-tglu-6/igt@kms_vblank@pipe-b-wait-busy-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-tglu-5/igt@kms_vblank@pipe-b-wait-busy-hang.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-5/igt@perf@gen12-mi-rpc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-3/igt@perf@gen12-mi-rpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12559/shard-dg1-19/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1755">i915#1755</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v2/shard-dg1-17/igt@sysfs_timeslice_duration@timeout@vecs0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12559 -&gt; Patchwork_112349v2</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12559: b4a7d5ac8957c0b894b81d125b15b1ff45eaf5b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7113: 15562e123ee6ed88163c7da2ef330dfe9bbd16a5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112349v2: b4a7d5ac8957c0b894b81d125b15b1ff45eaf5b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============8670209340542659673==--
