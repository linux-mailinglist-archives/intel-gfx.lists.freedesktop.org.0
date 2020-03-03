Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 592FE1770F2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 09:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E49366E9DA;
	Tue,  3 Mar 2020 08:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 06F9A6E9D8;
 Tue,  3 Mar 2020 08:20:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E82D5A0088;
 Tue,  3 Mar 2020 08:20:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 03 Mar 2020 08:20:02 -0000
Message-ID: <158322360292.15377.13621421872795431891@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Lock_gmbus/aux_mutexes_while_changing_cdclk_=28rev2=29?=
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

Series: drm/i915: Lock gmbus/aux mutexes while changing cdclk (rev2)
URL   : https://patchwork.freedesktop.org/series/74039/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8046_full -> Patchwork_16785_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16785_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-shared-gtt-bsd:
    - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#616])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-apl8/igt@gem_ctx_shared@exec-shared-gtt-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-apl4/igt@gem_ctx_shared@exec-shared-gtt-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#677])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112146]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb7/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#1318])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-tglb6/igt@gem_exec_whisper@basic-contexts-forked.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-tglb1/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#413])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb2/igt@i915_pm_rps@waitboost.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-dpms:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#54])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-dpms.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#72])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][19] -> [FAIL][20] ([fdo#108145]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([fdo#108145] / [i915#265])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#899])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#112080]) +15 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb3/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +24 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [SKIP][31] ([fdo#112080]) -> [PASS][32] +10 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb7/igt@gem_busy@extended-parallel-vcs1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][33] ([fdo#112146]) -> [PASS][34] +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb3/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [SKIP][35] ([fdo#109276] / [i915#677]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb3/igt@gem_exec_schedule@implicit-both-bsd2.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [SKIP][37] ([fdo#109276]) -> [PASS][38] +12 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb3/igt@gem_exec_schedule@independent-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][39] ([i915#677]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-apl:          [INCOMPLETE][41] ([fdo#103927]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-apl4/igt@gem_exec_whisper@basic-queues-forked.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-apl3/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-tglb:         [FAIL][43] ([i915#644]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-tglb6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-tglb5/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-kbl:          [FAIL][45] ([i915#644]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-kbl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-kbl6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-iclb:         [FAIL][49] ([IGT#5]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][53] ([i915#79]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-snb:          [SKIP][55] ([fdo#109271]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-snb6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-tglb:         [SKIP][57] ([i915#668]) -> [PASS][58] +6 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][59] ([i915#1188]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][61] ([fdo#108145] / [i915#265]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][63] ([fdo#109441]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb8/igt@kms_psr@psr2_cursor_plane_move.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@perf@oa-exponents:
    - shard-glk:          [FAIL][65] ([i915#84]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-glk5/igt@perf@oa-exponents.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-glk6/igt@perf@oa-exponents.html

  * {igt@perf@stress-open-close}:
    - shard-skl:          [INCOMPLETE][67] ([i915#1356]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-skl7/igt@perf@stress-open-close.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-skl1/igt@perf@stress-open-close.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [FAIL][69] ([i915#454]) -> [SKIP][70] ([i915#468])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][71] ([i915#1226]) -> [SKIP][72] ([fdo#109349])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-iclb6/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@runner@aborted:
    - shard-glk:          ([FAIL][73], [FAIL][74]) ([i915#1356] / [k.org#202321]) -> [FAIL][75] ([k.org#202321])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-glk9/igt@runner@aborted.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8046/shard-glk1/igt@runner@aborted.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/shard-glk5/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1356]: https://gitlab.freedesktop.org/drm/intel/issues/1356
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8046 -> Patchwork_16785

  CI-20190529: 20190529
  CI_DRM_8046: be13ba469987146d8e75f7c07103c0a087a3b520 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5483: 1707153df224ffb6333c6c660a792b7f334eb3d3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16785: 77468e62647ededaf33f20f94aae067c1ec3e2c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16785/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
