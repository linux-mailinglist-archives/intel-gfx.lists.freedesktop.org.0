Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FF114A566
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 14:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288816E4EC;
	Mon, 27 Jan 2020 13:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6123A6E4EC;
 Mon, 27 Jan 2020 13:49:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58072A011A;
 Mon, 27 Jan 2020 13:49:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 27 Jan 2020 13:49:24 -0000
Message-ID: <158013296435.9687.17002006015610306919@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200124200231.10517-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200124200231.10517-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/8=5D_drm/edid=3A_Check_the_number_of_det?=
 =?utf-8?q?ailed_timing_descriptors_in_the_CEA_ext_block?=
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

Series: series starting with [1/8] drm/edid: Check the number of detailed timing descriptors in the CEA ext block
URL   : https://patchwork.freedesktop.org/series/72550/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7811_full -> Patchwork_16262_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16262_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16262_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16262_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_partial_pwrite_pread@reads:
    - shard-hsw:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-hsw7/igt@gem_partial_pwrite_pread@reads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-hsw1/igt@gem_partial_pwrite_pread@reads.html

  
Known issues
------------

  Here are the changes found in Patchwork_16262_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb2/igt@gem_ctx_isolation@vcs1-none.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb6/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110841])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb2/igt@gem_exec_store@cachelines-vcs1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb7/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_wait@write-busy-vcs0:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#109]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl4/igt@gem_wait@write-busy-vcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-skl6/igt@gem_wait@write-busy-vcs0.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#198])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl2/igt@i915_pm_dc@dc5-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-skl1/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#413])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb7/igt@i915_pm_rps@waitboost.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb1/igt@i915_pm_rps@waitboost.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#34])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-glk2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-glk2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#79])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([fdo#108145])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#31])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-apl3/igt@kms_setmode@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-apl7/igt@kms_setmode@basic.html
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#31])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-kbl2/igt@kms_setmode@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-kbl6/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([fdo#103665])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109276]) +15 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb3/igt@prime_busy@hang-bsd2.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][37] -> [FAIL][38] ([i915#831])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-hsw2/igt@prime_mmap_coherency@ioctl-errors.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-hsw7/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +10 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb8/igt@gem_busy@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][41] ([fdo#112146]) -> [PASS][42] +6 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb2/igt@gem_exec_async@concurrent-writes-bsd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb6/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb6/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][47] ([i915#454]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-negative:
    - shard-skl:          [DMESG-WARN][49] ([i915#109]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl4/igt@kms_color@pipe-a-ctm-negative.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-skl6/igt@kms_color@pipe-a-ctm-negative.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-hsw:          [INCOMPLETE][53] ([i915#61]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-hsw7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
    - shard-skl:          [FAIL][55] ([i915#49]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][57] ([i915#69]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][59] ([fdo#108145]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_prime@basic-crc:
    - shard-skl:          [FAIL][61] ([i915#1031]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-skl10/igt@kms_prime@basic-crc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-skl2/igt@kms_prime@basic-crc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][63] ([i915#173]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb1/igt@kms_psr@no_drrs.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb6/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][65] ([fdo#109441]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][67] ([fdo#109276]) -> [PASS][68] +14 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][69] ([IGT#28]) -> [SKIP][70] ([fdo#109276] / [fdo#112080])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][71] ([i915#694]) -> [FAIL][72] ([i915#818]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7811/shard-hsw5/igt@gem_tiled_blits@normal.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/shard-hsw2/igt@gem_tiled_blits@normal.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1031]: https://gitlab.freedesktop.org/drm/intel/issues/1031
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7811 -> Patchwork_16262

  CI-20190529: 20190529
  CI_DRM_7811: f528982f5c837f075e82ca544df010ca5183064a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5384: fd6896567f7d612c76207970376d4f1e634ded55 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16262: 120d72ced4d75ab3be121475f9e90d762ec99d12 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16262/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
