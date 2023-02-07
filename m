Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D77768CEE2
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 06:26:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F8310E2E2;
	Tue,  7 Feb 2023 05:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF6DE10E2E2;
 Tue,  7 Feb 2023 05:26:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D60EAAADD1;
 Tue,  7 Feb 2023 05:26:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6456823312960636439=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Tue, 07 Feb 2023 05:26:28 -0000
Message-ID: <167574758883.13140.13898556003162604443@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230206183236.109908-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230206183236.109908-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pcode=3A_Give_the_punit_time_to_settle_before_fatally_fai?=
 =?utf-8?q?ling?=
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

--===============6456823312960636439==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pcode: Give the punit time to settle before fatally failing
URL   : https://patchwork.freedesktop.org/series/113717/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12704_full -> Patchwork_113717v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/index.html

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113717v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_softpin@noreloc-s3:
    - {shard-tglu-9}:     NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-tglu-9/igt@gem_softpin@noreloc-s3.html

  
Known issues
------------

  Here are the changes found in Patchwork_113717v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [PASS][2] -> [FAIL][3] ([i915#2346])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-glk:          NOTRUN -> [SKIP][4] ([fdo#109271]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk6/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2122]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  
#### Possible fixes ####

  * igt@fbdev@info:
    - {shard-rkl}:        [SKIP][7] ([i915#2582]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@fbdev@info.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@fbdev@info.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - {shard-rkl}:        [SKIP][9] ([i915#3281]) -> [PASS][10] +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-rkl}:        [FAIL][11] ([i915#6268]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@fairslice:
    - {shard-rkl}:        [SKIP][13] ([i915#6259]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-2/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][15] ([i915#2846]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk5/igt@gem_exec_fair@basic-deadline.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-glk:          [FAIL][17] ([i915#2842]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk8/igt@gem_exec_fair@basic-none@vecs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk8/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - {shard-tglu}:       [FAIL][19] ([i915#2842]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-tglu-2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-tglu-3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@semaphore-power:
    - {shard-rkl}:        [SKIP][21] ([i915#7276]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_partial_pwrite_pread@reads:
    - {shard-rkl}:        [SKIP][23] ([i915#3282]) -> [PASS][24] +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_softpin@noreloc-s3:
    - {shard-rkl}:        [ABORT][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-4/igt@gem_softpin@noreloc-s3.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@shadow-peek:
    - {shard-rkl}:        [SKIP][27] ([i915#2527]) -> [PASS][28] +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-dg1}:        [FAIL][29] ([i915#3591]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - {shard-rkl}:        [SKIP][31] ([i915#1397]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html
    - {shard-dg1}:        [SKIP][33] ([i915#1397]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@pm-tiling:
    - {shard-rkl}:        [SKIP][35] ([fdo#109308]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@i915_pm_rpm@pm-tiling.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - {shard-rkl}:        [SKIP][37] ([i915#1849] / [i915#4098]) -> [PASS][38] +8 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_psr@cursor_mmap_gtt:
    - {shard-rkl}:        [SKIP][39] ([i915#1072]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@kms_psr@cursor_mmap_gtt.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - {shard-rkl}:        [SKIP][41] ([i915#5461]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:
    - {shard-rkl}:        [SKIP][43] ([i915#4070] / [i915#4098]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html

  * igt@kms_vblank@pipe-b-ts-continuation-idle:
    - {shard-rkl}:        [SKIP][45] ([i915#1845] / [i915#4098]) -> [PASS][46] +17 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@kms_vblank@pipe-b-ts-continuation-idle.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-idle.html

  * igt@perf@stress-open-close:
    - shard-glk:          [ABORT][47] ([i915#5213]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk7/igt@perf@stress-open-close.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk6/igt@perf@stress-open-close.html

  * igt@perf_pmu@busy-accuracy-2@vecs0:
    - shard-glk:          [FAIL][49] -> [PASS][50] +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk1/igt@perf_pmu@busy-accuracy-2@vecs0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk4/igt@perf_pmu@busy-accuracy-2@vecs0.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-glk:          [TIMEOUT][51] -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk1/igt@perf_pmu@cpu-hotplug.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk4/igt@perf_pmu@cpu-hotplug.html

  * igt@testdisplay:
    - {shard-rkl}:        [SKIP][53] ([i915#4098]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@testdisplay.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@testdisplay.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
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
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
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
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957


Build changes
-------------

  * Linux: CI_DRM_12704 -> Patchwork_113717v1

  CI-20190529: 20190529
  CI_DRM_12704: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7152: 790b81207a0a6705213ec5ea645bc5e223b2ce1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113717v1: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/index.html

--===============6456823312960636439==
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
<tr><td><b>Series:</b></td><td>drm/i915/pcode: Give the punit time to settle before fatally failing</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113717/">https://patchwork.freedesktop.org/series/113717/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12704_full -&gt; Patchwork_113717v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/index.html</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113717v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_softpin@noreloc-s3:<ul>
<li>{shard-tglu-9}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-tglu-9/igt@gem_softpin@noreloc-s3.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113717v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6259">i915#6259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-2/igt@gem_exec_balancer@fairslice.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk8/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk8/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-tglu-2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-tglu-3/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7276">i915#7276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-4/igt@gem_softpin@noreloc-s3.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></p>
</li>
<li>
<p>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-dg1-14/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@i915_pm_rpm@pm-tiling.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@kms_psr@cursor_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5461">i915#5461</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-1/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4070">i915#4070</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@kms_vblank@pipe-b-ts-continuation-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@kms_vblank@pipe-b-ts-continuation-idle.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk7/igt@perf@stress-open-close.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk6/igt@perf@stress-open-close.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-2@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk1/igt@perf_pmu@busy-accuracy-2@vecs0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk4/igt@perf_pmu@busy-accuracy-2@vecs0.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-glk1/igt@perf_pmu@cpu-hotplug.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-glk4/igt@perf_pmu@cpu-hotplug.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/shard-rkl-3/igt@testdisplay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113717v1/shard-rkl-6/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12704 -&gt; Patchwork_113717v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12704: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7152: 790b81207a0a6705213ec5ea645bc5e223b2ce1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113717v1: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6456823312960636439==--
