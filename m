Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4DE14D8BF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 11:13:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B49C89C07;
	Thu, 30 Jan 2020 10:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2867B89BFE;
 Thu, 30 Jan 2020 10:13:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2030BA0071;
 Thu, 30 Jan 2020 10:13:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 30 Jan 2020 10:13:19 -0000
Message-ID: <158037919910.21032.11697710773644808468@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200128144501.3714-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200128144501.3714-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Nuke_pre-production_GLK?=
 =?utf-8?q?_HDMI_w/a_1139?=
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

Series: series starting with [1/2] drm/i915: Nuke pre-production GLK HDMI w/a 1139
URL   : https://patchwork.freedesktop.org/series/72668/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7833_full -> Patchwork_16296_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16296_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16296_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16296_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_shared@q-independent-default:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-glk8/igt@gem_ctx_shared@q-independent-default.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-glk2/igt@gem_ctx_shared@q-independent-default.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-hsw:          [PASS][3] -> [FAIL][4] +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-hsw8/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  
Known issues
------------

  Here are the changes found in Patchwork_16296_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@exec-shared-gtt-vebox:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#616])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl7/igt@gem_ctx_shared@exec-shared-gtt-vebox.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-kbl4/igt@gem_ctx_shared@exec-shared-gtt-vebox.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([fdo#112118]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-glk8/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-glk2/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#644])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [PASS][17] -> [FAIL][18] ([i915#818])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw8/igt@gem_tiled_blits@interruptible.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-hsw5/igt@gem_tiled_blits@interruptible.html

  * igt@gem_wait@write-busy-vcs1:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112080]) +5 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@gem_wait@write-busy-vcs1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb3/igt@gem_wait@write-busy-vcs1.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl3/igt@gem_workarounds@suspend-resume-fd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#716])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rps@reset:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#39])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl9/igt@i915_pm_rps@reset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl9/igt@i915_pm_rps@reset.html
    - shard-iclb:         [PASS][29] -> [FAIL][30] ([i915#413])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb5/igt@i915_pm_rps@reset.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-hsw:          [PASS][31] -> [DMESG-WARN][32] ([i915#44])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw1/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-hsw5/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-apl:          [PASS][37] -> [FAIL][38] ([i915#79])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl1/igt@kms_flip@flip-vs-expired-vblank.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-apl2/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#79])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109642] / [fdo#111068])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][45] -> [SKIP][46] ([fdo#109441])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb8/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_vblank@pipe-a-wait-busy-hang:
    - shard-glk:          [PASS][47] -> [SKIP][48] ([fdo#109271])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-glk8/igt@kms_vblank@pipe-a-wait-busy-hang.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-glk2/igt@kms_vblank@pipe-a-wait-busy-hang.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-hsw:          [PASS][49] -> [FAIL][50] ([i915#831])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw4/igt@prime_mmap_coherency@ioctl-errors.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-hsw6/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@prime_mmap_coherency@write:
    - shard-hsw:          [PASS][51] -> [FAIL][52] ([i915#914])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw6/igt@prime_mmap_coherency@write.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-hsw4/igt@prime_mmap_coherency@write.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][53] ([fdo#112080]) -> [PASS][54] +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb3/igt@gem_busy@busy-vcs1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_caching@reads:
    - shard-hsw:          [FAIL][55] ([i915#694]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw5/igt@gem_caching@reads.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-hsw1/igt@gem_caching@reads.html

  * {igt@gem_ctx_persistence@hostile}:
    - shard-iclb:         [FAIL][57] -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@gem_ctx_persistence@hostile.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb6/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@vcs0-queued:
    - shard-tglb:         [INCOMPLETE][59] ([i915#472]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb6/igt@gem_ctx_persistence@vcs0-queued.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-tglb1/igt@gem_ctx_persistence@vcs0-queued.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +13 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb3/igt@gem_exec_schedule@fifo-bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][63] ([i915#677]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb3/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-hsw:          [FAIL][67] -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-hsw2/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-hsw5/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_softpin@noreloc-s3:
    - shard-skl:          [INCOMPLETE][69] ([i915#69]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl5/igt@gem_softpin@noreloc-s3.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl7/igt@gem_softpin@noreloc-s3.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [FAIL][73] ([IGT#5]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-tglb3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
    - shard-skl:          [FAIL][75] ([IGT#5] / [i915#697]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][77] ([i915#79]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-panning-vs-hang-interruptible:
    - shard-iclb:         [SKIP][79] -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb4/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb6/igt@kms_flip@flip-vs-panning-vs-hang-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         [SKIP][83] ([i915#668]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][85] ([fdo#108145]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [SKIP][87] ([fdo#109441]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb7/igt@kms_psr@psr2_basic.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb2/igt@kms_psr@psr2_basic.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][89] ([i915#31]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-apl3/igt@kms_setmode@basic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-apl4/igt@kms_setmode@basic.html
    - shard-skl:          [FAIL][91] ([i915#31]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl5/igt@kms_setmode@basic.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl5/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][93] ([i915#180]) -> [PASS][94] +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][95] ([IGT#28]) -> [SKIP][96] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-iclb3/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-tglb:         [SKIP][97] ([i915#468]) -> [FAIL][98] ([i915#454])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-tglb2/igt@i915_pm_dc@dc6-dpms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-tglb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-skl:          [SKIP][99] ([fdo#109271]) -> [INCOMPLETE][100] ([i915#123])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7833/shard-skl1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/shard-skl5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112118]: https://bugs.freedesktop.org/show_bug.cgi?id=112118
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1074]: https://gitlab.freedesktop.org/drm/intel/issues/1074
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#831]: https://gitlab.freedesktop.org/drm/intel/issues/831
  [i915#914]: https://gitlab.freedesktop.org/drm/intel/issues/914


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7833 -> Patchwork_16296

  CI-20190529: 20190529
  CI_DRM_7833: 8210f0f999e2d396a8611e0cabc2f6c6a52468de @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5394: 991fd07bcd7add7a5beca2c95b72a994e62fbb75 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16296: 53657e6bd9b52cc32593ecf527ebb1f7dcf5b187 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16296/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
