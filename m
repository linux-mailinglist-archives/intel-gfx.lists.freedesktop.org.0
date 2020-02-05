Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C481529F0
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 12:33:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4518D6E96E;
	Wed,  5 Feb 2020 11:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1747B6E96E;
 Wed,  5 Feb 2020 11:33:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0F51BA0078;
 Wed,  5 Feb 2020 11:33:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Wed, 05 Feb 2020 11:33:28 -0000
Message-ID: <158090240803.17321.1750823656782282694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200202230630.8975-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200202230630.8975-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRW5h?=
 =?utf-8?q?ble_second_DBuf_slice_for_ICL_and_TGL_=28rev23=29?=
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

Series: Enable second DBuf slice for ICL and TGL (rev23)
URL   : https://patchwork.freedesktop.org/series/70059/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7857_full -> Patchwork_16386_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16386_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16386_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16386_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-tglb:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb6/igt@kms_plane_cursor@pipe-a-viewport-size-128.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-tglb2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  
Known issues
------------

  Here are the changes found in Patchwork_16386_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#110841])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-apl6/igt@gem_eio@in-flight-suspend.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-apl2/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +18 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb7/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([i915#677])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb7/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112146]) +6 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb6/igt@gem_exec_schedule@wide-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb4/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_exec_store@pages-vcs1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112080]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb4/igt@gem_exec_store@pages-vcs1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb8/igt@gem_exec_store@pages-vcs1.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([fdo#107139] / [i915#62] / [i915#92])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-kbl7/igt@gem_exec_suspend@basic-s4-devices.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-kbl6/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#454])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-b:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] ([i915#62] / [i915#92]) +15 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-kbl3/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-b.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-kbl6/igt@kms_busy@extended-pageflip-hang-oldfb-render-pipe-b.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([fdo#111703])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled:
    - shard-tglb:         [PASS][23] -> [FAIL][24] ([i915#559])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-tglb3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled:
    - shard-tglb:         [PASS][25] -> [DMESG-FAIL][26] ([i915#402]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-ytiled.html

  * igt@kms_fbcon_fbt@psr:
    - shard-skl:          [PASS][27] -> [DMESG-WARN][28] ([i915#109]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl1/igt@kms_fbcon_fbt@psr.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-skl2/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@absolute-wf_vblank:
    - shard-glk:          [PASS][29] -> [INCOMPLETE][30] ([CI#80] / [i915#58] / [k.org#198133])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-glk6/igt@kms_flip@absolute-wf_vblank.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-glk6/igt@kms_flip@absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#79]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl3/igt@kms_flip@flip-vs-expired-vblank.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][33] -> [DMESG-WARN][34] ([i915#180]) +9 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
    - shard-snb:          [PASS][35] -> [SKIP][36] ([fdo#109271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-snb1/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-snb6/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([fdo#108145])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145] / [i915#265])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109441]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][43] -> [FAIL][44] ([i915#31])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-apl7/igt@kms_setmode@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-apl7/igt@kms_setmode@basic.html
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#31])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl2/igt@kms_setmode@basic.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-skl1/igt@kms_setmode@basic.html

  * igt@prime_mmap_coherency@read:
    - shard-hsw:          [PASS][47] -> [FAIL][48] ([i915#914])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw7/igt@prime_mmap_coherency@read.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-hsw1/igt@prime_mmap_coherency@read.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][49] ([fdo#110854]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-skl:          [DMESG-WARN][51] ([i915#109]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl2/igt@gem_exec_reloc@basic-write-cpu-active.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-skl10/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][53] ([i915#677]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][55] ([fdo#112146]) -> [PASS][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_partial_pwrite_pread@reads-display:
    - shard-hsw:          [FAIL][57] ([i915#694]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw7/igt@gem_partial_pwrite_pread@reads-display.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-hsw1/igt@gem_partial_pwrite_pread@reads-display.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-skl:          [FAIL][61] ([i915#34]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl7/igt@kms_flip@plain-flip-fb-recreate.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-skl10/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [SKIP][63] ([i915#668]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145] / [i915#265]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][71] ([i915#69]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-skl8/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][73] ([fdo#112080]) -> [PASS][74] +17 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][75] ([fdo#109276]) -> [PASS][76] +15 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][77] ([IGT#28]) -> [SKIP][78] ([fdo#112080])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][79] ([i915#818]) -> [FAIL][80] ([i915#694])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw2/igt@gem_tiled_blits@interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-hsw8/igt@gem_tiled_blits@interruptible.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][81] ([i915#454]) -> [DMESG-FAIL][82] ([i915#402])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-tglb3/igt@i915_pm_dc@dc6-psr.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-tglb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@legacy-planes:
    - shard-snb:          [INCOMPLETE][83] ([i915#82]) -> [SKIP][84] ([fdo#109271])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-snb6/igt@i915_pm_rpm@legacy-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-snb4/igt@i915_pm_rpm@legacy-planes.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [DMESG-FAIL][85] ([i915#770]) -> [DMESG-FAIL][86] ([i915#553] / [i915#725])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7857/shard-hsw1/igt@i915_selftest@live_blt.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/shard-hsw5/igt@i915_selftest@live_blt.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111703]: https://bugs.freedesktop.org/show_bug.cgi?id=111703
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#559]: https://gitlab.freedesktop.org/drm/intel/issues/559
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7857 -> Patchwork_16386

  CI-20190529: 20190529
  CI_DRM_7857: 8ec40a15b9a930df9e445f17c5e01cdb6f80353a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5411: 86c6ab8a0b6696bdb2153febd350af7fa02fbb00 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16386: cdd031c39303872425a3e2b3a8adfe73b0274a27 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16386/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
