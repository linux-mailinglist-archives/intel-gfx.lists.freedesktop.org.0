Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2989A14DFEF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 18:33:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B204E6E8A4;
	Thu, 30 Jan 2020 17:33:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A2CD6E8A4;
 Thu, 30 Jan 2020 17:33:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4177DA0009;
 Thu, 30 Jan 2020 17:33:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 30 Jan 2020 17:33:19 -0000
Message-ID: <158040559923.21032.18161335731211771987@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128155152.21977-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200128155152.21977-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/4=5D_drm/i915=3A_Nuke_pre-productio?=
 =?utf-8?q?n_GLK_HDMI_w/a_1139?=
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

Series: series starting with [v2,1/4] drm/i915: Nuke pre-production GLK HDMI w/a 1139
URL   : https://patchwork.freedesktop.org/series/72675/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7833_full -> Patchwork_16300_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16300_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16300_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16300_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@out-order-render:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl6/igt@gem_exec_schedule@out-order-render.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-kbl7/igt@gem_exec_schedule@out-order-render.html

  * igt@gem_ringfill@basic-default-hang:
    - shard-iclb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb5/igt@gem_ringfill@basic-default-hang.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb7/igt@gem_ringfill@basic-default-hang.html

  
Known issues
------------

  Here are the changes found in Patchwork_16300_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +5 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112080]) +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb5/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-contexts-bsd2:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_exec_schedule@preempt-contexts-bsd2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#694]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw5/igt@gem_partial_pwrite_pread@write-snoop.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-hsw8/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][17] -> [FAIL][18] ([i915#818])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw8/igt@gem_tiled_blits@interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@i915_selftest@live_blt:
    - shard-hsw:          [PASS][19] -> [DMESG-FAIL][20] ([i915#725])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw5/igt@i915_selftest@live_blt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-hsw2/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_hangcheck:
    - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#108569])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@i915_selftest@live_hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb7/igt@i915_selftest@live_hangcheck.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#109])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([fdo#108145])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145] / [i915#265])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][33] -> [FAIL][34] ([i915#173])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@kms_psr@no_drrs.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb4/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#43])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl5/igt@kms_vblank@pipe-b-accuracy-idle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-skl5/igt@kms_vblank@pipe-b-accuracy-idle.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [SKIP][39] ([fdo#109276] / [fdo#112080]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb3/igt@gem_ctx_isolation@vcs1-clean.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb4/igt@gem_ctx_isolation@vcs1-clean.html

  * {igt@gem_ctx_persistence@hostile}:
    - shard-iclb:         [FAIL][41] ([i915#1081]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@gem_ctx_persistence@hostile.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb3/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@vcs0-queued:
    - shard-tglb:         [INCOMPLETE][43] ([i915#472]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb6/igt@gem_ctx_persistence@vcs0-queued.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-tglb5/igt@gem_ctx_persistence@vcs0-queued.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][45] ([fdo#112146]) -> [PASS][46] +2 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-userfault-bsd2:
    - shard-iclb:         [SKIP][47] ([fdo#109276]) -> [PASS][48] +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb6/igt@gem_exec_schedule@pi-userfault-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb1/igt@gem_exec_schedule@pi-userfault-bsd2.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][49] ([i915#694]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][51] ([i915#69]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl5/igt@gem_softpin@noreloc-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-skl10/igt@gem_softpin@noreloc-s3.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][53] ([i915#109]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-skl5/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [FAIL][55] ([IGT#5]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
    - shard-skl:          [FAIL][57] ([IGT#5] / [i915#697]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][59] ([i915#79]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-panning-vs-hang-interruptible:
    - shard-iclb:         [SKIP][61] ([i915#1082]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb3/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         [SKIP][65] ([i915#668]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][67] ([fdo#108145]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][69] ([fdo#109441]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72] +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@init-busy-vcs1:
    - shard-iclb:         [SKIP][73] ([fdo#112080]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb3/igt@perf_pmu@init-busy-vcs1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb4/igt@perf_pmu@init-busy-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][75] ([IGT#28]) -> [SKIP][76] ([fdo#109276] / [fdo#112080])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-hsw:          [FAIL][77] ([i915#1045]) -> [DMESG-FAIL][78] ([i915#1045])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][79] ([i915#694]) -> [FAIL][80] ([i915#818])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw8/igt@gem_tiled_blits@normal.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][81] ([i915#468]) -> [FAIL][82] ([i915#454])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-tglb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [TIMEOUT][83] ([fdo#112271] / [i915#472]) -> [TIMEOUT][84] ([fdo#112271] / [i915#1085] / [i915#472])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb6/igt@perf@gen12-mi-rpc.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/shard-tglb2/igt@perf@gen12-mi-rpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1045]: https://gitlab.freedesktop.org/drm/intel/issues/1045
  [i915#1081]: https://gitlab.freedesktop.org/drm/intel/issues/1081
  [i915#1082]: https://gitlab.freedesktop.org/drm/intel/issues/1082
  [i915#1085]: https://gitlab.freedesktop.org/drm/intel/issues/1085
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7833 -> Patchwork_16300

  CI-20190529: 20190529
  CI_DRM_7833: 8210f0f999e2d396a8611e0cabc2f6c6a52468de @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5394: 991fd07bcd7add7a5beca2c95b72a994e62fbb75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16300: e3e86885900149a0046ce6ea51a27e1506856b0a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16300/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
