Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F09CC171111
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 07:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F11E16EBF0;
	Thu, 27 Feb 2020 06:37:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9D3E46EBEE;
 Thu, 27 Feb 2020 06:37:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95225A7DFA;
 Thu, 27 Feb 2020 06:37:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Laxminarayan Bharadiya, Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
Date: Thu, 27 Feb 2020 06:37:44 -0000
Message-ID: <158278546458.29659.7386722478600150265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225134709.6153-1-pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200225134709.6153-1-pankaj.laxminarayan.bharadiya@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Introduce_i915_based_i915=5FMISSING=5FCASE_macro_and_u?=
 =?utf-8?q?s_it_in_i915?=
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

Series: drm/i915: Introduce i915 based i915_MISSING_CASE macro and us it in i915
URL   : https://patchwork.freedesktop.org/series/73908/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8008_full -> Patchwork_16705_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16705_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16705_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16705_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_fence_blits@normal:
    - shard-apl:          NOTRUN -> [TIMEOUT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-apl8/igt@gem_tiled_fence_blits@normal.html

  * igt@sw_sync@sync_multi_producer_single_consumer:
    - shard-skl:          [PASS][2] -> [TIMEOUT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl8/igt@sw_sync@sync_multi_producer_single_consumer.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-skl7/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-tglb:         [PASS][4] -> [TIMEOUT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb2/igt@sw_sync@sync_multi_producer_single_consumer.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-tglb1/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-snb:          [PASS][6] -> [TIMEOUT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb5/igt@sw_sync@sync_multi_producer_single_consumer.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-snb5/igt@sw_sync@sync_multi_producer_single_consumer.html
    - shard-iclb:         [PASS][8] -> [TIMEOUT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@sw_sync@sync_multi_producer_single_consumer.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb6/igt@sw_sync@sync_multi_producer_single_consumer.html

  
Known issues
------------

  Here are the changes found in Patchwork_16705_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][10] -> [SKIP][11] ([fdo#110841])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@hang:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#1277])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb2/igt@gem_exec_balancer@hang.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-tglb1/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#110854])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb8/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112080]) +12 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([i915#677])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112146]) +4 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#447])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb7/igt@i915_pm_dc@dc5-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_selftest@live_gt_lrc:
    - shard-tglb:         [PASS][24] -> [DMESG-FAIL][25] ([i915#1233])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-tglb7/igt@i915_selftest@live_gt_lrc.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-tglb6/igt@i915_selftest@live_gt_lrc.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-skl:          [PASS][26] -> [INCOMPLETE][27] ([i915#221])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#49])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +5 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([fdo#108145])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([fdo#108145] / [i915#265])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-glk:          [PASS][38] -> [FAIL][39] ([i915#899])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#109276]) +21 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@prime_busy@hang-bsd2.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [FAIL][44] ([i915#1277]) -> [PASS][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_balancer@hang.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb6/igt@gem_exec_balancer@hang.html

  * {igt@gem_exec_schedule@implicit-write-read-bsd2}:
    - shard-iclb:         [SKIP][46] ([fdo#109276] / [i915#677]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb7/igt@gem_exec_schedule@implicit-write-read-bsd2.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][48] ([i915#677]) -> [PASS][49] +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb1/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][50] ([fdo#112146]) -> [PASS][51] +7 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb7/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * {igt@gem_exec_whisper@basic-contexts-forked}:
    - shard-apl:          [INCOMPLETE][52] ([fdo#103927]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl7/igt@gem_exec_whisper@basic-contexts-forked.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-apl8/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-skl:          [FAIL][54] ([i915#54]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][56] ([i915#180]) -> [PASS][57] +4 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][58] ([IGT#5]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [DMESG-WARN][60] ([i915#42]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb4/igt@kms_flip@flip-vs-suspend.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-snb2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][62] ([i915#180]) -> [PASS][63] +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - shard-skl:          [FAIL][64] ([i915#53]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-skl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [INCOMPLETE][66] ([i915#69]) -> [PASS][67] +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-skl5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-skl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][68] ([fdo#109441]) -> [PASS][69] +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][70] ([i915#31]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-apl1/igt@kms_setmode@basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-apl6/igt@kms_setmode@basic.html
    - shard-kbl:          [FAIL][72] ([i915#31]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-kbl1/igt@kms_setmode@basic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-kbl2/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [SKIP][74] ([fdo#112080]) -> [PASS][75] +17 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb7/igt@perf_pmu@busy-vcs1.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb1/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][76] ([fdo#109276]) -> [PASS][77] +18 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb3/igt@prime_vgem@fence-wait-bsd2.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][78] ([IGT#28]) -> [SKIP][79] ([fdo#112080]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_rpm@universal-planes:
    - shard-snb:          [SKIP][80] ([fdo#109271]) -> [INCOMPLETE][81] ([i915#82])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8008/shard-snb2/igt@i915_pm_rpm@universal-planes.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/shard-snb2/igt@i915_pm_rpm@universal-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
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
  [i915#1277]: https://gitlab.freedesktop.org/drm/intel/issues/1277
  [i915#1291]: https://gitlab.freedesktop.org/drm/intel/issues/1291
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8008 -> Patchwork_16705

  CI-20190529: 20190529
  CI_DRM_8008: 13b6e2575f2c05722679bc1c9d0b97c13bde49a1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5469: 4f875016eb1ebc211b8aadb280ae16c7e6cdc8ba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16705: 4908d4bfc3d886cfd24f39666f00e0187fa6050a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16705/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
