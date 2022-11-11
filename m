Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC0C626549
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Nov 2022 00:18:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6BC110E010;
	Fri, 11 Nov 2022 23:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2292410E010;
 Fri, 11 Nov 2022 23:18:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1AC1FA9932;
 Fri, 11 Nov 2022 23:18:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5385215514314104792=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Date: Fri, 11 Nov 2022 23:18:47 -0000
Message-ID: <166820872706.872.9284830711249737334@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221111001832.4144910-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221111001832.4144910-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_add_the_GSC_CS_to_the_GuC_capture_list?=
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

--===============5385215514314104792==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: add the GSC CS to the GuC capture list
URL   : https://patchwork.freedesktop.org/series/110779/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12369_full -> Patchwork_110779v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110779v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110779v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110779v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_dc@dc6-dpms:
    - {shard-dg1}:        [SKIP][3] ([i915#3361]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-dg1-13/igt@i915_pm_dc@dc6-dpms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-dg1-17/igt@i915_pm_dc@dc6-dpms.html

  
Known issues
------------

  Here are the changes found in Patchwork_110779v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          NOTRUN -> [FAIL][7] ([i915#2846])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][12] -> [INCOMPLETE][13] ([i915#6179])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][15] -> [DMESG-WARN][16] ([i915#5566] / [i915#716])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl8/igt@gen9_exec_parse@allowed-single.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-skl:          [PASS][17] -> [WARN][18] ([i915#1804])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-apl:          [PASS][19] -> [INCOMPLETE][20] ([i915#7253])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl7/igt@i915_pm_rpm@system-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl2/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][21] -> [DMESG-FAIL][22] ([i915#5334])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][25] ([i915#2521])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl8/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-dp-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1:
    - shard-glk:          [PASS][26] -> [INCOMPLETE][27] ([i915#5584])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271]) +113 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +6 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@vga-hpd:
    - shard-glk:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@ctm-red-to-blue:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl3/igt@kms_color_chamelium@ctm-red-to-blue.html

  * igt@kms_color_chamelium@gamma:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl10/igt@kms_color_chamelium@gamma.html

  * igt@kms_content_protection@legacy@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][34] ([i915#7173])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl3/igt@kms_content_protection@legacy@pipe-a-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-apl:          [PASS][35] -> [FAIL][36] ([i915#2346])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#79]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#4839])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([i915#2587] / [i915#2672])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([i915#2672]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([i915#3555])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +8 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-glk:          NOTRUN -> [SKIP][46] ([fdo#109271]) +27 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-b-hdmi-a-2:
    - shard-glk:          NOTRUN -> [FAIL][47] ([i915#4573]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][48] -> [SKIP][49] ([i915#5176]) +4 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([i915#5235]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-glk:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#658])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#658]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl3/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:
    - shard-iclb:         NOTRUN -> [FAIL][54] ([i915#5939]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([fdo#109441]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-skl:          [PASS][57] -> [SKIP][58] ([fdo#109271])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-skl10/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2437])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#1542])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-skl1/igt@perf@blocking.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl4/igt@perf@blocking.html

  * igt@perf_pmu@interrupts-sync:
    - shard-glk:          [PASS][62] -> [DMESG-WARN][63] ([i915#118])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-glk6/igt@perf_pmu@interrupts-sync.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk2/igt@perf_pmu@interrupts-sync.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2994]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@sysfs_clients@fair-1.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {shard-rkl}:        [SKIP][65] ([i915#2582]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-2/igt@fbdev@read.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-6/igt@fbdev@read.html

  * igt@gem_ctx_persistence@hang:
    - {shard-rkl}:        [SKIP][67] ([i915#6252]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-5/igt@gem_ctx_persistence@hang.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-1/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][69] ([i915#4525]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - {shard-rkl}:        [SKIP][71] ([i915#6247]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-1/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][73] ([i915#2842]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][75] ([i915#2190]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-tglb3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - {shard-rkl}:        [SKIP][77] ([i915#3282]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - {shard-rkl}:        [SKIP][79] ([i915#2527]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-iclb:         [DMESG-WARN][81] ([i915#1982]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][83] ([i915#3989] / [i915#454]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - {shard-dg1}:        [FAIL][85] ([i915#3591]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rps@engine-order:
    - shard-apl:          [FAIL][87] ([i915#6537]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl7/igt@i915_pm_rps@engine-order.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl1/igt@i915_pm_rps@engine-order.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [INCOMPLETE][89] ([i915#7232]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl2/igt@i915_suspend@fence-restore-untiled.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - {shard-rkl}:        [SKIP][91] ([i915#1845] / [i915#4098]) -> [PASS][92] +6 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_fbcon_fbt@psr:
    - {shard-rkl}:        [SKIP][93] ([fdo#110189] / [i915#3955]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-2/igt@kms_fbcon_fbt@psr.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [INCOMPLETE][95] ([i915#4839]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - {shard-rkl}:        [SKIP][97] ([i915#1849] / [i915#4098]) -> [PASS][98] +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane@plane-position-hole-dpms@pipe-b-planes:
    - {shard-rkl}:        [SKIP][99] ([i915#1849] / [i915#3558]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-2/igt@kms_plane@plane-position-hole-dpms@pipe-b-planes.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms@pipe-b-planes.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][101] ([fdo#109441]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb3/igt@kms_psr@psr2_dpms.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [INCOMPLETE][103] -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][105] ([i915#2436]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@polling:
    - {shard-rkl}:        [FAIL][107] ([i915#5639]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-rkl-1/igt@perf@polling.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-1/igt@perf@polling.html
    - shard-skl:          [FAIL][109] ([i915#1542]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-skl7/igt@perf@polling.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl10/igt@perf@polling.html

  * igt@perf@stress-open-close:
    - shard-glk:          [INCOMPLETE][111] ([i915#5213]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-glk1/igt@perf@stress-open-close.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@perf@stress-open-close.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-glk:          [FAIL][113] ([i915#1731]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-glk3/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk9/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  
#### Warnings ####

  * igt@dmabuf@all@dma_fence_chain:
    - shard-skl:          [TIMEOUT][115] ([i915#6949]) -> [INCOMPLETE][116] ([i915#1982] / [i915#6949])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-skl4/igt@dmabuf@all@dma_fence_chain.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl1/igt@dmabuf@all@dma_fence_chain.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [FAIL][117] ([i915#6117]) -> [SKIP][118] ([i915#4525])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_pread@exhaustion:
    - shard-tglb:         [INCOMPLETE][119] ([i915#7248]) -> [WARN][120] ([i915#2658])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-tglb6/igt@gem_pread@exhaustion.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-tglb2/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglb:         [WARN][121] ([i915#2658]) -> [INCOMPLETE][122] ([i915#7248])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-tglb3/igt@gem_pwrite@basic-exhaustion.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][123] ([i915#2920]) -> [SKIP][124] ([i915#658]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][125] ([i915#2920]) -> [SKIP][126] ([fdo#111068] / [i915#658]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][127], [FAIL][128]) ([i915#3002] / [i915#4312]) -> ([FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl8/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl8/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@runner@aborted.html
    - shard-skl:          [FAIL][134] ([i915#3002] / [i915#4312]) -> ([FAIL][135], [FAIL][136]) ([i915#3002] / [i915#4312] / [i915#6949])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-skl10/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl4/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5584]: https://gitlab.freedesktop.org/drm/intel/issues/5584
  [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
  [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6179]: https://gitlab.freedesktop.org/drm/intel/issues/6179
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7232]: https://gitlab.freedesktop.org/drm/intel/issues/7232
  [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
  [i915#7253]: https://gitlab.freedesktop.org/drm/intel/issues/7253
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12369 -> Patchwork_110779v1

  CI-20190529: 20190529
  CI_DRM_12369: cdcedc1a52e4f4ec01a8f8c51065d651c31bea87 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110779v1: cdcedc1a52e4f4ec01a8f8c51065d651c31bea87 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/index.html

--===============5385215514314104792==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: add the GSC CS to the GuC capt=
ure list</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/110779/">https://patchwork.freedesktop.org/series/110779/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_110779v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_110779v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12369_full -&gt; Patchwork_110779v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110779v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_110779v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
110779v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_vblank@pipe-a-ts-continuation-suspend:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-skl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110779v1/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_dc@dc6-dpms:<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-dg1-13/igt@i915_pm_dc@dc6-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/=
shard-dg1-17/igt@i915_pm_dc@dc6-dpms.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110779v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10779v1/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@gem_exec_fair@basic-deadlin=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
779v1/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0779v1/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl6/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v=
1/shard-apl2/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6179">i915#6179</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl8/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v=
1/shard-apl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-skl10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10779v1/shard-skl4/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl7/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/sh=
ard-apl2/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/7253">i915#7253</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779=
v1/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110779v1/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-apl8/igt@kms_async_flips@alternate-s=
ync-async-flip@pipe-b-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hd=
mi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transi=
tion-fencing@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-glk6/igt@kms_atomic_tra=
nsition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5584">i9=
15#5584</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@kms_big_fb@4-tiled-32bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +113 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@kms_ccs@pipe-c-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@kms_chamelium@vga-hpd.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-red-to-blue:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-apl3/igt@kms_color_chamelium@ctm-red=
-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@gamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-skl10/igt@kms_color_chamelium@gamma.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-apl3/igt@kms_content_protection@lega=
cy@pipe-a-dp-1.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110779v1/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor@atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_110779v1/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-int=
erruptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/79">i915#79</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_110779v1/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@c-ed=
p1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#=
2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672"=
>i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bp=
p-linear-downscaling@pipe-a-default-mode.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@k=
ms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-def=
ault-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-skl10/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +8 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@kms_frontbuffer_tracking@fb=
cpsr-rgb565-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-b-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb3/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@kms_plane_s=
caling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb3/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-c-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-glk3/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-apl3/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010=
@pipe-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5939">i915#5939</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1=
/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-skl10/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_110779v1/shard-skl1/igt@kms_psr_stress_test@invalidate-prima=
ry-flip-overlay.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-apl8/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-skl1/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl4/igt@=
perf@blocking.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@interrupts-sync:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-glk6/igt@perf_pmu@interrupts-sync.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shar=
d-glk2/igt@perf_pmu@interrupts-sync.html">DMESG-WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@sysfs_clients@fair-1.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-rkl-2/igt@fbdev@read.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-6=
/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-rkl-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i915#6252</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779=
v1/shard-rkl-1/igt@gem_ctx_persistence@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110779v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6247">i915#624=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
110779v1/shard-rkl-1/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10779v1/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/=
shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_110779v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after=
-reads.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i9=
15#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_110779v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_110779v1/shard-iclb6/igt@i915_pipe_stress@stress-xrgb8888-yt=
iled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11077=
9v1/shard-iclb2/igt@i915_pm_dc@dc6-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i9=
15#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_110779v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl7/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v=
1/shard-apl1/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl2/igt@i915_suspend@fence-restore-untiled.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7232"=
>i915#7232</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110779v1/shard-apl3/igt@i915_suspend@fence-restore-untiled.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-6/igt@kms_big_fb@x-tiled-ma=
x-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-rkl-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11077=
9v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4839">i91=
5#4839</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110779v1/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-6/igt@kms_frontbuffer_tra=
cking@psr-1p-primscrn-cur-indfb-move.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-rkl-2/igt@kms_plane@plane-position-hole-dpms@pipe-b-pla=
nes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110779v1/shard-rkl-6/igt@kms_plane@plane-position-h=
ole-dpms@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb3/igt@kms_psr@psr2_dpms.html">SKIP</a> (<a href=3D"=
https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/sh=
ard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110779v1/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/24=
36">i915#2436</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110779v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-coun=
ters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12369/shard-rkl-1/igt@perf@polling.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5639">i915#5639</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-rkl-=
1/igt@perf@polling.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12369/shard-skl7/igt@perf@polling.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl10=
/igt@perf@polling.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-glk1/igt@perf@stress-open-close.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5213">i915#5213</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
779v1/shard-glk3/igt@perf@stress-open-close.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-glk3/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1731">i915=
#1731</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_110779v1/shard-glk9/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS<=
/a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@dmabuf@all@dma_fence_chain:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-skl4/igt@dmabuf@all@dma_fence_chain.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#6949<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0779v1/shard-skl1/igt@dmabuf@all@dma_fence_chain.html">INCOMPLETE</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6949">i915#694=
9</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_110779v1/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-tglb6/igt@gem_pread@exhaustion.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1107=
79v1/shard-tglb2/igt@gem_pread@exhaustion.html">WARN</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-tglb3/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
779v1/shard-tglb6/igt@gem_pwrite@basic-exhaustion.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7248">i915#7248</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110779v1/shard-iclb3/igt@kms_psr2_sf@overlay-pla=
ne-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110779v1/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-c=
ontinuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12369/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12369/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110779v1/shard-apl1/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779=
v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110779v1/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-apl6/igt@runner=
@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12369/shard-skl10/igt@runner@aborted.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110779v1=
/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_110779v1/shard-skl1/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6949">i915#6949</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12369 -&gt; Patchwork_110779v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12369: cdcedc1a52e4f4ec01a8f8c51065d651c31bea87 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110779v1: cdcedc1a52e4f4ec01a8f8c51065d651c31bea87 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5385215514314104792==--
