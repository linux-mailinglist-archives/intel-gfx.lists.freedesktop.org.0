Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C783B988D03
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 01:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242BF10E0EB;
	Fri, 27 Sep 2024 23:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A532310E0EB;
 Fri, 27 Sep 2024 23:34:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1426847531026418359=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/display=3A_Workaro?=
 =?utf-8?q?und_for_odd_panning_for_planar_yuv_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Garg, Nemesa" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 23:34:23 -0000
Message-ID: <172748006365.1113544.9040121188600792455@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240925122359.2455130-1-nemesa.garg@intel.com>
In-Reply-To: <20240925122359.2455130-1-nemesa.garg@intel.com>
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

--===============1426847531026418359==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Workaround for odd panning for planar yuv (rev4)
URL   : https://patchwork.freedesktop.org/series/136416/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15451_full -> Patchwork_136416v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_136416v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_136416v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  Additional (1): shard-tglu-1 
  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_136416v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu:         NOTRUN -> [SKIP][1] +1 other test skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_barrier_race@remote-request:
    - shard-glk:          ([PASS][2], [PASS][3]) -> [ABORT][4]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@gem_barrier_race@remote-request.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@gem_barrier_race@remote-request.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk7/igt@gem_barrier_race@remote-request.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing:
    - shard-tglu:         [PASS][7] -> [SKIP][8] +36 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html

  * igt@kms_big_joiner@invalid-modeset-force-joiner:
    - shard-dg2:          [PASS][9] -> [SKIP][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_big_joiner@invalid-modeset-force-joiner.html

  * igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk4/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][12] +2 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][14] +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][15] +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  
#### Warnings ####

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu:         [SKIP][16] ([i915#5286]) -> [SKIP][17] +2 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
    - shard-tglu:         [SKIP][18] ([i915#6095]) -> [SKIP][19] +5 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         [SKIP][20] ([i915#11453]) -> [SKIP][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu:         [SKIP][22] ([i915#3555] / [i915#3840]) -> [SKIP][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_dsc@dsc-basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu:         [SKIP][24] ([i915#1849]) -> [SKIP][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][26] ([i915#5354]) -> [SKIP][27] +14 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         [SKIP][28] ([i915#3555] / [i915#8228]) -> [SKIP][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_hdr@bpc-switch-suspend.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
    - shard-dg1:          [SKIP][30] ([i915#4423]) -> [SKIP][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-12/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         [SKIP][32] ([i915#3555]) -> [SKIP][33] +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_scaling_modes@scaling-mode-full-aspect.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         [SKIP][34] ([i915#8623]) -> [SKIP][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf:
    - {shard-tglu-1}:     NOTRUN -> [SKIP][36] +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-1/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15451_full and Patchwork_136416v4_full:

### New IGT tests (9) ###

  * igt@kms_lease@lease-again@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_lease@lease-unleased-connector@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.07] s

  * igt@kms_lease@lease-unleased-connector@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.06] s

  * igt@kms_lease@lease-unleased-connector@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.08] s

  * igt@kms_lease@lease-unleased-connector@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.06] s

  * igt@kms_lease@lease-unleased-connector@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.07] s

  * igt@kms_lease@lease-unleased-connector@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.06] s

  * igt@kms_lease@lease-unleased-connector@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.01] s

  * igt@kms_lease@lease-unleased-connector@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.06] s

  

Known issues
------------

  Here are the changes found in Patchwork_136416v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#9318])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@debugfs_test@basic-hwmon.html

  * igt@drm_fdinfo@most-busy-idle-check-all:
    - shard-rkl:          [PASS][38] -> [FAIL][39] ([i915#12179])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][40] -> [FAIL][41] ([i915#7742])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-hang-all:
    - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#8414])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-2/igt@drm_fdinfo@virtual-busy-hang-all.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [PASS][43] -> [FAIL][44] ([i915#11900] / [i915#7742])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@read:
    - shard-tglu:         [PASS][45] -> [SKIP][46] ([i915#2582])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@fbdev@read.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@fbdev@read.html

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-glk:          ([PASS][47], [PASS][48]) -> [ABORT][49] ([i915#8190])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@gem_barrier_race@remote-request@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@gem_barrier_race@remote-request@rcs0.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk7/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_busy@close-race:
    - shard-tglu:         NOTRUN -> [FAIL][50] ([i915#12297])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@gem_busy@close-race.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#9323])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#3555] / [i915#9323])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][53] ([i915#7297])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#7697])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#8562])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][56] -> [FAIL][57] ([i915#12065])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#8555])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@gem_ctx_persistence@hang.html
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#8555])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#280])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@hog:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4812])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_exec_balancer@hog.html
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#4812])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#4525]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_big@single:
    - shard-tglu:         NOTRUN -> [ABORT][64] ([i915#11713])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#6344])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3539] / [i915#4852])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#3539] / [i915#4852]) +2 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#3281]) +7 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#3281])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_exec_reloc@basic-write-wc-active.html
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#3281])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@pi-common@vcs0:
    - shard-rkl:          NOTRUN -> [FAIL][71] ([i915#12296]) +4 other tests fail
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@gem_exec_schedule@pi-common@vcs0.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#7276])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [PASS][73] -> [INCOMPLETE][74] ([i915#11441])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s3-devices:
    - shard-dg1:          [PASS][75] -> [DMESG-WARN][76] ([i915#4423]) +1 other test dmesg-warn
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/igt@gem_exec_suspend@basic-s3-devices.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-13/igt@gem_exec_suspend@basic-s3-devices.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#2190])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#4613]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#4613]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][80] ([i915#5493]) +1 other test timeout
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#12193])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#4565])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3282])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_mmap@basic-small-bo:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#4083])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@close-race:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#4077])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@gem_mmap_gtt@close-race.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#4270])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4270])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-1/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#4270])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#3282] / [i915#3297])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3297])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#3297])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#3281] / [i915#3297])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#3297])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#2527]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#8399])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#8399])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> [SKIP][97] +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
    - shard-mtlp:         NOTRUN -> [SKIP][98] +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][99] -> [SKIP][100] ([i915#7984])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-6/igt@i915_power@sanity.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@i915_power@sanity.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#5723])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#8709]) +7 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#8709]) +3 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#3555])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#9531])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-transition:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#9197]) +4 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_atomic_transition@plane-all-transition.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#5286]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#4538] / [i915#5286])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-17/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#5286]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3638]) +3 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg2:          [PASS][111] -> [SKIP][112] ([i915#9197]) +44 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#5190] / [i915#9197])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#4538]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#6095]) +56 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#6095]) +71 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#10307] / [i915#10434] / [i915#6095])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][118] +18 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk7/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#10307] / [i915#6095]) +123 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#6095]) +9 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#6095]) +56 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4087]) +3 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_color@degamma:
    - shard-rkl:          NOTRUN -> [SKIP][123] +19 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#7828])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#7828]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-single.html
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#7828]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#7828]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#7828]) +5 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#7118] / [i915#9424])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3116])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][131] ([i915#7173])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#7118])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#11453]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-snb:          NOTRUN -> [SKIP][134] +71 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-snb1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#11453])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#3555]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#4103])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][138] -> [FAIL][139] ([i915#2346])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#4103] / [i915#4213])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#4213])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#4103])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [PASS][143] -> [SKIP][144] ([i915#1257])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_dp_aux_dev.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_dp_aux_dev.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#3955])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#3637]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#3637])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_flip@2x-flip-vs-suspend.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][148] ([i915#4839])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk4/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-glk:          ([PASS][149], [PASS][150]) -> [FAIL][151] ([i915#2122]) +1 other test fail
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         [PASS][152] -> [SKIP][153] ([i915#3637]) +2 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][154] -> [FAIL][155] ([i915#79]) +2 other tests fail
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg2:          [PASS][156] -> [SKIP][157] ([i915#5354]) +12 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_flip@flip-vs-suspend.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3:
    - shard-dg1:          [PASS][158] -> [INCOMPLETE][159] ([i915#6113])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
    - shard-snb:          [PASS][160] -> [INCOMPLETE][161] ([i915#4839]) +1 other test incomplete
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#2672] / [i915#3555]) +2 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#2672]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#2672] / [i915#3555]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#2672]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [PASS][166] -> [SKIP][167] ([i915#3555]) +6 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#2587] / [i915#2672]) +4 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#2672] / [i915#3555] / [i915#8813])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#2672])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglu:         [PASS][171] -> [SKIP][172] ([i915#1849]) +3 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#5354]) +5 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-snb:          [PASS][174] -> [SKIP][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - shard-dg2:          [PASS][176] -> [FAIL][177] ([i915#6880])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][178] +31 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#3458]) +3 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][180] +4 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#1825]) +23 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#1825]) +3 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3023]) +18 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#3555] / [i915#8228]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#3555] / [i915#8228])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-2/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_invalid_mode@uint-max-clock:
    - shard-tglu:         [PASS][186] -> [SKIP][187] ([i915#3555]) +2 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_invalid_mode@uint-max-clock.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-tglu:         [PASS][188] -> [SKIP][189] ([i915#8825])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane@plane-panning-bottom-right-suspend.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane@plane-position-hole:
    - shard-dg2:          [PASS][190] -> [SKIP][191] ([i915#8825]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane@plane-position-hole.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-dg2:          [PASS][192] -> [SKIP][193] ([i915#7294])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#3555]) +6 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [PASS][195] -> [SKIP][196] ([i915#6953] / [i915#9423])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-3/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][197] ([i915#8292])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][198] ([i915#8292])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-dg2:          [PASS][199] -> [SKIP][200] ([i915#8152] / [i915#9423]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c:
    - shard-dg2:          [PASS][201] -> [SKIP][202] ([i915#12247]) +14 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
    - shard-dg2:          [PASS][203] -> [SKIP][204] ([i915#12247] / [i915#8152] / [i915#9423])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:
    - shard-dg2:          [PASS][205] -> [SKIP][206] ([i915#12247] / [i915#8152]) +2 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [PASS][207] -> [SKIP][208] ([i915#3555] / [i915#8152] / [i915#9423])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          [PASS][209] -> [SKIP][210] ([i915#8152]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#12247]) +2 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-tglu:         [PASS][212] -> [SKIP][213] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a:
    - shard-tglu:         [PASS][214] -> [SKIP][215] ([i915#12247]) +2 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:
    - shard-tglu:         [PASS][216] -> [SKIP][217] ([i915#12247] / [i915#8152])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#12247] / [i915#6953])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#12247] / [i915#6953])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#12247]) +3 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#12247]) +3 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [PASS][222] -> [SKIP][223] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#9812])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#9685])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [PASS][226] -> [SKIP][227] ([i915#9519])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-tglu:         [PASS][228] -> [SKIP][229] ([i915#9519])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_pm_rpm@i2c.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#9519])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][231] -> [SKIP][232] ([i915#9519]) +1 other test skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-tglu:         [PASS][233] -> [SKIP][234] ([i915#3547] / [i915#9519])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_pm_rpm@system-suspend-modeset.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#6524]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html
    - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#6524])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#9683])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-primary-page-flip:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#1072] / [i915#9732]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_psr@fbc-pr-primary-page-flip.html

  * igt@kms_psr@fbc-psr2-cursor-blt:
    - shard-dg1:          NOTRUN -> [SKIP][239] ([i915#1072] / [i915#9732]) +2 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_psr@fbc-psr2-cursor-blt.html

  * igt@kms_psr@fbc-psr2-cursor-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#9732]) +4 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_psr@fbc-psr2-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#1072] / [i915#9732]) +14 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#9685])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#9685])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#5289])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#5289])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:
    - shard-glk:          [PASS][246] -> [FAIL][247] ([i915#5465]) +2 other tests fail
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk3/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html

  * igt@kms_setmode@basic@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][248] ([i915#5465]) +1 other test fail
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-5/igt@kms_setmode@basic@pipe-b-hdmi-a-3.html

  * igt@kms_vrr@max-min:
    - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#9906])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][250] ([i915#9906])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#8516])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#3708])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all:
    - shard-rkl:          [FAIL][253] ([i915#12179]) -> [PASS][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][255] ([i915#7742]) -> [PASS][256] +2 other tests pass
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][257] -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          ([PASS][259], [FAIL][260]) ([i915#12027]) -> [PASS][261]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@gem_ctx_engines@invalid-engines.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_ctx_engines@invalid-engines.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk9/igt@gem_ctx_engines@invalid-engines.html
    - shard-tglu:         [FAIL][262] ([i915#12027]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-6/igt@gem_ctx_engines@invalid-engines.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_balancer@waits:
    - shard-glk:          [INCOMPLETE][264] -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@gem_exec_balancer@waits.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk7/igt@gem_exec_balancer@waits.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][266] ([i915#2842]) -> [PASS][267] +2 other tests pass
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][268] ([i915#10131] / [i915#10887] / [i915#9820]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][270] ([i915#3591]) -> [PASS][271] +1 other test pass
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          [FAIL][272] -> [PASS][273]
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@i915_pm_rps@engine-order.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk5/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][274] ([i915#7790]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb1/igt@i915_pm_rps@reset.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-snb1/igt@i915_pm_rps@reset.html
    - shard-tglu:         [ABORT][276] -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@i915_pm_rps@reset.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@i915_pm_rps@reset.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          ([PASS][278], [FAIL][279]) ([i915#12177]) -> [PASS][280]
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
    - shard-glk:          ([PASS][281], [FAIL][282]) ([i915#11859]) -> [PASS][283]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][284] ([i915#5138]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_busy@extended-pageflip-hang-newfb:
    - shard-tglu:         [SKIP][286] -> [PASS][287] +46 other tests pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_busy@extended-pageflip-hang-newfb.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_busy@extended-pageflip-hang-newfb.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][288] ([i915#3555]) -> [PASS][289] +2 other tests pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-4/igt@kms_color@deep-color.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-10/igt@kms_color@deep-color.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          ([FAIL][290], [FAIL][291]) ([i915#2346]) -> [PASS][292]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-snb:          [INCOMPLETE][293] ([i915#9878]) -> [PASS][294]
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-snb4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-glk:          ([PASS][295], [INCOMPLETE][296]) ([i915#4839]) -> [PASS][297]
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip@nonexisting-fb:
    - shard-tglu:         [SKIP][298] ([i915#3637]) -> [PASS][299] +3 other tests pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_flip@nonexisting-fb.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_flip@nonexisting-fb.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-rkl:          [FAIL][300] ([i915#2122]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@kms_flip@plain-flip-fb-recreate.html
    - shard-tglu:         [FAIL][302] ([i915#2122]) -> [PASS][303] +1 other test pass
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
    - shard-tglu:         [SKIP][304] ([i915#1849]) -> [PASS][305] +16 other tests pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][306] ([i915#5354]) -> [PASS][307] +12 other tests pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-dg2:          [FAIL][308] ([i915#6880]) -> [PASS][309]
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_invalid_mode@zero-vdisplay:
    - shard-tglu:         [SKIP][310] ([i915#3555]) -> [PASS][311] +5 other tests pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_invalid_mode@zero-vdisplay.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_invalid_mode@zero-vdisplay.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-dg2:          [SKIP][312] ([i915#9581]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-tglu:         [SKIP][314] ([i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@invalid-num-scalers.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-dg2:          [SKIP][316] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-dg2:          [SKIP][318] ([i915#12247]) -> [PASS][319] +8 other tests pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:
    - shard-tglu:         [SKIP][320] ([i915#8152]) -> [PASS][321] +4 other tests pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:
    - shard-tglu:         [SKIP][322] ([i915#12247] / [i915#3558] / [i915#8152]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c:
    - shard-tglu:         [SKIP][324] ([i915#12247]) -> [PASS][325] +8 other tests pass
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d:
    - shard-tglu:         [SKIP][326] ([i915#12247] / [i915#8152]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-dg2:          [SKIP][328] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:
    - shard-dg2:          [SKIP][330] ([i915#12247] / [i915#8152]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-dg2:          [SKIP][332] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][334] ([i915#8152]) -> [PASS][335] +1 other test pass
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][336] ([i915#4281]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][338] ([i915#9519]) -> [PASS][339] +1 other test pass
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-tglu:         [SKIP][340] ([i915#9519]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_pm_rpm@modeset-lpsp.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          [SKIP][342] ([i915#9519]) -> [PASS][343] +1 other test pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          [SKIP][344] ([i915#11521]) -> [PASS][345]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_setmode@basic:
    - shard-dg1:          [FAIL][346] ([i915#5465]) -> [PASS][347] +2 other tests pass
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-15/igt@kms_setmode@basic.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-17/igt@kms_setmode@basic.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-dg2:          [SKIP][348] ([i915#9197]) -> [PASS][349] +33 other tests pass
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@perf_pmu@rc6:
    - shard-dg1:          [DMESG-WARN][350] ([i915#4423]) -> [PASS][351] +2 other tests pass
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/igt@perf_pmu@rc6.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@perf_pmu@rc6.html

  * igt@prime_mmap_kms@buffer-sharing:
    - shard-dg2:          [SKIP][352] -> [PASS][353]
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@prime_mmap_kms@buffer-sharing.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@prime_mmap_kms@buffer-sharing.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-mtlp:         [FAIL][354] ([i915#12031]) -> [FAIL][355] ([i915#12027])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-glk:          ([FAIL][356], [PASS][357]) ([i915#2842]) -> [FAIL][358] ([i915#2842]) +1 other test fail
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_exec_fair@basic-pace-solo.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@gem_exec_fair@basic-pace-solo.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk2/igt@gem_exec_fair@basic-pace-solo.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][359] ([i915#9820]) -> [ABORT][360] ([i915#10887] / [i915#9820])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglu:         [FAIL][361] ([i915#3591]) -> [WARN][362] ([i915#2681]) +1 other test warn
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         [SKIP][363] -> [SKIP][364] ([i915#1769] / [i915#3555])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          [SKIP][365] ([i915#1769] / [i915#3555]) -> [SKIP][366] ([i915#9197])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-tglu:         [SKIP][367] -> [SKIP][368] ([i915#5286]) +4 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          [SKIP][369] -> [SKIP][370] ([i915#9197]) +2 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          [SKIP][371] ([i915#9197]) -> [SKIP][372] +1 other test skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          [SKIP][373] ([i915#5190] / [i915#9197]) -> [SKIP][374] ([i915#4538] / [i915#5190]) +3 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          [SKIP][375] ([i915#5190] / [i915#9197]) -> [SKIP][376] ([i915#5190]) +1 other test skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][377] ([i915#4538] / [i915#5190]) -> [SKIP][378] ([i915#5190] / [i915#9197]) +9 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs:
    - shard-dg2:          [SKIP][379] ([i915#9197]) -> [SKIP][380] ([i915#10307] / [i915#6095]) +3 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][381] ([i915#9197]) -> [SKIP][382] ([i915#12042])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-tglu:         [SKIP][383] -> [SKIP][384] ([i915#6095]) +7 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][385] ([i915#10307] / [i915#6095]) -> [SKIP][386] ([i915#9197]) +13 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][387] ([i915#12042]) -> [SKIP][388] ([i915#9197])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu:         [SKIP][389] -> [SKIP][390] ([i915#12042])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2:          [SKIP][391] ([i915#11616] / [i915#7213]) -> [SKIP][392] ([i915#9197])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_cdclk@mode-transition.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][393] ([i915#9197]) -> [SKIP][394] ([i915#11616] / [i915#7213])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_color@deep-color:
    - shard-tglu:         [SKIP][395] -> [SKIP][396] ([i915#3555] / [i915#9979])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_color@deep-color.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu:         [SKIP][397] -> [SKIP][398] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_content_protection@atomic-dpms.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          [SKIP][399] ([i915#3299]) -> [SKIP][400] ([i915#9197])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-0.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][401] ([i915#9197]) -> [SKIP][402] ([i915#7118] / [i915#9424])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@legacy.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu:         [SKIP][403] -> [SKIP][404] ([i915#6944] / [i915#9424]) +1 other test skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_content_protection@lic-type-0.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_content_protection@lic-type-0.html
    - shard-dg2:          [SKIP][405] ([i915#9424]) -> [TIMEOUT][406] ([i915#7173])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-4/igt@kms_content_protection@lic-type-0.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-10/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          [SKIP][407] ([i915#9197]) -> [SKIP][408] ([i915#9424])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@mei-interface.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          [SKIP][409] ([i915#11453]) -> [SKIP][410] ([i915#9197])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          [SKIP][411] ([i915#9197]) -> [SKIP][412] ([i915#11453]) +2 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-tglu:         [SKIP][413] -> [SKIP][414] ([i915#3555]) +1 other test skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][415] ([i915#11453] / [i915#3359]) -> [SKIP][416] ([i915#9197])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          [SKIP][417] ([i915#9197]) -> [SKIP][418] ([i915#5354]) +2 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          [SKIP][419] ([i915#4103] / [i915#4213]) -> [SKIP][420] ([i915#9197])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg2:          [SKIP][421] ([i915#9197]) -> [SKIP][422] ([i915#4103] / [i915#4213])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          [SKIP][423] ([i915#5354]) -> [SKIP][424] ([i915#9197]) +4 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][425] ([i915#9197]) -> [SKIP][426] ([i915#9067])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [SKIP][427] ([i915#3555]) -> [SKIP][428] ([i915#9197]) +3 other tests skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][429] ([i915#8812]) -> [SKIP][430] ([i915#9197])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          [SKIP][431] ([i915#9197]) -> [SKIP][432] ([i915#3840])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu:         [SKIP][433] -> [SKIP][434] ([i915#3555] / [i915#3840])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_dsc@dsc-with-bpc.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][435], [PASS][436]) ([i915#2122]) -> [FAIL][437] ([i915#2122]) +2 other tests fail
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg1:          [SKIP][438] -> [SKIP][439] ([i915#4423]) +1 other test skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-13/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg2:          [INCOMPLETE][440] ([i915#4839] / [i915#6113]) -> [SKIP][441] ([i915#5354])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          [SKIP][442] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][443] ([i915#3555] / [i915#5190])
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          [SKIP][444] ([i915#3555] / [i915#5190]) -> [SKIP][445] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         [SKIP][446] ([i915#2672] / [i915#3555]) -> [SKIP][447] ([i915#3555]) +1 other test skip
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][448] ([i915#2672] / [i915#3555]) -> [SKIP][449] ([i915#3555]) +1 other test skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-tglu:         [SKIP][450] ([i915#3555]) -> [SKIP][451] ([i915#2672] / [i915#3555]) +2 other tests skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          [SKIP][452] -> [SKIP][453] ([i915#5354]) +15 other tests skip
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][454] ([i915#5354]) -> [SKIP][455] ([i915#3458]) +9 other tests skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg1:          [SKIP][456] ([i915#3458]) -> [SKIP][457] ([i915#3458] / [i915#4423])
   [456]: https://intel-gfx-ci.01.org/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/index.html

--===============1426847531026418359==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Workaround for odd panning for planar yuv (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/136416/">https://patchwork.freedesktop.org/series/136416/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15451_full -&gt; Patchwork_136416v4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_136416v4_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_136416v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>Additional (1): shard-tglu-1 <br />
  Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_136416v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@gem_barrier_race@remote-request.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@gem_barrier_race@remote-request.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk7/igt@gem_barrier_race@remote-request.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html">SKIP</a> +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset-force-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_big_joiner@invalid-modeset-force-joiner.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk4/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html">SKIP</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-12/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf:<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-1/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15451_full and Patchwork_136416v4_full:</p>
<h3>New IGT tests (9)</h3>
<ul>
<li>
<p>igt@kms_lease@lease-again@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-connector@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-connector@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-connector@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-connector@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-connector@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-connector@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-connector@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-connector@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_136416v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@debugfs_test@basic-hwmon.html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all.html">FAIL</a> ([i915#12179])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-2/igt@drm_fdinfo@virtual-busy-hang-all.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">FAIL</a> ([i915#11900] / [i915#7742])</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@fbdev@read.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@gem_barrier_race@remote-request@rcs0.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk7/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a> ([i915#8190])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@gem_busy@close-race.html">FAIL</a> ([i915#12297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@gem_create@create-ext-set-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12065])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@gem_ctx_persistence@hang.html">SKIP</a> ([i915#8555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_ctx_persistence@hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_exec_balancer@hog.html">SKIP</a> ([i915#4812])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@gem_exec_balancer@hog.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@gem_exec_big@single.html">ABORT</a> ([i915#11713])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@gem_exec_fair@basic-none-vip.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> ([i915#3281]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_exec_reloc@basic-write-wc-active.html">SKIP</a> ([i915#3281])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@gem_exec_reloc@basic-write-wc-active.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@vcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@gem_exec_schedule@pi-common@vcs0.html">FAIL</a> ([i915#12296]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> ([i915#7276])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> ([i915#11441])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/igt@gem_exec_suspend@basic-s3-devices.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-13/igt@gem_exec_suspend@basic-s3-devices.html">DMESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_lmem_swapping@verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@gem_madvise@dontneed-before-pwrite.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_mmap@basic-small-bo.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@gem_mmap_gtt@close-race.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-1/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@gem_userptr_blits@relocations.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-6/igt@i915_power@sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html">SKIP</a> ([i915#8709]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#3555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_atomic_transition@plane-all-transition.html">SKIP</a> ([i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-17/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> ([i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> ([i915#9197]) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +56 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +71 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk7/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#6095]) +123 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +56 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_chamelium_color@degamma.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_content_protection@atomic.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-snb1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> +71 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_dp_aux_dev.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_flip@2x-flip-vs-suspend.html">SKIP</a> ([i915#3637])</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk4/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html">FAIL</a> ([i915#79]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_flip@flip-vs-suspend.html">SKIP</a> ([i915#5354]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a3.html">INCOMPLETE</a> ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html">INCOMPLETE</a> ([i915#4839]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1849]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +23 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-suspend.html">SKIP</a> ([i915#3023]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_invalid_mode@uint-max-clock.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane@plane-panning-bottom-right-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_plane@plane-panning-bottom-right-suspend.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane@plane-position-hole.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane@plane-position-hole.html">SKIP</a> ([i915#8825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-3/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-13/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-c.html">SKIP</a> ([i915#12247]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_pm_dc@dc5-psr.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_pm_rpm@i2c.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP</a> ([i915#3547] / [i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524]) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-primary-page-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_psr@fbc-pr-primary-page-flip.html">SKIP</a> ([i915#1072] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_psr@fbc-psr2-cursor-blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_psr@fbc-psr2-cursor-plane-move.html">SKIP</a> ([i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-18/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk3/igt@kms_setmode@basic@pipe-a-hdmi-a-1-pipe-b-hdmi-a-2.html">FAIL</a> ([i915#5465]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-5/igt@kms_setmode@basic@pipe-b-hdmi-a-3.html">FAIL</a> ([i915#5465]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-4/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all.html">FAIL</a> ([i915#12179]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> ([i915#7742]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@gem_ctx_engines@invalid-engines.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>) ([i915#12027]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk9/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-6/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-5/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@waits:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@gem_exec_balancer@waits.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk7/igt@gem_exec_balancer@waits.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#10887] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> ([i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@i915_pm_rps@engine-order.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk5/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb1/igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#7790]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-snb1/igt@i915_pm_rps@reset.html">PASS</a></li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@i915_pm_rps@reset.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html">FAIL</a>) ([i915#12177]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">FAIL</a>) ([i915#11859]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk9/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> ([i915#5138]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-pageflip-hang-newfb:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_busy@extended-pageflip-hang-newfb.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_busy@extended-pageflip-hang-newfb.html">PASS</a> +46 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-4/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-10/igt@kms_color@deep-color.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a>) ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#9878]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-snb4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">INCOMPLETE</a>) ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_flip@nonexisting-fb.html">SKIP</a> ([i915#3637]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_flip@nonexisting-fb.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-1/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a></li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html">PASS</a> +16 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">FAIL</a> ([i915#6880]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_invalid_mode@zero-vdisplay.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_invalid_mode@zero-vdisplay.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> ([i915#9581]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_plane@planar-pixel-format-settings.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@invalid-num-scalers.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_plane_scaling@invalid-num-scalers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">SKIP</a> ([i915#11521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_properties@plane-properties-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-15/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-17/igt@kms_setmode@basic.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_vblank@ts-continuation-dpms-suspend.html">PASS</a> +33 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/igt@perf_pmu@rc6.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-16/igt@perf_pmu@rc6.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_kms@buffer-sharing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@prime_mmap_kms@buffer-sharing.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@prime_mmap_kms@buffer-sharing.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@gem_exec_fair@basic-pace-solo.html">PASS</a>) ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk2/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10887] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a> ([i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681]) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#5286]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#9197]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#11616] / [i915#7213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#11616] / [i915#7213])</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_color@deep-color.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_content_protection@atomic-dpms.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3299]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_content_protection@lic-type-0.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#6944] / [i915#9424]) +1 other test skip</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-4/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#11453]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-3/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> ([i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> ([i915#9197]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-4/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html">PASS</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg1-13/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> ([i915#4423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#4839] / [i915#6113]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_flip@flip-vs-suspend-interruptible.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#5354]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136416v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#3458]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/">SKIP</a> ([i915#3458]) -&gt; [SKIP][457] ([i915#3458] / [i915#4423])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1426847531026418359==--
