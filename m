Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB16B172CFE
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 01:22:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 411B86ED94;
	Fri, 28 Feb 2020 00:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D72746ED94;
 Fri, 28 Feb 2020 00:22:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF6BFA011B;
 Fri, 28 Feb 2020 00:22:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 28 Feb 2020 00:22:30 -0000
Message-ID: <158284935084.7475.2873165741261439268@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200226203455.23032-1-imre.deak@intel.com>
In-Reply-To: <20200226203455.23032-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_DPLL_output/refclock_tracking?=
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

Series: drm/i915: Clean up DPLL output/refclock tracking
URL   : https://patchwork.freedesktop.org/series/73977/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8010_full -> Patchwork_16725_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16725_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16725_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16725_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_3d:
    - shard-iclb:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb3/igt@kms_3d.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb8/igt@kms_3d.html

  * igt@kms_hdmi_inject@inject-4k:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@kms_hdmi_inject@inject-4k.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb7/igt@kms_hdmi_inject@inject-4k.html

  * igt@runner@aborted:
    - shard-tglb:         NOTRUN -> ([FAIL][5], [FAIL][6], [FAIL][7])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-tglb1/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-tglb5/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-tglb2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_16725_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-iclb:         [PASS][8] -> [FAIL][9] ([i915#679])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb5/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-iclb:         [PASS][10] -> [INCOMPLETE][11] ([i915#1239])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb5/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_schedule@implicit-both-bsd:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([i915#677])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb7/igt@gem_exec_schedule@implicit-both-bsd.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb4/igt@gem_exec_schedule@implicit-both-bsd.html

  * igt@gem_exec_schedule@implicit-both-bsd2:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#109276] / [i915#677]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@gem_exec_schedule@implicit-both-bsd2.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +6 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#118] / [i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk3/igt@gem_exec_whisper@basic-fds-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-glk7/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#716])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-skl5/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#413])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@i915_pm_rps@waitboost.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb4/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][24] -> [DMESG-WARN][25] ([i915#180]) +3 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#407])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk7/igt@kms_flip@2x-modeset-vs-vblank-race.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-glk1/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#49])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-glk2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdmi_inject@inject-4k:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([i915#449]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-tglb8/igt@kms_hdmi_inject@inject-4k.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-tglb1/igt@kms_hdmi_inject@inject-4k.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#1188]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#899])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-double-start-vcs1:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#112080]) +9 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@perf_pmu@busy-double-start-vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb8/igt@perf_pmu@busy-double-start-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][44] -> [SKIP][45] ([fdo#109276]) +18 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb3/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][46] ([fdo#112080]) -> [PASS][47] +11 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb7/igt@gem_busy@busy-vcs1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][48] ([fdo#110854]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb1/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][50] ([fdo#109276] / [i915#677]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][52] ([i915#677]) -> [PASS][53] +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][54] ([fdo#112146]) -> [PASS][55] +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-iclb:         [INCOMPLETE][56] ([i915#1120]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb3/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][58] ([i915#644]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-skl:          [FAIL][60] ([i915#644]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-skl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-iclb:         [FAIL][62] ([i915#644]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl6/igt@i915_suspend@sysfs-reader.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-kbl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][66] ([i915#79]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-apl:          [FAIL][68] ([i915#79]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-glk:          [FAIL][70] ([i915#79]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][72] ([i915#1188]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][74] ([fdo#108145]) -> [PASS][75] +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][76] ([fdo#108145] / [i915#265]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][78] ([fdo#109441]) -> [PASS][79] +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][80] ([fdo#109276]) -> [PASS][81] +19 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb6/igt@prime_vgem@fence-wait-bsd2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][82] ([IGT#28]) -> [SKIP][83] ([fdo#112080])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          [TIMEOUT][84] ([i915#1319] / [i915#727]) -> [TIMEOUT][85] ([i915#1319]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-kbl2/igt@kms_content_protection@atomic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-kbl4/igt@kms_content_protection@atomic.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][86] ([i915#1226]) -> [SKIP][87] ([fdo#109349])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8010/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1120]: https://gitlab.freedesktop.org/drm/intel/issues/1120
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1333]: https://gitlab.freedesktop.org/drm/intel/issues/1333
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#449]: https://gitlab.freedesktop.org/drm/intel/issues/449
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#727]: https://gitlab.freedesktop.org/drm/intel/issues/727
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8010 -> Patchwork_16725

  CI-20190529: 20190529
  CI_DRM_8010: 97bbec4d80df1c6573fc7063ad830e8beefe07c8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5471: 668afe52887a164ee6a12fd1c898bc1c9086cf3e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16725: a5e019011c6b18582d2c4722209a2d8fd5b0ed38 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16725/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
