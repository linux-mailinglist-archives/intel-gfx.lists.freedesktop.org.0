Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B710314DCDE
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 15:35:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F02989FAD;
	Thu, 30 Jan 2020 14:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 860CC89F6D;
 Thu, 30 Jan 2020 14:35:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5617FA0087;
 Thu, 30 Jan 2020 14:35:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Jan 2020 14:35:29 -0000
Message-ID: <158039492932.21035.10217641846182579291@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128151647.3820659-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200128151647.3820659-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/trace=3A_i915=5Frequest=2Eprio_is_a_signed_value?=
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

Series: drm/i915/trace: i915_request.prio is a signed value
URL   : https://patchwork.freedesktop.org/series/72671/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7833_full -> Patchwork_16298_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16298_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl3/igt@gem_ctx_isolation@rcs0-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb6/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#112080]) +15 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb6/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-skl:          [PASS][7] -> [DMESG-WARN][8] ([i915#109])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl4/igt@gem_exec_reloc@basic-write-wc-active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl10/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +16 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@gem_exec_schedule@independent-bsd2.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([i915#677])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb7/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#818])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw8/igt@gem_tiled_blits@interruptible.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][19] -> [DMESG-WARN][20] ([i915#180]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl3/igt@i915_suspend@sysfs-reader.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-apl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#54])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#79])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#46])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
    - shard-apl:          [PASS][27] -> [FAIL][28] ([i915#79])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#221])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl4/igt@kms_flip@flip-vs-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109642] / [fdo#111068])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb7/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb7/igt@kms_psr@psr2_sprite_render.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb1/igt@gem_busy@busy-vcs1.html

  * {igt@gem_ctx_persistence@hostile}:
    - shard-iclb:         [FAIL][41] ([i915#1081]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@gem_ctx_persistence@hostile.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb1/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@vcs0-queued:
    - shard-tglb:         [INCOMPLETE][43] ([i915#472]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb6/igt@gem_ctx_persistence@vcs0-queued.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-tglb7/igt@gem_ctx_persistence@vcs0-queued.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [SKIP][45] ([fdo#109276] / [fdo#112080]) -> [PASS][46] +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb8/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb2/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_ctx_shared@q-promotion-vebox:
    - shard-kbl:          [FAIL][47] ([fdo#112118]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl6/igt@gem_ctx_shared@q-promotion-vebox.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-kbl3/igt@gem_ctx_shared@q-promotion-vebox.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][49] ([fdo#112146]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb6/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][51] ([i915#694]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-hsw7/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][53] ([i915#69]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl5/igt@gem_softpin@noreloc-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl5/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rps@waitboost:
    - shard-tglb:         [FAIL][55] ([i915#413]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb5/igt@i915_pm_rps@waitboost.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-tglb8/igt@i915_pm_rps@waitboost.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58] +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [FAIL][59] ([IGT#5]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][61] ([i915#79]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-panning-vs-hang-interruptible:
    - shard-iclb:         [SKIP][63] ([i915#1082]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb1/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         [SKIP][65] ([i915#668]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][67] ([i915#180]) -> [PASS][68] +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][69] ([fdo#108145]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][71] ([fdo#109441]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb7/igt@kms_psr@psr2_suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb2/igt@kms_psr@psr2_suspend.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +24 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][75] ([IGT#28]) -> [SKIP][76] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-apl:          [TIMEOUT][77] ([fdo#112271]) -> [INCOMPLETE][78] ([CI#80] / [fdo#103927])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl6/igt@gem_eio@in-flight-contexts-1us.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-apl3/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@kms:
    - shard-skl:          [INCOMPLETE][79] ([i915#198]) -> [INCOMPLETE][80] ([CI#80] / [i915#198])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl1/igt@gem_eio@kms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-skl6/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][81] ([i915#694]) -> [FAIL][82] ([i915#818])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw8/igt@gem_tiled_blits@normal.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][83] ([i915#468]) -> [FAIL][84] ([i915#454])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-snb:          [SKIP][85] ([fdo#109271]) -> [INCOMPLETE][86] ([i915#82])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-snb2/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-snb1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [TIMEOUT][87] ([fdo#112271] / [i915#472]) -> [TIMEOUT][88] ([fdo#112271] / [i915#1085] / [i915#472])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb6/igt@perf@gen12-mi-rpc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/shard-tglb6/igt@perf@gen12-mi-rpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112118]: https://bugs.freedesktop.org/show_bug.cgi?id=112118
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1081]: https://gitlab.freedesktop.org/drm/intel/issues/1081
  [i915#1082]: https://gitlab.freedesktop.org/drm/intel/issues/1082
  [i915#1085]: https://gitlab.freedesktop.org/drm/intel/issues/1085
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7833 -> Patchwork_16298

  CI-20190529: 20190529
  CI_DRM_7833: 8210f0f999e2d396a8611e0cabc2f6c6a52468de @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5394: 991fd07bcd7add7a5beca2c95b72a994e62fbb75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16298: 0509c2fd64f8eb8f0e09b4ea8c54c3298d7d5364 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16298/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
