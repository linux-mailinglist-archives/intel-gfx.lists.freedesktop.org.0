Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7601743EE
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Feb 2020 01:49:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1176E144;
	Sat, 29 Feb 2020 00:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75F936E144;
 Sat, 29 Feb 2020 00:49:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6EA07A363D;
 Sat, 29 Feb 2020 00:49:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Sat, 29 Feb 2020 00:49:30 -0000
Message-ID: <158293737042.19636.17937708210825377300@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200227161253.15741-1-jani.nikula@intel.com>
In-Reply-To: <20200227161253.15741-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/crc=3A_move_pipe=5Fcrc_from_drm=5Fi915=5Fprivate_to_intel?=
 =?utf-8?q?=5Fcrtc?=
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

Series: drm/i915/crc: move pipe_crc from drm_i915_private to intel_crtc
URL   : https://patchwork.freedesktop.org/series/74031/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8020_full -> Patchwork_16738_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16738_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@default:
    - shard-glk:          [PASS][1] -> [FAIL][2] ([i915#679])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-glk4/igt@gem_ctx_persistence@legacy-engines-mixed-process@default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-glk2/igt@gem_ctx_persistence@legacy-engines-mixed-process@default.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-glk:          [PASS][3] -> [INCOMPLETE][4] ([i915#1239] / [i915#58] / [k.org#198133])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-glk4/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-glk2/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_ctx_shared@exec-shared-gtt-bsd1:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#616])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-kbl1/igt@gem_ctx_shared@exec-shared-gtt-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-kbl2/igt@gem_ctx_shared@exec-shared-gtt-bsd1.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#110841])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb4/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@deep-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb8/igt@gem_exec_schedule@deep-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb2/igt@gem_exec_schedule@deep-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] / [i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb3/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-blt:
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14] ([i915#58] / [k.org#198133])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-glk2/igt@gem_exec_schedule@preempt-queue-blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-glk3/igt@gem_exec_schedule@preempt-queue-blt.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#52] / [i915#54])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-skl2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][17] -> [FAIL][18] ([i915#79])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([fdo#108145] / [i915#265])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#109441]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#31])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-kbl7/igt@kms_setmode@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-kbl4/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-accuracy-2-vcs1:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#112080]) +12 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb2/igt@perf_pmu@busy-accuracy-2-vcs1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb5/igt@perf_pmu@busy-accuracy-2-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109276]) +25 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb2/igt@prime_vgem@fence-wait-bsd2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][33] ([fdo#110854]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb2/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [SKIP][35] ([fdo#109276] / [i915#677]) -> [PASS][36] +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb4/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [SKIP][37] ([i915#677]) -> [PASS][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb3/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [SKIP][39] ([fdo#112146]) -> [PASS][40] +6 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb3/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][41] ([fdo#109276]) -> [PASS][42] +9 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb5/igt@gem_exec_schedule@promotion-bsd1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_pwrite@huge-cpu-fbr:
    - shard-hsw:          [TIMEOUT][43] -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-hsw5/igt@gem_pwrite@huge-cpu-fbr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-hsw7/igt@gem_pwrite@huge-cpu-fbr.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-apl4/igt@gem_softpin@noreloc-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][47] ([i915#180]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [INCOMPLETE][49] ([i915#58] / [k.org#198133]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][51] ([i915#413]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb2/igt@i915_pm_rps@reset.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb2/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][53] ([i915#413]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-tglb2/igt@i915_pm_rps@waitboost.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-tglb3/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@gt_lrc:
    - shard-tglb:         [DMESG-FAIL][55] ([i915#1233]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-tglb8/igt@i915_selftest@live@gt_lrc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-tglb5/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-snb:          [SKIP][57] ([fdo#109271]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-snb2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-snb6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][59] ([IGT#5]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-glk:          [FAIL][61] ([i915#49]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][63] ([i915#1188]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][65] ([fdo#108145] / [i915#265]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [FAIL][67] ([i915#173]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb1/igt@kms_psr@no_drrs.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb3/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][71] ([fdo#112080]) -> [PASS][72] +9 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb4/igt@perf_pmu@busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][73] ([IGT#28]) -> [SKIP][74] ([fdo#112080])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][75] ([i915#454]) -> [SKIP][76] ([i915#468])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@sysfs-read:
    - shard-snb:          [SKIP][77] ([fdo#109271]) -> [INCOMPLETE][78] ([i915#82])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8020/shard-snb2/igt@i915_pm_rpm@sysfs-read.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/shard-snb2/igt@i915_pm_rpm@sysfs-read.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1233]: https://gitlab.freedesktop.org/drm/intel/issues/1233
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8020 -> Patchwork_16738

  CI-20190529: 20190529
  CI_DRM_8020: c5e13e7cee422111f70ff7bb5b933bd2ca8ff9e7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5473: d22b3507ff2678a05d69d47c0ddf6f0e72ee7ffd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16738: 4a7fff1e242643bfab179773b16edfa63f2c5c3f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16738/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
