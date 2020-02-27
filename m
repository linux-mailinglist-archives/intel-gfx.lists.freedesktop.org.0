Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E00172B6A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C5C6ED6A;
	Thu, 27 Feb 2020 22:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB53E6ED6A;
 Thu, 27 Feb 2020 22:35:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5EDCA00FD;
 Thu, 27 Feb 2020 22:35:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Thu, 27 Feb 2020 22:35:17 -0000
Message-ID: <158284291778.29659.2851364246643612895@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226185657.26445-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20200226185657.26445-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ggtt=3A_do_not_set_bits_1-11_in_gen12_ptes?=
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

Series: drm/i915/ggtt: do not set bits 1-11 in gen12 ptes
URL   : https://patchwork.freedesktop.org/series/73969/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8010_full -> Patchwork_16724_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16724_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#110841])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#112080]) +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@gem_exec_parallel@vcs1-fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [i915#677]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb6/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +9 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb7/igt@gem_exec_schedule@in-order-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][11] -> [FAIL][12] ([i915#413])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@i915_pm_rps@waitboost.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb5/igt@i915_pm_rps@waitboost.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][13] -> [INCOMPLETE][14] ([i915#221])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible.html
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-tglb:         [PASS][19] -> [SKIP][20] ([i915#668]) +9 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-tglb3/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#1188])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl5/igt@kms_hdr@bpc-switch.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#173])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb8/igt@kms_psr@no_drrs.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109441]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb7/igt@kms_psr@psr2_primary_page_flip.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109276]) +19 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][31] ([fdo#109276] / [i915#677]) -> [PASS][32] +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][33] ([i915#677]) -> [PASS][34] +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][35] ([fdo#112146]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd2:
    - shard-iclb:         [SKIP][37] ([fdo#109276]) -> [PASS][38] +23 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd2.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd2.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-iclb:         [INCOMPLETE][39] ([i915#1120]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb6/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [FAIL][41] ([i915#644]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][43] ([i915#180]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-kbl2/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-tglb:         [FAIL][45] ([i915#488]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb2/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-tglb2/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][47] ([i915#79]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-apl:          [FAIL][49] ([i915#79]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-apl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [FAIL][51] ([i915#79]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [INCOMPLETE][53] ([i915#221]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl8/igt@kms_flip@flip-vs-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-skl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][59] ([i915#899]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][61] ([fdo#109441]) -> [PASS][62] +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][63] ([fdo#112080]) -> [PASS][64] +11 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb8/igt@perf_pmu@init-busy-vcs1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb1/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][65] ([IGT#28]) -> [SKIP][66] ([fdo#112080])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][67] ([fdo#112080]) -> [FAIL][68] ([IGT#28])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][69] ([i915#454]) -> [SKIP][70] ([i915#668])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-tglb3/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][71] ([i915#1319] / [i915#727]) -> [TIMEOUT][72] ([i915#1319]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl2/igt@kms_content_protection@atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-kbl2/igt@kms_content_protection@atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][73] ([i915#1226]) -> [SKIP][74] ([fdo#109349])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][75] ([i915#79]) -> [FAIL][76] ([i915#46])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1120]: https://gitlab.freedesktop.org/drm/intel/issues/1120
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#488]: https://gitlab.freedesktop.org/drm/intel/issues/488
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8010 -> Patchwork_16724

  CI-20190529: 20190529
  CI_DRM_8010: 97bbec4d80df1c6573fc7063ad830e8beefe07c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16724: 343845b854d1f657f83be73ba539ee10429ca3ab @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16724/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
