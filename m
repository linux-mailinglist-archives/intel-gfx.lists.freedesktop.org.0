Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB62D624FDE
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 02:44:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2657A10E163;
	Fri, 11 Nov 2022 01:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1D87110E163;
 Fri, 11 Nov 2022 01:44:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1548EA66C9;
 Fri, 11 Nov 2022 01:44:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0241243335958091412=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Fri, 11 Nov 2022 01:44:52 -0000
Message-ID: <166813109204.871.15972196357296027489@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221109161141.2987173-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221109161141.2987173-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRFJN?=
 =?utf-8?q?_scheduling_cgroup_controller_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0241243335958091412==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DRM scheduling cgroup controller (rev2)
URL   : https://patchwork.freedesktop.org/series/109902/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12365_full -> Patchwork_109902v2_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_109902v2_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109902v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109902v2_full:

### IGT changes ###

#### Warnings ####

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
    - shard-apl:          [FAIL][1] ([i915#4573]) -> [DMESG-FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-apl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_109902v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#4613])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#5566] / [i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-glk6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#3989] / [i915#454])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb8/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-apl:          NOTRUN -> [SKIP][11] ([fdo#109271]) +17 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#5138])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#3886]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#3886]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-hpd-with-enabled-mode:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@kms_chamelium@dp-hpd-with-enabled-mode.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl1/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
    - shard-apl:          [PASS][18] -> [DMESG-WARN][19] ([i915#180]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2346]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#2122])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-glk6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [PASS][24] -> [FAIL][25] ([i915#79])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][26] -> [INCOMPLETE][27] ([i915#180] / [i915#4839])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#2672]) +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][29] -> [SKIP][30] ([i915#3555])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#2587] / [i915#2672]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +55 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#5776]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl1/igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scalers.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#658]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441]) +2 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [PASS][37] -> [SKIP][38] ([i915#5519])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-tglb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#1542])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-skl10/igt@perf@blocking.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl6/igt@perf@blocking.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][41] ([i915#1722])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl1/igt@perf@polling-small-buf.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#2994])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@sysfs_clients@fair-1.html

  
#### Possible fixes ####

  * igt@fbdev@eof:
    - {shard-rkl}:        [SKIP][43] ([i915#2582]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-5/igt@fbdev@eof.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@fbdev@eof.html

  * igt@fbdev@unaligned-read:
    - shard-skl:          [DMESG-WARN][45] ([i915#1982]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-skl4/igt@fbdev@unaligned-read.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl10/igt@fbdev@unaligned-read.html

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][47] ([i915#658]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-2/igt@feature_discovery@psr1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - {shard-rkl}:        [SKIP][49] ([i915#6252]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-iclb:         [FAIL][51] ([i915#5099]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb2/igt@gem_ctx_persistence@smoketest.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb3/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][53] ([i915#4525]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb5/igt@gem_exec_balancer@parallel.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][55] ([i915#2842]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [FAIL][57] ([i915#2842]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - {shard-rkl}:        [SKIP][59] ([i915#3281]) -> [PASS][60] +3 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_schedule@semaphore-power:
    - {shard-rkl}:        [SKIP][61] ([i915#7276]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - {shard-rkl}:        [SKIP][63] ([i915#3282]) -> [PASS][64] +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-1/igt@gem_partial_pwrite_pread@reads-uncached.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gen9_exec_parse@bb-start-param:
    - {shard-rkl}:        [SKIP][65] ([i915#2527]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-rkl}:        [WARN][67] ([i915#2681]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rps@engine-order:
    - {shard-rkl}:        [FAIL][69] -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-5/igt@i915_pm_rps@engine-order.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-1/igt@i915_pm_rps@engine-order.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-skl:          [FAIL][71] ([i915#2521]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1:
    - shard-skl:          [FAIL][73] ([i915#7230]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-skl1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][75] ([i915#79]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [FAIL][77] ([i915#79]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - {shard-rkl}:        [SKIP][79] ([i915#1849] / [i915#4098]) -> [PASS][80] +16 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane@plane-position-covered@pipe-a-planes:
    - {shard-rkl}:        [SKIP][83] ([i915#1849] / [i915#3558]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-2/igt@kms_plane@plane-position-covered@pipe-a-planes.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@kms_plane@plane-position-covered@pipe-a-planes.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@sprite_plane_onoff:
    - {shard-rkl}:        [SKIP][87] ([i915#1072]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-1/igt@kms_psr@sprite_plane_onoff.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-iclb:         [SKIP][89] ([i915#5519]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - {shard-rkl}:        [SKIP][91] ([i915#5461]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:
    - {shard-rkl}:        [SKIP][93] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-a.html

  * igt@kms_vblank@pipe-b-query-idle:
    - {shard-rkl}:        [SKIP][95] ([i915#1845] / [i915#4098]) -> [PASS][96] +23 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html

  * igt@perf@polling-small-buf:
    - {shard-rkl}:        [FAIL][97] ([i915#1722]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-1/igt@perf@polling-small-buf.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-5/igt@perf@polling-small-buf.html

  * igt@prime_vgem@basic-read:
    - {shard-rkl}:        [SKIP][99] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-1/igt@prime_vgem@basic-read.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-5/igt@prime_vgem@basic-read.html

  * igt@testdisplay:
    - {shard-rkl}:        [SKIP][101] ([i915#4098]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-rkl-1/igt@testdisplay.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@testdisplay.html

  
#### Warnings ####

  * igt@dmabuf@all@dma_fence_chain:
    - shard-skl:          [TIMEOUT][103] -> [INCOMPLETE][104] ([i915#1982] / [i915#6949])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-skl4/igt@dmabuf@all@dma_fence_chain.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl4/igt@dmabuf@all@dma_fence_chain.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][105] ([i915#6117]) -> [SKIP][106] ([i915#4525])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][107] ([i915#2920]) -> [SKIP][108] ([i915#658]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][109] ([fdo#111068] / [i915#658]) -> [SKIP][110] ([i915#2920])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][111] ([i915#2920]) -> [SKIP][112] ([fdo#111068] / [i915#658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][113], [FAIL][114], [FAIL][115]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120]) ([i915#180] / [i915#3002] / [i915#4312])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-apl2/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-apl6/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-apl3/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl3/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl2/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl7/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl8/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@runner@aborted.html
    - shard-skl:          [FAIL][121] ([i915#3002] / [i915#4312]) -> ([FAIL][122], [FAIL][123]) ([i915#3002] / [i915#4312] / [i915#6949])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-skl6/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl4/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
  [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5776]: https://gitlab.freedesktop.org/drm/intel/issues/5776
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6403]: https://gitlab.freedesktop.org/drm/intel/issues/6403
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7230]: https://gitlab.freedesktop.org/drm/intel/issues/7230
  [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12365 -> Patchwork_109902v2

  CI-20190529: 20190529
  CI_DRM_12365: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109902v2: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/index.html

--===============0241243335958091412==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>DRM scheduling cgroup controller (rev2)</td>=
</tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109902/">https://patchwork.freedesktop.org/series/109902/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109902v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109902v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12365_full -&gt; Patchwork_109902v=
2_full</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_109902v2_full need to be ver=
ified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109902v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109902v2_full:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-apl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4573">i915#4573</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_109902v2/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pip=
e-c-dp-1.html">DMESG-FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109902v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109902v2/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-iclb1/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-glk5/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/s=
hard-glk6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-icl=
b8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3989">i915#3989</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@kms_big_fb@4-tiled-32bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_109902v2/shard-iclb3/igt@kms_big_fb@x-tiled-max-hw-stride-32bp=
p-rotate-180.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-skl1/igt@kms_ccs@pipe-c-bad-rotation=
-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@kms_chamelium@dp-hpd-with-e=
nabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-skl1/igt@kms_chamelium@hdmi-audio-ed=
id.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109902v2/shard-apl3/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_109902v2/shard-glk3/igt@kms_cursor_legacy@flip-v=
s-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109902v2/shard-glk6/igt@kms_flip@2x-plain-fli=
p-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109902v2/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@b-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109902v2/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-iclb2/igt@kms=
_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default=
-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-skl9/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +55 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers@pipe-a-edp-1-invalid-num-scale=
rs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-skl1/igt@kms_plane_scaling@invalid-n=
um-scalers@pipe-a-edp-1-invalid-num-scalers.html">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5776">i915#5776</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-skl1/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902=
v2/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_109902v2/shard-tglb1/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-skl10/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl6/igt=
@perf@blocking.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-skl1/igt@perf@polling-small-buf.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722=
">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109902v2/shard-apl6/igt@sysfs_clients@fair-1.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-5/igt@fbdev@eof.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6=
/igt@fbdev@eof.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-skl4/igt@fbdev@unaligned-read.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10990=
2v2/shard-skl10/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-2/igt@feature_discovery@psr1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/s=
hard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
252">i915#6252</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_109902v2/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-ha=
ng@blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb2/igt@gem_ctx_persistence@smoketest.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5099">i915#5099=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09902v2/shard-iclb3/igt@gem_ctx_persistence@smoketest.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb5/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1099=
02v2/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09902v2/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109902v2/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i91=
5#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109902v2/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7276">i915#=
7276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109902v2/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-1/igt@gem_partial_pwrite_pread@reads-uncached.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282"=
>i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109902v2/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.h=
tml">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-4/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#252=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109902v2/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i91=
5#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109902v2/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-5/igt@i915_pm_rps@engine-order.html">FAIL</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/sha=
rd-rkl-1/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109902v2/shard-skl10/igt@kms_async_flips@alternate-s=
ync-async-flip@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-skl1/igt@kms_async_flips@async-flip-with-page-flip-even=
ts@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7230">i915#7230</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_109902v2/shard-skl4/igt@kms_async_flips@async=
-flip-with-page-flip-events@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109902v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">=
i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109902v2/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-mul=
tidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@kms_frontbuffer_trackin=
g@fbc-1p-pri-indfb-multidraw.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109902v2/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered@pipe-a-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-2/igt@kms_plane@plane-position-covered@pipe-a-plane=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@kms_plane@plane-position-cov=
ered@pipe-a-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109902v2/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1099=
02v2/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12365/shard-iclb7/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109902v2/shard-iclb1/igt@kms_psr_stress_test@invalidate=
-primary-flip-overlay.html">PASS</a></p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12365/shard-rkl-1/igt@kms_psr_stress_test@invalidate-primary-flip-ov=
erlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@kms_psr_stress_test@invalidate=
-primary-flip-overlay.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-1/igt@kms_universal_plane@disable-primary-vs-flip-p=
ipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-6/igt@kms_universal_plan=
e@disable-primary-vs-flip-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915=
#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109902v2/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html">PASS</a> +2=
3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-1/igt@perf@polling-small-buf.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1722">i915#1722</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2=
/shard-rkl-5/igt@perf@polling-small-buf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-1/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i91=
5#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109902v2/shard-rkl-5/igt@prime_vgem@basic-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-rkl-1/igt@testdisplay.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-rkl-=
6/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-skl4/igt@dmabuf@all@dma_fence_chain.html">TIMEOUT</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2=
/shard-skl4/igt@dmabuf@all@dma_fence_chain.html">INCOMPLETE</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#6949</a>)=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109902v2/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109902v2/shard-iclb5/igt@kms_psr2_sf@overlay-plane-mov=
e-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109902v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_109902v2/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12365/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12365/shard-apl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9902v2/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl2/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109902v2/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/shard-apl8/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_109902v2/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i91=
5#4312</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12365/shard-skl6/igt@runner@aborted.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109902v2/sh=
ard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_109902v2/shard-skl7/igt@runner@aborted.html"=
>FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002=
">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6949">i915#6949</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12365 -&gt; Patchwork_109902v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12365: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109902v2: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0241243335958091412==--
