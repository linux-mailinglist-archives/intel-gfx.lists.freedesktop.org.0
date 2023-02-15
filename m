Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2C96974B1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 04:11:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9149410EA08;
	Wed, 15 Feb 2023 03:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEB1C10EA08;
 Wed, 15 Feb 2023 03:11:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C52FDAADDA;
 Wed, 15 Feb 2023 03:11:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5032253784316668211=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Wed, 15 Feb 2023 03:11:37 -0000
Message-ID: <167643069779.30603.12638100178220130023@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
In-Reply-To: <20230207074416.3209722-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRW5h?=
 =?utf-8?q?ble_YCbCr420_for_VDSC_=28rev3=29?=
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

--===============5032253784316668211==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable YCbCr420 for VDSC (rev3)
URL   : https://patchwork.freedesktop.org/series/113729/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12738_full -> Patchwork_113729v3_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/index.html

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_113729v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][1] -> [ABORT][2] ([i915#5566])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-glk1/igt@gen9_exec_parse@allowed-single.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-glk5/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][3] ([fdo#109271]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [PASS][4] -> [FAIL][5] ([i915#79])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk:          NOTRUN -> [SKIP][6] ([fdo#109271]) +4 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-glk9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][7] ([fdo#109271]) +16 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-snb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@virtual-idle:
    - {shard-rkl}:        [FAIL][8] ([i915#7742]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - {shard-rkl}:        [SKIP][10] ([i915#6252]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-3/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][12] ([i915#2842]) -> [PASS][13] +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [FAIL][14] ([i915#2842]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - {shard-rkl}:        [SKIP][16] ([i915#3281]) -> [PASS][17] +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - {shard-rkl}:        [SKIP][18] ([i915#3282]) -> [PASS][19] +4 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [ABORT][20] ([i915#5566]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-apl3/igt@gen9_exec_parse@allowed-single.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-apl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - {shard-rkl}:        [SKIP][22] ([i915#2527]) -> [PASS][23] +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-4/igt@gen9_exec_parse@batch-invalid-length.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_hangman@gt-engine-error@bcs0:
    - {shard-rkl}:        [SKIP][24] ([i915#6258]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [FAIL][26] ([i915#6537]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-apl6/igt@i915_pm_rps@engine-order.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-apl1/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_sseu@full-enable:
    - {shard-rkl}:        [SKIP][28] ([i915#4387]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-4/igt@i915_pm_sseu@full-enable.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@i915_pm_sseu@full-enable.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - {shard-tglu}:       [SKIP][30] ([i915#1845] / [i915#7651]) -> [PASS][31] +11 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-tglu-6/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-tglu-2/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [FAIL][32] ([i915#79]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
    - {shard-tglu}:       [SKIP][34] ([i915#1849]) -> [PASS][35] +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - {shard-tglu}:       [SKIP][36] ([i915#1849] / [i915#3558]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-tglu-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-tglu-2/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - {shard-rkl}:        [SKIP][38] ([fdo#109289]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-3/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@mi-rpc:
    - {shard-rkl}:        [SKIP][40] ([i915#2434]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-4/igt@perf@mi-rpc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@perf@mi-rpc.html

  * igt@perf@polling-small-buf:
    - {shard-tglu}:       [FAIL][42] ([i915#1722]) -> [PASS][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-tglu-6/igt@perf@polling-small-buf.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-tglu-2/igt@perf@polling-small-buf.html

  * igt@prime_vgem@basic-read:
    - {shard-rkl}:        [SKIP][44] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-2/igt@prime_vgem@basic-read.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@prime_vgem@basic-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
  [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8150]: https://gitlab.freedesktop.org/drm/intel/issues/8150


Build changes
-------------

  * Linux: CI_DRM_12738 -> Patchwork_113729v3

  CI-20190529: 20190529
  CI_DRM_12738: aad037693df25f8c83ba6cef9facc8e47c7937c3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113729v3: aad037693df25f8c83ba6cef9facc8e47c7937c3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/index.html

--===============5032253784316668211==
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
<tr><td><b>Series:</b></td><td>Enable YCbCr420 for VDSC (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113729/">https://patchwork.freedesktop.org/series/113729/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12738_full -&gt; Patchwork_113729v3_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/index.html</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113729v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-glk1/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-glk5/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-glk9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-snb1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-3/igt@gem_ctx_persistence@engines-hang@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-apl3/igt@gen9_exec_parse@allowed-single.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-apl7/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-4/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6258">i915#6258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-2/igt@i915_hangman@gt-engine-error@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-apl6/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-apl1/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-4/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-tglu-6/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7651">i915#7651</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-tglu-2/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-tglu-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3558">i915#3558</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-tglu-2/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-5/igt@perf@gen12-oa-tlb-invalidate.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-3/igt@perf@gen12-oa-tlb-invalidate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-4/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#2434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@perf@mi-rpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-tglu-6/igt@perf@polling-small-buf.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-tglu-2/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12738/shard-rkl-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113729v3/shard-rkl-5/igt@prime_vgem@basic-read.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12738 -&gt; Patchwork_113729v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12738: aad037693df25f8c83ba6cef9facc8e47c7937c3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113729v3: aad037693df25f8c83ba6cef9facc8e47c7937c3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5032253784316668211==--
