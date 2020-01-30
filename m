Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E65F14E2C8
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 19:56:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 394AD6FA1D;
	Thu, 30 Jan 2020 18:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 908186FA1D;
 Thu, 30 Jan 2020 18:56:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87F17A0009;
 Thu, 30 Jan 2020 18:56:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 30 Jan 2020 18:56:38 -0000
Message-ID: <158041059852.21033.13471067584544135068@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128163803.5954-1-jani.nikula@intel.com>
In-Reply-To: <20200128163803.5954-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_move_update_pipe_code_to_hdcp?=
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

Series: drm/i915/hdcp: move update pipe code to hdcp
URL   : https://patchwork.freedesktop.org/series/72679/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7833_full -> Patchwork_16301_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16301_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16301_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16301_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ringfill@basic-default-hang:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb5/igt@gem_ringfill@basic-default-hang.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb7/igt@gem_ringfill@basic-default-hang.html

  
Known issues
------------

  Here are the changes found in Patchwork_16301_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_caching@read-writes:
    - shard-hsw:          [PASS][3] -> [FAIL][4] ([i915#694])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw7/igt@gem_caching@read-writes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-hsw8/igt@gem_caching@read-writes.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-persistence:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@gem_ctx_persistence@vcs1-persistence.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb3/igt@gem_ctx_persistence@vcs1-persistence.html

  * igt@gem_ctx_shared@exec-shared-gtt-bsd:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#616])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb7/igt@gem_ctx_shared@exec-shared-gtt-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-tglb5/igt@gem_ctx_shared@exec-shared-gtt-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#110854])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +9 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb5/igt@gem_exec_schedule@wide-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb2/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_largeobject:
    - shard-glk:          [PASS][19] -> [DMESG-WARN][20] ([i915#109])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-glk9/igt@gem_largeobject.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-glk4/igt@gem_largeobject.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#520])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl10/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl9/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#644])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][27] -> [FAIL][28] ([i915#818])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw8/igt@gem_tiled_blits@interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rps@reset:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#39])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl9/igt@i915_pm_rps@reset.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl7/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [PASS][31] -> [DMESG-WARN][32] ([i915#109]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl6/igt@kms_color@pipe-b-ctm-0-75.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#221])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#69])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109642] / [fdo#111068])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb4/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#173])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@kms_psr@no_drrs.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb8/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][47] -> [DMESG-WARN][48] ([i915#180]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-start-vcs1:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#112080]) +8 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@perf_pmu@busy-start-vcs1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb8/igt@perf_pmu@busy-start-vcs1.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][51] -> [FAIL][52] ([i915#831])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw4/igt@prime_mmap_coherency@ioctl-errors.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-hsw5/igt@prime_mmap_coherency@ioctl-errors.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb4/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_persistence@hostile}:
    - shard-iclb:         [FAIL][55] ([i915#1081]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@gem_ctx_persistence@hostile.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb3/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@vcs0-queued:
    - shard-tglb:         [INCOMPLETE][57] ([i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb6/igt@gem_ctx_persistence@vcs0-queued.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-tglb7/igt@gem_ctx_persistence@vcs0-queued.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][61] ([fdo#112146]) -> [PASS][62] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][63] ([i915#694]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][65] ([i915#69]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl5/igt@gem_softpin@noreloc-s3.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl6/igt@gem_softpin@noreloc-s3.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][67] ([i915#109]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [FAIL][69] ([IGT#5]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-tglb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
    - shard-skl:          [FAIL][71] ([IGT#5] / [i915#697]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][73] ([i915#79]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-panning-vs-hang-interruptible:
    - shard-iclb:         [SKIP][75] ([i915#1082]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb3/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-y:
    - shard-skl:          [FAIL][77] ([fdo#107931] / [i915#699]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl4/igt@kms_flip_tiling@flip-changes-tiling-y.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl5/igt@kms_flip_tiling@flip-changes-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         [SKIP][79] ([i915#668]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][83] ([fdo#108145]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb7/igt@kms_psr@psr2_suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][87] ([i915#31]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl3/igt@kms_setmode@basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][91] ([fdo#109276]) -> [PASS][92] +17 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-skl:          [INCOMPLETE][93] ([i915#198]) -> [INCOMPLETE][94] ([CI#80] / [i915#198])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl1/igt@gem_eio@kms.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-skl10/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][95] ([i915#694]) -> [FAIL][96] ([i915#818])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw8/igt@gem_tiled_blits@normal.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [TIMEOUT][97] ([fdo#112271] / [i915#472]) -> [TIMEOUT][98] ([fdo#112271] / [i915#1085] / [i915#472])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb6/igt@perf@gen12-mi-rpc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/shard-tglb2/igt@perf@gen12-mi-rpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#107931]: https://bugs.freedesktop.org/show_bug.cgi?id=107931
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1081]: https://gitlab.freedesktop.org/drm/intel/issues/1081
  [i915#1082]: https://gitlab.freedesktop.org/drm/intel/issues/1082
  [i915#1085]: https://gitlab.freedesktop.org/drm/intel/issues/1085
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7833 -> Patchwork_16301

  CI-20190529: 20190529
  CI_DRM_7833: 8210f0f999e2d396a8611e0cabc2f6c6a52468de @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5394: 991fd07bcd7add7a5beca2c95b72a994e62fbb75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16301: c957043623a4fa0e2a5ea4bc9b540ffc1ed22a39 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16301/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
