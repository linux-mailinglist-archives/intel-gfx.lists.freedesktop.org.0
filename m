Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E96987B1B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 00:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7751110E322;
	Thu, 26 Sep 2024 22:23:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20ADC10E199;
 Thu, 26 Sep 2024 22:22:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5123537557864347831=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/hdmi=3A_Convert_co?=
 =?utf-8?q?mma_to_semicolon?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shen Lichuan" <shenlichuan@vivo.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2024 22:22:59 -0000
Message-ID: <172738937911.1109124.13723095906373724223@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240918032804.9269-1-shenlichuan@vivo.com>
In-Reply-To: <20240918032804.9269-1-shenlichuan@vivo.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5123537557864347831==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdmi: Convert comma to semicolon
URL   : https://patchwork.freedesktop.org/series/138988/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15448_full -> Patchwork_138988v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_138988v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_138988v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 9)
------------------------------

  Additional (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_138988v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][1] +8 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_exec_balancer@nop:
    - shard-dg2:          [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@gem_exec_balancer@nop.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_schedule@pi-common:
    - shard-tglu:         NOTRUN -> [FAIL][4] +5 other tests fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_exec_schedule@pi-common.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][5] +2 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_async_flips@test-cursor.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][6] +5 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-mtlp:         [PASS][7] -> [ABORT][8] +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-2/igt@kms_plane@pixel-format-source-clamping.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-7/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-tglu:         [PASS][9] -> [SKIP][10] +59 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_plane_lowres@tiling-y.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][11] +3 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][12] +6 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html

  * igt@kms_vblank@ts-continuation-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][13] +1 other test incomplete
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk9/igt@kms_vblank@ts-continuation-suspend.html

  * igt@perf_pmu@busy-idle-no-semaphores:
    - shard-mtlp:         [PASS][14] -> [FAIL][15] +1 other test fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-4/igt@perf_pmu@busy-idle-no-semaphores.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-4/igt@perf_pmu@busy-idle-no-semaphores.html

  * igt@perf_pmu@multi-client@rcs0:
    - shard-dg2:          [PASS][16] -> [FAIL][17] +1 other test fail
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-6/igt@perf_pmu@multi-client@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-6/igt@perf_pmu@multi-client@rcs0.html

  
#### Warnings ####

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         [SKIP][18] ([i915#1769] / [i915#3555]) -> [SKIP][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [SKIP][20] ([i915#5286]) -> [SKIP][21] +6 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         [SKIP][22] ([i915#6095]) -> [SKIP][23] +8 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-tglu:         [SKIP][24] ([i915#12042]) -> [SKIP][25] +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_content_protection@legacy:
    - shard-tglu:         [SKIP][26] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) -> [SKIP][27] +2 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_content_protection@legacy.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         [SKIP][28] ([i915#11453]) -> [SKIP][29] +2 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         [SKIP][30] ([i915#4103]) -> [SKIP][31] +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][32] ([i915#5354]) -> [SKIP][33] +7 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         [SKIP][34] ([i915#3555] / [i915#8228]) -> [SKIP][35] +1 other test skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_hdr@bpc-switch-suspend.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         [SKIP][36] ([i915#3555]) -> [SKIP][37] +4 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_scaling_modes@scaling-mode-full.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         [SKIP][38] ([i915#8623]) -> [SKIP][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-10/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu:         [SKIP][40] ([i915#3555] / [i915#9906]) -> [SKIP][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_vrr@negative-basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_vrr@negative-basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_schedule@pi-ringfull@vecs0:
    - {shard-tglu-1}:     NOTRUN -> [FAIL][42] +5 other tests fail
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-1/igt@gem_exec_schedule@pi-ringfull@vecs0.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - {shard-tglu-1}:     [PASS][43] -> [FAIL][44] +1 other test fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c:
    - {shard-tglu-1}:     NOTRUN -> [SKIP][45] +72 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c.html

  
Known issues
------------

  Here are the changes found in Patchwork_138988v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#9318])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@eof:
    - shard-dg2:          [PASS][47] -> [SKIP][48] ([i915#2582]) +2 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@fbdev@eof.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@fbdev@eof.html

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#7697])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#9323]) +2 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][51] -> [FAIL][52] ([i915#12027])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#280])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_big@single:
    - shard-tglu:         NOTRUN -> [ABORT][54] ([i915#11713])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-9/igt@gem_exec_big@single.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [PASS][55] -> [TIMEOUT][56] ([i915#3778] / [i915#7016]) +1 other test timeout
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#3539] / [i915#4852]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          NOTRUN -> [FAIL][58] ([i915#2846])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk8/igt@gem_exec_fair@basic-deadline.html
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#4473] / [i915#4771]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@gem_exec_fair@basic-deadline.html
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3539] / [i915#4852])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-rkl:          NOTRUN -> [FAIL][61] ([i915#2842]) +1 other test fail
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-rkl:          [PASS][62] -> [FAIL][63] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#3281]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@gem_exec_reloc@basic-cpu-wc-active.html
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3281]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-wc-active.html
    - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#3281])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@gem_exec_reloc@basic-cpu-wc-active.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#3281]) +11 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#4812])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#4613] / [i915#7582])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][70] ([i915#4613]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][71] -> [TIMEOUT][72] ([i915#5493]) +1 other test timeout
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#4613]) +4 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@gem_lmem_swapping@verify.html

  * igt@gem_madvise@dontneed-before-exec:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#3282]) +2 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@gem_madvise@dontneed-before-exec.html
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3282])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@gem_madvise@dontneed-before-exec.html
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#3282])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@gem_madvise@dontneed-before-exec.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4083])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@gem_mmap_wc@bad-object.html
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#4083]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-16/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@bad-size:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4083])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@gem_mmap_wc@bad-size.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#4270]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@gem_pxp@create-regular-context-1.html
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#4270])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#4270])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#4270]) +2 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#8428])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#5190] / [i915#8428]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_render_tiled_blits@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4079])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@gem_render_tiled_blits@basic.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#8411])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#3282]) +6 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#3297]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#2527] / [i915#2856])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#2527]) +4 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@load:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#6227])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [PASS][93] -> [ABORT][94] ([i915#9820])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [PASS][95] -> [ABORT][96] ([i915#9820])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#8399])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#6590]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-dg1:          [PASS][99] -> [FAIL][100] ([i915#3591])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#5723])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-9/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-glk:          NOTRUN -> [SKIP][102] +39 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#3555])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#9531])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#9531])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-rkl:          [PASS][106] -> [FAIL][107] ([i915#11808]) +1 other test fail
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-dg2:          [PASS][108] -> [FAIL][109] ([i915#5956]) +1 other test fail
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
    - shard-mtlp:         [PASS][110] -> [FAIL][111] ([i915#11808] / [i915#5956]) +3 other tests fail
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#4538] / [i915#5286])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#9197]) +3 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][114] -> [FAIL][115] ([i915#5138])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#5286]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][117] +2 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-10/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#5286]) +5 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#3638]) +3 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][120] +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#4538] / [i915#5190])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#6095]) +4 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#6095]) +54 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#12042]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#6095]) +112 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#6095]) +74 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#10307] / [i915#6095]) +180 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#12042])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4087]) +3 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#7828]) +2 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#7828]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-9/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#7828])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#7828]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#7828]) +8 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@deep-color:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#3555] / [i915#9979])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#7118] / [i915#9424])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#3116] / [i915#3299]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#11453])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3555]) +5 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#4103]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][142] +28 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#9809])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][144] -> [FAIL][145] ([i915#2346])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#9723])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#9723])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#8588])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#3804])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [PASS][150] -> [SKIP][151] ([i915#3555]) +4 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#3555] / [i915#3840]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#3555] / [i915#3840])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [PASS][154] -> [FAIL][155] ([i915#4767])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#1839])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#3637]) +3 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#3637] / [i915#3966])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@dpms-off-confusion:
    - shard-tglu:         [PASS][159] -> [SKIP][160] ([i915#3637]) +8 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_flip@dpms-off-confusion.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_flip@dpms-off-confusion.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-dg2:          [PASS][161] -> [FAIL][162] ([i915#79])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
    - shard-dg2:          NOTRUN -> [FAIL][163] ([i915#79])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-mtlp:         NOTRUN -> [FAIL][164] ([i915#2122]) +2 other tests fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:
    - shard-tglu:         NOTRUN -> [FAIL][165] ([i915#2122]) +2 other tests fail
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#2672])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#2672] / [i915#3555]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#2672]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#2587] / [i915#2672]) +3 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#2587] / [i915#2672] / [i915#3555])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff:
    - shard-tglu:         [PASS][171] -> [SKIP][172] ([i915#1849]) +11 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-snb:          [PASS][173] -> [SKIP][174] +4 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#1825]) +4 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [PASS][176] -> [SKIP][177] ([i915#5354]) +10 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][178] +4 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#5354]) +6 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][180] +39 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#3458]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#1825]) +33 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3023]) +23 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#3458]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#3555] / [i915#8228]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-swap:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#3555] / [i915#8228])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_hdr@static-swap.html
    - shard-dg2:          [PASS][187] -> [SKIP][188] ([i915#3555] / [i915#8228])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_hdr@static-swap.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_hdr@static-swap.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#1839])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#6301])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@plane-position-covered:
    - shard-tglu:         [PASS][191] -> [SKIP][192] ([i915#8825])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_plane@plane-position-covered.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-dg2:          [PASS][193] -> [SKIP][194] ([i915#8825]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_plane@plane-position-hole-dpms.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_alpha_blend@constant-alpha-mid:
    - shard-dg2:          [PASS][195] -> [SKIP][196] ([i915#7294])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_alpha_blend@constant-alpha-mid.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html

  * igt@kms_plane_alpha_blend@constant-alpha-min:
    - shard-tglu:         [PASS][197] -> [SKIP][198] ([i915#7294]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_plane_alpha_blend@constant-alpha-min.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_alpha_blend@constant-alpha-min.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][199] ([i915#8292])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-dg2:          [PASS][200] -> [SKIP][201] ([i915#8152] / [i915#9423])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@invalid-parameters.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
    - shard-tglu:         [PASS][202] -> [SKIP][203] ([i915#3555] / [i915#8152])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#12247]) +7 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-tglu:         [PASS][205] -> [SKIP][206] ([i915#8152]) +4 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#12247] / [i915#6953])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#12247] / [i915#6953])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-dg2:          [PASS][209] -> [SKIP][210] ([i915#6953] / [i915#8152] / [i915#9423])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [PASS][211] -> [SKIP][212] ([i915#12247] / [i915#8152]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#12247]) +8 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html
    - shard-mtlp:         NOTRUN -> [SKIP][214] ([i915#12247]) +3 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:
    - shard-dg2:          [PASS][215] -> [SKIP][216] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-tglu:         [PASS][217] -> [SKIP][218] ([i915#12247] / [i915#3558] / [i915#8152])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a:
    - shard-tglu:         [PASS][219] -> [SKIP][220] ([i915#12247]) +14 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html
    - shard-dg1:          [PASS][221] -> [DMESG-WARN][222] ([i915#4423]) +1 other test dmesg-warn
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:
    - shard-tglu:         [PASS][223] -> [SKIP][224] ([i915#12247] / [i915#8152]) +1 other test skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#12247] / [i915#3555])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:
    - shard-snb:          NOTRUN -> [SKIP][226] +12 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-snb4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-dg2:          [PASS][227] -> [SKIP][228] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-tglu:         [PASS][229] -> [SKIP][230] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b:
    - shard-dg2:          [PASS][231] -> [SKIP][232] ([i915#12247]) +8 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [PASS][233] -> [SKIP][234] ([i915#8152])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#5354])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html
    - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#5354])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#3361])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][238] -> [SKIP][239] ([i915#9519]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-tglu:         [PASS][240] -> [SKIP][241] ([i915#9519]) +1 other test skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [PASS][242] -> [SKIP][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_pm_rpm@i2c.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][244] -> [SKIP][245] ([i915#9519])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-dg2:          [PASS][246] -> [SKIP][247] ([i915#3547])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_pm_rpm@system-suspend-modeset.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][248] ([i915#9808]) +2 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1.html

  * igt@kms_psr@fbc-psr2-primary-blt:
    - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#1072] / [i915#9732]) +4 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-14/igt@kms_psr@fbc-psr2-primary-blt.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#1072] / [i915#9732]) +18 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@pr-sprite-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#9688]) +2 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_psr@pr-sprite-mmap-cpu.html
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#1072] / [i915#9732]) +2 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@kms_psr@pr-sprite-mmap-cpu.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#9732]) +10 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#9685])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][255] ([i915#9685])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-16/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-dg2:          NOTRUN -> [SKIP][256] ([i915#9685])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_setmode@basic:
    - shard-tglu:         [PASS][257] -> [SKIP][258] ([i915#3555]) +3 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_setmode@basic.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][259] -> [FAIL][260] ([IGT#2])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_sysfs_edid_timing.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@query-forked-hang:
    - shard-dg2:          [PASS][261] -> [SKIP][262] ([i915#9197]) +34 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_vblank@query-forked-hang.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_vblank@query-forked-hang.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#9906])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][264] ([i915#3555]) +1 other test skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#2437])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#2437] / [i915#9412])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg1:          NOTRUN -> [SKIP][267] ([i915#3708] / [i915#4077])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@prime_vgem@basic-fence-mmap.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all:
    - shard-rkl:          [FAIL][268] ([i915#12179]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][270] ([i915#7742]) -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@fbdev@unaligned-read:
    - shard-dg2:          [SKIP][272] ([i915#2582]) -> [PASS][273]
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@fbdev@unaligned-read.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@fbdev@unaligned-read.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-mtlp:         [FAIL][274] ([i915#12027]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-rkl:          [FAIL][276] ([i915#2842]) -> [PASS][277] +1 other test pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@gem_exec_fair@basic-pace-share.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][278] ([i915#2842]) -> [PASS][279] +1 other test pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][280] ([i915#9820]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][282] ([i915#3591]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][284] ([i915#7790]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb4/igt@i915_pm_rps@reset.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [SKIP][286] ([i915#7984]) -> [PASS][287]
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-4/igt@i915_power@sanity.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-4/igt@i915_power@sanity.html

  * igt@kms_addfb_basic@master-rmfb:
    - shard-dg1:          [DMESG-WARN][288] ([i915#4423]) -> [PASS][289] +1 other test pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-13/igt@kms_addfb_basic@master-rmfb.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@kms_addfb_basic@master-rmfb.html

  * igt@kms_big_joiner@basic-force-joiner:
    - shard-dg2:          [SKIP][290] -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_big_joiner@basic-force-joiner.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-10/igt@kms_big_joiner@basic-force-joiner.html

  * igt@kms_cursor_crc@cursor-dpms:
    - shard-tglu:         [SKIP][292] -> [PASS][293] +27 other tests pass
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_cursor_crc@cursor-dpms.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_cursor_crc@cursor-dpms.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-mtlp:         [INCOMPLETE][294] -> [PASS][295] +1 other test pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-8/igt@kms_cursor_crc@cursor-suspend.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][296] ([i915#2122]) -> [PASS][297] +7 other tests pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-snb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][298] ([i915#2122]) -> [PASS][299] +2 other tests pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible:
    - shard-tglu:         [SKIP][300] ([i915#3637]) -> [PASS][301] +3 other tests pass
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip@dpms-vs-vblank-race-interruptible.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_flip@dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@wf_vblank-ts-check:
    - shard-dg2:          [FAIL][302] ([i915#2122]) -> [PASS][303]
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_flip@wf_vblank-ts-check.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_flip@wf_vblank-ts-check.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-dg2:          [SKIP][304] ([i915#3555]) -> [PASS][305] +2 other tests pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglu:         [SKIP][306] ([i915#1849]) -> [PASS][307] +4 other tests pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-dg2:          [SKIP][308] ([i915#5354]) -> [PASS][309] +11 other tests pass
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_invalid_mode@bad-vtotal:
    - shard-tglu:         [SKIP][310] ([i915#3555]) -> [PASS][311] +1 other test pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_invalid_mode@bad-vtotal.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_invalid_mode@bad-vtotal.html

  * igt@kms_plane@plane-position-hole:
    - shard-tglu:         [SKIP][312] ([i915#8825]) -> [PASS][313] +1 other test pass
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane@plane-position-hole.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@constant-alpha-min:
    - shard-dg2:          [SKIP][314] ([i915#7294]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_plane_alpha_blend@constant-alpha-min.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-tglu:         [SKIP][316] ([i915#7294]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-tglu:         [SKIP][318] ([i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][319]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@invalid-num-scalers.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-tglu:         [SKIP][320] ([i915#8152]) -> [PASS][321] +3 other tests pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:
    - shard-dg2:          [SKIP][322] ([i915#8152] / [i915#9423]) -> [PASS][323] +1 other test pass
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][324] ([i915#8152]) -> [PASS][325] +1 other test pass
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-dg2:          [SKIP][326] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-dg2:          [SKIP][328] ([i915#12247]) -> [PASS][329] +8 other tests pass
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][330] ([i915#12247] / [i915#8152]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-tglu:         [SKIP][332] ([i915#12247] / [i915#6953] / [i915#8152]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a:
    - shard-tglu:         [SKIP][334] ([i915#12247]) -> [PASS][335] +8 other tests pass
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:
    - shard-tglu:         [SKIP][336] ([i915#12247] / [i915#8152]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][338] ([i915#4281]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][340] ([i915#9340]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [SKIP][342] ([i915#9519]) -> [PASS][343] +1 other test pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-rkl:          [SKIP][344] ([i915#9519]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          [SKIP][346] ([i915#11521]) -> [PASS][347] +1 other test pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-mtlp:         [FAIL][348] -> [PASS][349] +1 other test pass
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_sysfs_edid_timing:
    - shard-snb:          [FAIL][350] ([IGT#2] / [i915#6493]) -> [PASS][351]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb2/igt@kms_sysfs_edid_timing.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-snb6/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@ts-continuation-idle-hang:
    - shard-dg2:          [SKIP][352] ([i915#9197]) -> [PASS][353] +33 other tests pass
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_vblank@ts-continuation-idle-hang.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_vblank@ts-continuation-idle-hang.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][354] ([i915#2876]) -> [FAIL][355] ([i915#2842])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][356] ([i915#10131] / [i915#9820]) -> [ABORT][357] ([i915#10887] / [i915#11231])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          [SKIP][358] ([i915#9197]) -> [SKIP][359] ([i915#7091])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - shard-dg1:          [SKIP][360] ([i915#4077]) -> [SKIP][361] ([i915#4077] / [i915#4423])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-12/igt@i915_pm_rpm@gem-evict-pwrite.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@i915_pm_rpm@gem-evict-pwrite.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          [SKIP][362] ([i915#9197]) -> [SKIP][363] ([i915#1769] / [i915#3555])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg2:          [SKIP][364] ([i915#9197]) -> [SKIP][365] +1 other test skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][366] -> [SKIP][367] ([i915#9197]) +2 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-tglu:         [SKIP][368] -> [SKIP][369] ([i915#5286]) +3 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][370] ([i915#5190] / [i915#9197]) -> [SKIP][371] ([i915#4538] / [i915#5190]) +4 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][372] ([i915#5190]) -> [SKIP][373] ([i915#5190] / [i915#9197]) +2 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg2:          [SKIP][374] ([i915#4538] / [i915#5190]) -> [SKIP][375] ([i915#5190] / [i915#9197]) +5 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          [SKIP][376] ([i915#5190] / [i915#9197]) -> [SKIP][377] ([i915#5190])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][378] ([i915#9197]) -> [SKIP][379] ([i915#12042]) +1 other test skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][380] ([i915#9197]) -> [SKIP][381] ([i915#10307] / [i915#6095]) +5 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [SKIP][382] ([i915#10307] / [i915#6095]) -> [SKIP][383] ([i915#9197]) +6 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         [SKIP][384] -> [SKIP][385] ([i915#6095]) +4 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][386] ([i915#12042]) -> [SKIP][387] ([i915#9197])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][388] ([i915#7118] / [i915#9424]) -> [SKIP][389] ([i915#9197])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          [SKIP][390] ([i915#9197]) -> [SKIP][391] ([i915#9424])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_content_protection@lic-type-1.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][392] ([i915#9424]) -> [SKIP][393] ([i915#9433])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-15/igt@kms_content_protection@mei-interface.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [TIMEOUT][394] ([i915#7173]) -> [SKIP][395] ([i915#7118])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_content_protection@srm.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][396] ([i915#9197]) -> [SKIP][397] ([i915#7118] / [i915#9424])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_content_protection@type1.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          [SKIP][398] ([i915#11453] / [i915#3359]) -> [SKIP][399] ([i915#11453]) +1 other test skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          [SKIP][400] ([i915#11453]) -> [SKIP][401] ([i915#11453] / [i915#3359])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg2:          [SKIP][402] ([i915#3555]) -> [SKIP][403] ([i915#9197]) +1 other test skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          [SKIP][404] ([i915#9197]) -> [SKIP][405] ([i915#11453])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-dg2:          [SKIP][406] ([i915#9197]) -> [SKIP][407] ([i915#3555]) +2 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x32.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglu:         [SKIP][408] -> [SKIP][409] ([i915#11453])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          [SKIP][410] ([i915#11453]) -> [SKIP][411] ([i915#9197])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          [SKIP][412] ([i915#9197]) -> [SKIP][413] ([i915#5354]) +3 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          [SKIP][414] ([i915#9197]) -> [SKIP][415] ([i915#4103] / [i915#4213])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          [SKIP][416] ([i915#5354]) -> [SKIP][417] ([i915#9197]) +3 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][418] ([i915#9197]) -> [SKIP][419] ([i915#9067])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglu:         [SKIP][420] -> [SKIP][421] ([i915#3555]) +2 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][422] ([i915#9197]) -> [SKIP][423] ([i915#8812])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          [SKIP][424] ([i915#3555] / [i915#3840]) -> [SKIP][425] ([i915#9197])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_dsc@dsc-with-bpc-formats.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         [SKIP][426] -> [SKIP][427] ([i915#3555] / [i915#3840])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_dsc@dsc-with-formats.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          [SKIP][428] ([i915#4881]) -> [SKIP][429] ([i915#9197])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_fence_pin_leak.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_fence_pin_leak.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu:         [SKIP][430] ([i915#2672] / [i915#3555]) -> [SKIP][431] ([i915#3555]) +4 other tests skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][432] ([i915#3555]) -> [SKIP][433] ([i915#2672] / [i915#3555])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu:         [SKIP][434] ([i915#3555]) -> [SKIP][435] ([i915#2587] / [i915#2672] / [i915#3555]) +1 other test skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          [SKIP][436] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][437] ([i915#3555] / [i915#5190]) +2 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         [SKIP][438] ([i915#3555]) -> [SKIP][439] ([i915#2672] / [i915#3555])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          [SKIP][440] ([i915#2672] / [i915#3555]) -> [SKIP][441] ([i915#3555]) +1 other test skip
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
    - shard-dg1:          [SKIP][442] -> [SKIP][443] ([i915#4423]) +1 other test skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-tglu:         [SKIP][444] ([i915#1849]) -> [SKIP][445] +29 other tests skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][446] ([i915#5354]) -> [SKIP][447] ([i915#3458]) +7 other tests skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][448] -> [SKIP][449] ([i915#5354]) +9 other tests skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg2:          [SKIP][450] ([i915#3458]) -> [SKIP][451] ([i915#10433] / [i915#3458]) +3 other tests skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][452] ([i915#10433] / [i915#3458]) -> [SKIP][453] ([i915#3458]) +3 other tests skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
    - shard-dg2:          [SKIP][454] ([i915#3458]) -> [SKIP][455] ([i915#5354]) +7 other tests skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         [SKIP][456] -> [SKIP][457] ([i915#1849]) +64 other tests skip

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/index.html

--===============5123537557864347831==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/hdmi: Convert comma to semicolon</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138988/">https://patchwork.freedesktop.org/series/138988/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15448_full -&gt; Patchwork_138988v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_138988v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_138988v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 9)</h2>
<p>Additional (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_138988v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@gem_exec_balancer@nop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@gem_exec_balancer@nop.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_exec_schedule@pi-common.html">FAIL</a> +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_async_flips@test-cursor.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-2/igt@kms_plane@pixel-format-source-clamping.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-7/igt@kms_plane@pixel-format-source-clamping.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_plane_lowres@tiling-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_lowres@tiling-y.html">SKIP</a> +59 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk9/igt@kms_vblank@ts-continuation-suspend.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-no-semaphores:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-4/igt@perf_pmu@busy-idle-no-semaphores.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-4/igt@perf_pmu@busy-idle-no-semaphores.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@multi-client@rcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-6/igt@perf_pmu@multi-client@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-6/igt@perf_pmu@multi-client@rcs0.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12042]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_content_protection@legacy.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_scaling_modes@scaling-mode-full.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-10/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_vrr@negative-basic.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@vecs0:</p>
<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-1/igt@gem_exec_schedule@pi-ringfull@vecs0.html">FAIL</a> +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>{shard-tglu-1}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c:</p>
<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c.html">SKIP</a> +72 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138988v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@fbdev@eof.html">SKIP</a> ([i915#2582]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@gem_ccs@suspend-resume.html">SKIP</a> ([i915#9323]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-9/igt@gem_exec_big@single.html">ABORT</a> ([i915#11713])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT</a> ([i915#3778] / [i915#7016]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@gem_exec_fair@basic-deadline.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@gem_exec_fair@basic-deadline.html">SKIP</a> ([i915#4473] / [i915#4771]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@gem_exec_fair@basic-deadline.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@gem_exec_fair@basic-none-rrul.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-6/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@gem_exec_reloc@basic-cpu-wc-active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-wc-active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@gem_exec_reloc@basic-cpu-wc-active.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-noreloc.html">SKIP</a> ([i915#3281]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@gem_lmem_swapping@verify.html">SKIP</a> ([i915#4613]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> ([i915#3282])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@gem_mmap_wc@bad-object.html">SKIP</a> ([i915#4083])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-16/igt@gem_mmap_wc@bad-object.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@gem_mmap_wc@bad-size.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@gem_pxp@create-regular-context-1.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gem_pxp@create-regular-context-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">SKIP</a> ([i915#8428])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@gem_tiled_partial_pwrite_pread@writes.html">SKIP</a> ([i915#3282]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2527]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html">FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-9/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> +39 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#3555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition.html">FAIL</a> ([i915#11808]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> ([i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">FAIL</a> ([i915#11808] / [i915#5956]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-10/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> ([i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12042]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +112 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#6095]) +74 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-6/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +180 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@kms_chamelium_audio@hdmi-audio-edid.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-9/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([i915#7828])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116] / [i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> ([i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +28 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> ([i915#4767])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_feature_discovery@display-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_flip@2x-plain-flip.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_flip@dpms-off-confusion.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_flip@dpms-off-confusion.html">SKIP</a> ([i915#3637]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#1849]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> ([i915#1825]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> ([i915#5354]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#1825]) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">SKIP</a> ([i915#3023]) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_hdr@static-swap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_panel_fitting@legacy.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_plane@plane-position-covered.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane@plane-position-covered.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_plane@plane-position-hole-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane@plane-position-hole-dpms.html">SKIP</a> ([i915#8825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_alpha_blend@constant-alpha-mid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_plane_alpha_blend@constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_alpha_blend@constant-alpha-min.html">SKIP</a> ([i915#7294]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@invalid-parameters.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html">SKIP</a> ([i915#3555] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html">SKIP</a> ([i915#12247]) +14 other tests skip</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-a.html">DMESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-snb4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#5354])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#3361])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-3/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP</a> ([i915#3547])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1.html">SKIP</a> ([i915#9808]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-14/igt@kms_psr@fbc-psr2-primary-blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-8/igt@kms_psr@pr-sprite-mmap-cpu.html">SKIP</a> ([i915#9688]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-8/igt@kms_psr@pr-sprite-mmap-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_psr@psr2-cursor-plane-onoff.html">SKIP</a> ([i915#9732]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-16/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_setmode@basic.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-forked-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_vblank@query-forked-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_vblank@query-forked-hang.html">SKIP</a> ([i915#9197]) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_vrr@flip-suspend.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-2/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-18/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">FAIL</a> ([i915#12179]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> ([i915#7742]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-5/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@gem_exec_fair@basic-pace-share.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-share.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> ([i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb4/igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#7790]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-4/igt@i915_power@sanity.html">SKIP</a> ([i915#7984]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-4/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@master-rmfb:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-13/igt@kms_addfb_basic@master-rmfb.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@kms_addfb_basic@master-rmfb.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic-force-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_big_joiner@basic-force-joiner.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-10/igt@kms_big_joiner@basic-force-joiner.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_cursor_crc@cursor-dpms.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_cursor_crc@cursor-dpms.html">PASS</a> +27 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-8/igt@kms_cursor_crc@cursor-suspend.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-snb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-glk4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip@dpms-vs-vblank-race-interruptible.html">SKIP</a> ([i915#3637]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_flip@dpms-vs-vblank-race-interruptible.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_flip@wf_vblank-ts-check.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_flip@wf_vblank-ts-check.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-rte:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-rte.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-rte.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_invalid_mode@bad-vtotal.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_invalid_mode@bad-vtotal.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane@plane-position-hole.html">SKIP</a> ([i915#8825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_plane@plane-position-hole.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html">SKIP</a> ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_plane_alpha_blend@constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">SKIP</a> ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@invalid-num-scalers.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_plane_scaling@invalid-num-scalers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> +1 other test pass</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">SKIP</a> ([i915#11521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_properties@plane-properties-atomic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb2/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2] / [i915#6493]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-snb6/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-idle-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_vblank@ts-continuation-idle-hang.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_vblank@ts-continuation-idle-hang.html">PASS</a> +33 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2876]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10887] / [i915#11231])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> ([i915#7091])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-evict-pwrite:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-12/igt@i915_pm_rpm@gem-evict-pwrite.html">SKIP</a> ([i915#4077]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@i915_pm_rpm@gem-evict-pwrite.html">SKIP</a> ([i915#4077] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> ([i915#9197]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-15/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9433])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#7173]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_content_protection@type1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([i915#5354]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_dsc@dsc-with-formats.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#4423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#10433] / [i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138988v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#5354]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         [SKIP][456] -&gt; [SKIP][457] ([i915#1849]) +64 other tests skip</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5123537557864347831==--
