Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F871848F1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 15:14:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170DC6EBD4;
	Fri, 13 Mar 2020 14:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E0A476EBD2;
 Fri, 13 Mar 2020 14:14:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D921AA0099;
 Fri, 13 Mar 2020 14:14:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Fri, 13 Mar 2020 14:14:25 -0000
Message-ID: <158410886588.30350.5866617307112379842@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200312230502.36898-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200312230502.36898-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_add_OA_interrupt_support_=28rev6=29?=
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

Series: drm/i915/perf: add OA interrupt support (rev6)
URL   : https://patchwork.freedesktop.org/series/54280/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8131_full -> Patchwork_16958_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16958_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb3/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4] ([i915#1402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#110854])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb1/igt@gem_exec_balancer@smoke.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb6/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@implicit-read-write-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([i915#677])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb6/igt@gem_exec_schedule@implicit-read-write-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#644])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
    - shard-apl:          [PASS][13] -> [FAIL][14] ([i915#644])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-apl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#183])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-kbl7/igt@gem_tiled_swapping@non-threaded.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-kbl4/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-apl4/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rps@reset:
    - shard-tglb:         [PASS][19] -> [FAIL][20] ([i915#413])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-tglb5/igt@i915_pm_rps@reset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-tglb6/igt@i915_pm_rps@reset.html
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#413])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb1/igt@i915_pm_rps@reset.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          [PASS][23] -> [INCOMPLETE][24] ([fdo#103927] / [i915#656])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-apl2/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-apl4/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-random:
    - shard-kbl:          [PASS][25] -> [FAIL][26] ([i915#54])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
    - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-apl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-random.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#72])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109349])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#49])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#1188])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb2/igt@kms_psr@psr2_basic.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb8/igt@kms_psr@psr2_basic.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109276]) +23 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb1/igt@prime_busy@hang-bsd2.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb6/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-kbl:          [DMESG-WARN][45] ([i915#180]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-kbl4/igt@gem_ctx_isolation@bcs0-s3.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-kbl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [INCOMPLETE][47] ([i915#1402]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-tglb8/igt@gem_ctx_persistence@close-replace-race.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-tglb2/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [INCOMPLETE][49] ([i915#1402]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-skl2/igt@gem_ctx_persistence@close-replace-race.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-skl7/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [SKIP][51] ([fdo#110841]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][53] ([fdo#109276] / [i915#677]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb8/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][57] ([fdo#109276]) -> [PASS][58] +22 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][59] ([fdo#112146]) -> [PASS][60] +7 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-skl:          [FAIL][61] ([i915#644]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-skl5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-skl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][63] ([i915#413]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb5/igt@i915_pm_rps@waitboost.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb7/igt@i915_pm_rps@waitboost.html

  * igt@i915_selftest@live@execlists:
    - shard-glk:          [INCOMPLETE][65] ([i915#58] / [i915#656] / [k.org#198133]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-glk6/igt@i915_selftest@live@execlists.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-glk4/igt@i915_selftest@live@execlists.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
    - shard-skl:          [FAIL][67] ([i915#54]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-glk:          [FAIL][69] ([i915#133]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-glk9/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-glk3/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-hsw:          [INCOMPLETE][71] ([i915#61]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-hsw5/igt@kms_flip@blocking-wf_vblank.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-hsw6/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][75] ([fdo#108145]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][77] ([fdo#108145] / [i915#265]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [FAIL][79] ([i915#899]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-glk6/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][83] ([i915#31]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-apl3/igt@kms_setmode@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-apl6/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][85] ([fdo#112080]) -> [PASS][86] +15 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-iclb:         [INCOMPLETE][87] ([i915#1402]) -> [TIMEOUT][88] ([i915#1340])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb1/igt@gem_ctx_persistence@close-replace-race.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb5/igt@gem_ctx_persistence@close-replace-race.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][89] ([i915#658]) -> [SKIP][90] ([i915#588])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][91] ([i915#92]) -> ([FAIL][92], [FAIL][93]) ([i915#1389] / [i915#1402] / [i915#92])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-kbl1/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-kbl6/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-kbl3/igt@runner@aborted.html
    - shard-apl:          ([FAIL][94], [FAIL][95]) ([fdo#103927] / [i915#1402]) -> ([FAIL][96], [FAIL][97], [FAIL][98]) ([fdo#103927] / [i915#1402] / [i915#529])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-apl8/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8131/shard-apl7/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-apl4/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-apl3/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/shard-apl6/igt@runner@aborted.html

  
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#133]: https://gitlab.freedesktop.org/drm/intel/issues/133
  [i915#1340]: https://gitlab.freedesktop.org/drm/intel/issues/1340
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#183]: https://gitlab.freedesktop.org/drm/intel/issues/183
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#529]: https://gitlab.freedesktop.org/drm/intel/issues/529
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (9 -> 10)
------------------------------

  Additional (1): pig-glk-j5005 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8131 -> Patchwork_16958

  CI-20190529: 20190529
  CI_DRM_8131: 5137b6daebf1eac30b307c37fe371fee1db7d6cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5506: 59fd8a0d01dac58dc6c7d86ef391ed4393ab5aae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16958: 5c91c06ca2f8a42a0760f3f30ac014fdeede74cc @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16958/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
