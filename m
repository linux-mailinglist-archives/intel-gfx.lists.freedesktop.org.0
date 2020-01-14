Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FAB13B0CF
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 18:26:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB5C8973E;
	Tue, 14 Jan 2020 17:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 53C0D8973E;
 Tue, 14 Jan 2020 17:26:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4BC19A47E0;
 Tue, 14 Jan 2020 17:26:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Tue, 14 Jan 2020 17:26:41 -0000
Message-ID: <157902280130.24907.15654756158763992216@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200109220547.23817-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Bump_up_CDCLK_to_eliminate_underruns_on_TGL_=28rev4=29?=
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

Series: drm/i915: Bump up CDCLK to eliminate underruns on TGL (rev4)
URL   : https://patchwork.freedesktop.org/series/71760/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7721_full -> Patchwork_16060_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16060_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16060_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16060_full:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-hsw2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16060_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([fdo#112080]) +6 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-skl:          [PASS][4] -> [FAIL][5] ([i915#679])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl7/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-skl9/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#109276]) +14 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#112146]) +6 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [PASS][12] -> [TIMEOUT][13] ([fdo#112271] / [i915#530])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-skl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#454])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][18] -> [DMESG-WARN][19] ([i915#109])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [PASS][20] -> [FAIL][21] ([fdo#103375])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][22] -> [DMESG-WARN][23] ([i915#180]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][24] -> [FAIL][25] ([fdo#108145]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-x:
    - shard-snb:          [PASS][26] -> [SKIP][27] ([fdo#109271]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb5/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-snb1/igt@kms_plane_multiple@atomic-pipe-a-tiling-x.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#173])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb7/igt@kms_psr@no_drrs.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][30] -> [SKIP][31] ([fdo#109441])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][32] ([i915#180]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-apl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][34] ([fdo#109276] / [fdo#112080]) -> [PASS][35] +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_eio@in-flight-1us:
    - shard-snb:          [FAIL][36] ([i915#490]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb4/igt@gem_eio@in-flight-1us.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-snb5/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][38] ([fdo#112080]) -> [PASS][39] +9 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][40] ([i915#677]) -> [PASS][41] +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][42] ([fdo#112146]) -> [PASS][43] +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][44] ([fdo#112271] / [i915#530]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][46] ([i915#520]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][48] ([i915#644]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [DMESG-WARN][50] ([i915#716]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-kbl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-apl:          [FAIL][52] ([i915#39]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@i915_pm_rps@min-max-config-loaded.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-apl7/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][54] ([i915#109]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl2/igt@kms_color@pipe-b-ctm-green-to-red.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-skl5/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][56] ([i915#180]) -> [PASS][57] +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-iclb:         [DMESG-WARN][58] ([fdo#111764]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@kms_flip@flip-vs-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][60] ([fdo#109441]) -> [PASS][61] +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][62] ([fdo#109276]) -> [PASS][63] +16 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][64] ([i915#82]) -> [DMESG-WARN][65] ([i915#444])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb6/igt@gem_eio@kms.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-snb4/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][66] ([i915#818]) -> [INCOMPLETE][67] ([i915#61])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-hsw2/igt@gem_tiled_blits@interruptible.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][68] ([i915#694]) -> [FAIL][69] ([i915#818])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-hsw2/igt@gem_tiled_blits@normal.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][70], [FAIL][71]) ([i915#716] / [i915#974]) -> [FAIL][72] ([i915#974])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@runner@aborted.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@runner@aborted.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-kbl3/igt@runner@aborted.html
    - shard-snb:          [FAIL][73] ([i915#974]) -> ([FAIL][74], [FAIL][75]) ([i915#436] / [i915#974])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb1/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-snb4/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/shard-snb1/igt@runner@aborted.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7721 -> Patchwork_16060

  CI-20190529: 20190529
  CI_DRM_7721: 3a2436c56fcf2d133d701a112eb1e0dfce0b846d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16060: de1f33b10674921be4523e07b9f2b2c97366a261 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16060/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
