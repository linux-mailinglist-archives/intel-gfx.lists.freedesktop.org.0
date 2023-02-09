Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A1A6901C7
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 09:02:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A41D10E731;
	Thu,  9 Feb 2023 08:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DF8910E731;
 Thu,  9 Feb 2023 08:02:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 94BC1AA3D8;
 Thu,  9 Feb 2023 08:02:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3891400452274857915=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tomas Winkler" <tomas.winkler@intel.com>
Date: Thu, 09 Feb 2023 08:02:34 -0000
Message-ID: <167592975457.20201.7702139760671059296@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230208142358.1401618-1-tomas.winkler@intel.com>
In-Reply-To: <20230208142358.1401618-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgbWVp?=
 =?utf-8?q?=3A_gsc_proxy_component?=
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

--===============3891400452274857915==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: mei: gsc proxy component
URL   : https://patchwork.freedesktop.org/series/113786/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12713_full -> Patchwork_113786v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/index.html

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_113786v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#2846])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-glk5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#2842]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  
#### Possible fixes ####

  * igt@fbdev@info:
    - {shard-rkl}:        [SKIP][5] ([i915#2582]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-1/igt@fbdev@info.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@fbdev@info.html

  * igt@gem_eio@in-flight-external:
    - {shard-rkl}:        [ABORT][7] ([i915#7811]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-4/igt@gem_eio@in-flight-external.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-4/igt@gem_eio@in-flight-external.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - {shard-rkl}:        [SKIP][9] ([i915#6247]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-2/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - {shard-rkl}:        [FAIL][11] ([i915#2842]) -> [PASS][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - {shard-rkl}:        [SKIP][13] ([fdo#109313]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - {shard-rkl}:        [SKIP][15] ([i915#3281]) -> [PASS][16] +18 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_mmap_wc@set-cache-level:
    - {shard-rkl}:        [SKIP][17] ([i915#1850]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-1/igt@gem_mmap_wc@set-cache-level.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - {shard-rkl}:        [SKIP][19] ([i915#3282]) -> [PASS][20] +4 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gen9_exec_parse@bb-start-param:
    - {shard-rkl}:        [SKIP][21] ([i915#2527]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][23] ([i915#6258]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_pm_dc@dc5-dpms:
    - {shard-rkl}:        [FAIL][25] ([i915#7330]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-5/igt@i915_pm_dc@dc5-dpms.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-1/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rpm@cursor-dpms:
    - {shard-rkl}:        [SKIP][27] ([i915#1849]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-4/igt@i915_pm_rpm@cursor-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-rkl}:        [SKIP][29] ([i915#1397]) -> [PASS][30] +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-2/igt@i915_pm_rpm@dpms-lpsp.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-glk:          [DMESG-FAIL][31] ([i915#5334]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-glk8/igt@i915_selftest@live@gt_heartbeat.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-glk2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][33] ([i915#2346]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][35] ([i915#3955]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - {shard-rkl}:        [SKIP][37] ([i915#1849] / [i915#4098]) -> [PASS][38] +18 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_psr@cursor_blt:
    - {shard-rkl}:        [SKIP][39] ([i915#1072]) -> [PASS][40] +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-2/igt@kms_psr@cursor_blt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_psr@cursor_blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - {shard-rkl}:        [SKIP][41] ([i915#5461]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:
    - {shard-rkl}:        [SKIP][43] ([i915#4070] / [i915#4098]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-2/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html

  * igt@kms_vblank@pipe-b-query-forked:
    - {shard-rkl}:        [SKIP][45] ([i915#1845] / [i915#4098]) -> [PASS][46] +22 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-4/igt@kms_vblank@pipe-b-query-forked.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-forked.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - {shard-rkl}:        [SKIP][47] ([fdo#109289]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-2/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][49] ([i915#2436]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@prime_vgem@coherency-gtt:
    - {shard-rkl}:        [SKIP][51] ([fdo#109295] / [fdo#111656] / [i915#3708]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-3/igt@prime_vgem@coherency-gtt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
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
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6355]: https://gitlab.freedesktop.org/drm/intel/issues/6355
  [i915#6403]: https://gitlab.freedesktop.org/drm/intel/issues/6403
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7330]: https://gitlab.freedesktop.org/drm/intel/issues/7330
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7756]: https://gitlab.freedesktop.org/drm/intel/issues/7756
  [i915#7811]: https://gitlab.freedesktop.org/drm/intel/issues/7811
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975


Build changes
-------------

  * Linux: CI_DRM_12713 -> Patchwork_113786v1

  CI-20190529: 20190529
  CI_DRM_12713: 5180055794b438ce688a6804afb0af08e626ebab @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7153: f47f859f13376958a2bd199423b1f0ff53dddbe0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113786v1: 5180055794b438ce688a6804afb0af08e626ebab @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/index.html

--===============3891400452274857915==
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
<tr><td><b>Series:</b></td><td>mei: gsc proxy component</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113786/">https://patchwork.freedesktop.org/series/113786/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12713_full -&gt; Patchwork_113786v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/index.html</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113786v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-glk5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@fbdev@info.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-external:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-4/igt@gem_eio@in-flight-external.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7811">i915#7811</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-4/igt@gem_eio@in-flight-external.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6247">i915#6247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-2/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109313">fdo#109313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">PASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-1/igt@gem_mmap_wc@set-cache-level.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1850">i915#1850</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#6258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-5/igt@i915_pm_dc@dc5-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7330">i915#7330</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-1/igt@i915_pm_dc@dc5-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-4/igt@i915_pm_rpm@cursor-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-2/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-glk8/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-glk2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html">PASS</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-2/igt@kms_psr@cursor_blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_psr@cursor_blt.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5461">i915#5461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-2/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-forked:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-4/igt@kms_vblank@pipe-b-query-forked.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-forked.html">PASS</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-2/igt@perf@gen12-oa-tlb-invalidate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12713/shard-rkl-3/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111656">fdo#111656</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113786v1/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12713 -&gt; Patchwork_113786v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12713: 5180055794b438ce688a6804afb0af08e626ebab @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7153: f47f859f13376958a2bd199423b1f0ff53dddbe0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113786v1: 5180055794b438ce688a6804afb0af08e626ebab @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3891400452274857915==--
