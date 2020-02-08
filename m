Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E8915629A
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 03:03:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB2DF6E155;
	Sat,  8 Feb 2020 02:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 409FF6E155;
 Sat,  8 Feb 2020 02:02:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18683A0094;
 Sat,  8 Feb 2020 02:02:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Sat, 08 Feb 2020 02:02:56 -0000
Message-ID: <158112737606.30227.2999737172980124757@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200205114019.10900-1-ramalingam.c@intel.com>
In-Reply-To: <20200205114019.10900-1-ramalingam.c@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_align_dumb_buffer_stride_to_page=5Fsz_of_the_region?=
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

Series: drm/i915: align dumb buffer stride to page_sz of the region
URL   : https://patchwork.freedesktop.org/series/73021/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7869_full -> Patchwork_16433_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16433_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@extended-parallel-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb1/igt@gem_busy@extended-parallel-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb5/igt@gem_busy@extended-parallel-vcs1.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4] ([fdo#103665])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-kbl7/igt@gem_ctx_exec@basic-nohangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-kbl3/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [PASS][7] -> [TIMEOUT][8] ([fdo#112271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb4/igt@gem_exec_balancer@hang.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb4/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#110854])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb7/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb1/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-apl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl9/igt@gem_softpin@noreloc-s3.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl10/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#716])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][21] -> [DMESG-FAIL][22] ([i915#563])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-hsw2/igt@i915_selftest@live_blt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-hsw2/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gtt:
    - shard-skl:          [PASS][23] -> [TIMEOUT][24] ([fdo#111732] / [fdo#112271])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl10/igt@i915_selftest@live_gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl10/igt@i915_selftest@live_gtt.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#300])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#49])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#123] / [i915#69])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl4/igt@kms_frontbuffer_tracking@psr-suspend.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl9/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([fdo#108145]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#899]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_plane_multiple@atomic-pipe-c-tiling-yf:
    - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([IGT#6])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl9/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl10/igt@kms_plane_multiple@atomic-pipe-c-tiling-yf.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#198])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl2/igt@kms_psr@suspend.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl9/igt@kms_psr@suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-apl:          [INCOMPLETE][45] ([fdo#103927]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-apl6/igt@gem_ctx_exec@basic-nohangcheck.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-apl2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@vcs1-reset:
    - shard-iclb:         [SKIP][47] ([fdo#112080]) -> [PASS][48] +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb7/igt@gem_ctx_isolation@vcs1-reset.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +8 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-hsw:          [FAIL][51] ([i915#694]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-hsw7/igt@gem_partial_pwrite_pread@write.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-hsw6/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][53] ([i915#644]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][55] ([i915#818]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-hsw8/igt@gem_tiled_blits@interruptible.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-hsw6/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_rps@reset:
    - shard-apl:          [FAIL][57] ([i915#39]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-apl1/igt@i915_pm_rps@reset.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-apl1/igt@i915_pm_rps@reset.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][59] ([i915#79]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][61] ([i915#79]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +6 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][69] ([fdo#109642] / [fdo#111068]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb7/igt@kms_psr2_su@frontbuffer.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb7/igt@kms_psr@psr2_no_drrs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb2/igt@kms_psr@psr2_no_drrs.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-hsw:          [INCOMPLETE][73] ([i915#61]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-hsw4/igt@perf_pmu@cpu-hotplug.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-hsw6/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][75] ([fdo#109276]) -> [PASS][76] +9 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb5/igt@prime_vgem@fence-wait-bsd2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][77] ([i915#694]) -> [FAIL][78] ([i915#818])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-hsw1/igt@gem_tiled_blits@normal.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][79] ([fdo#109349]) -> [DMESG-WARN][80] ([fdo#107724])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7869/shard-iclb7/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111732]: https://bugs.freedesktop.org/show_bug.cgi?id=111732
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7869 -> Patchwork_16433

  CI-20190529: 20190529
  CI_DRM_7869: db0579be255412f38a450c3c577f8d10f1195034 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5419: 44913a91e77434b03001bb9ea53216cd03c476e6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16433: fe70b2c46fe7991d0a91d63bcc544ac5cfb0af80 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16433/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
