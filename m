Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F811988D08
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 01:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 688A110E073;
	Fri, 27 Sep 2024 23:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5340310E073;
 Fri, 27 Sep 2024 23:44:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1164060377610808573=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/pm=3A_Clean_up_the?=
 =?utf-8?q?_hibernate_vs=2E_PCI_D3_quirk?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 23:44:47 -0000
Message-ID: <172748068732.1113563.10468905006712036085@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240925144526.2482-1-ville.syrjala@linux.intel.com>
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

--===============1164060377610808573==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pm: Clean up the hibernate vs. PCI D3 quirk
URL   : https://patchwork.freedesktop.org/series/139097/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15451_full -> Patchwork_139097v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139097v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139097v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 7)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139097v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu:         NOTRUN -> [SKIP][1] +1 other test skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing:
    - shard-tglu:         [PASS][2] -> [SKIP][3] +51 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html

  * igt@kms_big_joiner@invalid-modeset-force-joiner:
    - shard-dg2:          [PASS][4] -> [SKIP][5] +1 other test skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-1/igt@kms_big_joiner@invalid-modeset-force-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][6] +4 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_big_joiner@invalid-modeset-force-joiner.html

  * igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk3/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][9] +1 other test skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html

  
#### Warnings ####

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu:         [SKIP][11] ([i915#5286]) -> [SKIP][12] +4 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs:
    - shard-tglu:         [SKIP][13] ([i915#6095]) -> [SKIP][14] +8 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         [SKIP][15] ([i915#11453]) -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu:         [SKIP][17] ([i915#3555] / [i915#3840]) -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_dsc@dsc-basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu:         [SKIP][19] ([i915#1849]) -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][21] ([i915#5354]) -> [SKIP][22] +14 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         [SKIP][23] ([i915#3555] / [i915#8228]) -> [SKIP][24] +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_hdr@bpc-switch-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
    - shard-dg1:          [SKIP][25] ([i915#4423]) -> [SKIP][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-13/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         [SKIP][27] ([i915#3555]) -> [SKIP][28] +2 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_scaling_modes@scaling-mode-full-aspect.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         [SKIP][29] ([i915#8623]) -> [SKIP][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@negative-basic:
    - shard-tglu:         [SKIP][31] ([i915#3555] / [i915#9906]) -> [SKIP][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_vrr@negative-basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_vrr@negative-basic.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15451_full and Patchwork_139097v1_full:

### New IGT tests (4) ###

  * igt@kms_lease@lease-unleased-connector@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.07] s

  * igt@kms_lease@lease-unleased-connector@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.07] s

  * igt@kms_lease@lease-unleased-connector@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.07] s

  * igt@kms_lease@lease-unleased-connector@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.01] s

  

Known issues
------------

  Here are the changes found in Patchwork_139097v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@most-busy-idle-check-all:
    - shard-rkl:          [PASS][33] -> [FAIL][34] ([i915#12179])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][35] -> [FAIL][36] ([i915#7742])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [PASS][37] -> [FAIL][38] ([i915#11900] / [i915#7742])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@info:
    - shard-dg2:          [PASS][39] -> [SKIP][40] ([i915#1849] / [i915#2582])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@fbdev@info.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@fbdev@info.html

  * igt@fbdev@unaligned-write:
    - shard-tglu:         [PASS][41] -> [SKIP][42] ([i915#2582]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@fbdev@unaligned-write.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@fbdev@unaligned-write.html

  * igt@fbdev@write:
    - shard-dg2:          [PASS][43] -> [SKIP][44] ([i915#2582])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@fbdev@write.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@fbdev@write.html

  * igt@gem_busy@close-race:
    - shard-tglu:         NOTRUN -> [FAIL][45] ([i915#12297])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@gem_busy@close-race.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#9323])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#3555] / [i915#9323]) +1 other test skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#9323])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][49] -> [INCOMPLETE][50] ([i915#7297])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#8555])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@gem_ctx_persistence@hang.html
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#8555])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#280])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@hibernate:
    - shard-rkl:          NOTRUN -> [ABORT][54] ([i915#7975] / [i915#8213])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@hog:
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#4812])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_exec_balancer@hog.html
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#4812])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#4525]) +1 other test skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_big@single:
    - shard-tglu:         NOTRUN -> [ABORT][58] ([i915#11713])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#6344])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3539] / [i915#4852])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][61] -> [FAIL][62] ([i915#2842]) +2 other tests fail
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#4812])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#3539] / [i915#4852]) +1 other test skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3281])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3281]) +11 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#3281])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_exec_reloc@basic-write-wc-active.html
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#3281])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@pi-common@vcs0:
    - shard-rkl:          NOTRUN -> [FAIL][69] ([i915#12296]) +9 other tests fail
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@gem_exec_schedule@pi-common@vcs0.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#7276])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#4613]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#4613]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          NOTRUN -> [TIMEOUT][73] ([i915#5493]) +1 other test timeout
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#12193])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4565])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_mmap@basic-small-bo:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#4083])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@close-race:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#4077])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@gem_mmap_gtt@close-race.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3282]) +2 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#4270]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#4270])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4270])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-8/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#8411]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#3282] / [i915#3297])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3297])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#3297])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3281] / [i915#3297])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#3297]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#3297])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#2527]) +4 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@load:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#6227])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][91] -> [ABORT][92] ([i915#9820])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          NOTRUN -> [ABORT][93] ([i915#9820])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#8399])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#8399])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-mtlp:         NOTRUN -> [SKIP][96] +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg1:          [PASS][97] -> [DMESG-WARN][98] ([i915#4423]) +1 other test dmesg-warn
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-15/igt@i915_pm_rpm@system-suspend-execbuf.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-19/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#5723])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#8709]) +7 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#8709]) +11 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#3555])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-tglu:         NOTRUN -> [SKIP][103] ([i915#9531])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
    - shard-glk:          [PASS][104] -> [FAIL][105] ([i915#12238])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
    - shard-glk:          [PASS][106] -> [FAIL][107] ([i915#11859])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#5286]) +6 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#5286]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#4538] / [i915#5286])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3638]) +3 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#9197]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [ABORT][113] ([i915#10354])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#5190] / [i915#9197])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#4538]) +1 other test skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][116] +27 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#6095]) +64 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#12042])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#6095]) +86 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#10307] / [i915#6095]) +119 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#10307] / [i915#10434] / [i915#6095])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#12042])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#6095]) +9 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#6095]) +61 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_cdclk@plane-scaling@pipe-c-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#4087]) +3 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#7828]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#7828]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_chamelium_frames@dp-crc-single.html
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#7828])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#7828]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#7828]) +11 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3116])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#9424])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@uevent@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][133] ([i915#1339] / [i915#7173])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_content_protection@uevent@pipe-a-dp-3.html

  * igt@kms_cursor_crc@cursor-random-256x256:
    - shard-dg2:          [PASS][134] -> [SKIP][135] ([i915#9197]) +43 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_cursor_crc@cursor-random-256x256.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_cursor_crc@cursor-random-256x256.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3555]) +8 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#11453]) +2 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-snb:          NOTRUN -> [SKIP][138] +71 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-snb5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#11453])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#3555]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#4103]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#4103])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][143] -> [FAIL][144] ([i915#2346])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-glk:          NOTRUN -> [SKIP][145] +8 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#4213])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [PASS][147] -> [SKIP][148] ([i915#1257])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_dp_aux_dev.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-1/igt@kms_dp_aux_dev.html
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#1257])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_dp_aux_dev.html

  * igt@kms_fb_coherency@memset-crc:
    - shard-dg2:          [PASS][150] -> [SKIP][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_fb_coherency@memset-crc.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#3955])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#3637]) +3 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#3637])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][155] ([i915#4839]) +2 other tests incomplete
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][156] +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         [PASS][157] -> [SKIP][158] ([i915#3637]) +2 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][159] ([i915#2122])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1:
    - shard-tglu:         [PASS][160] -> [FAIL][161] ([i915#2122])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#2672] / [i915#3555]) +4 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#2672]) +4 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#3555])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#2672] / [i915#3555]) +1 other test skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#2672]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg2:          [PASS][167] -> [SKIP][168] ([i915#3555]) +6 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#2587] / [i915#2672]) +4 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#2672] / [i915#3555] / [i915#8813])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#2672])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglu:         [PASS][172] -> [SKIP][173] ([i915#1849]) +6 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          [PASS][174] -> [FAIL][175] ([i915#6880])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#5354]) +6 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-snb:          [PASS][177] -> [SKIP][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
    - shard-dg2:          [PASS][179] -> [SKIP][180] ([i915#5354]) +14 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#3023]) +27 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][182] +34 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#1825]) +39 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#3458]) +3 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#3458])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][186] +2 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#1825]) +2 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#3555] / [i915#8228]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_hdr@static-swap.html

  * igt@kms_invalid_mode@uint-max-clock:
    - shard-tglu:         [PASS][189] -> [SKIP][190] ([i915#3555]) +3 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_invalid_mode@uint-max-clock.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_invalid_mode@uint-max-clock.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#6301])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][192] ([i915#2295])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-tglu:         [PASS][193] -> [SKIP][194] ([i915#8825])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane@plane-panning-bottom-right-suspend.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-dg2:          [PASS][195] -> [SKIP][196] ([i915#8825])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane@plane-panning-top-left.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@constant-alpha-min:
    - shard-dg2:          [PASS][197] -> [SKIP][198] ([i915#7294])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_plane_alpha_blend@constant-alpha-min.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [PASS][199] -> [SKIP][200] ([i915#6953] / [i915#9423])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-3/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][201] ([i915#8292])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#12247]) +13 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
    - shard-dg2:          [PASS][203] -> [SKIP][204] ([i915#8152] / [i915#9423])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          [PASS][205] -> [SKIP][206] ([i915#8152])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          [PASS][207] -> [SKIP][208] ([i915#12247] / [i915#8152] / [i915#9423])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-dg2:          [PASS][209] -> [SKIP][210] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
    - shard-dg2:          [PASS][211] -> [SKIP][212] ([i915#12247]) +14 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
    - shard-tglu:         [PASS][213] -> [SKIP][214] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a:
    - shard-tglu:         [PASS][215] -> [SKIP][216] ([i915#12247]) +2 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:
    - shard-tglu:         [PASS][217] -> [SKIP][218] ([i915#12247] / [i915#8152])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg2:          [PASS][219] -> [SKIP][220] ([i915#3555] / [i915#8152] / [i915#9423]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:
    - shard-dg2:          [PASS][221] -> [SKIP][222] ([i915#12247] / [i915#8152]) +3 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#12247] / [i915#6953])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#12247] / [i915#6953])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#12247] / [i915#6953])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#12247]) +3 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html
    - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#12247]) +3 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#9812])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#9685]) +1 other test skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#9340])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#9519])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg2:          [PASS][232] -> [SKIP][233] ([i915#3547])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_pm_rpm@drm-resources-equal.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@i2c:
    - shard-tglu:         [PASS][234] -> [SKIP][235] ([i915#9519])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_pm_rpm@i2c.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#9519])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][237] -> [SKIP][238] ([i915#9519])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-rkl:          [PASS][239] -> [SKIP][240] ([i915#9519]) +1 other test skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-tglu:         [PASS][241] -> [SKIP][242] ([i915#3547] / [i915#9519])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_pm_rpm@system-suspend-modeset.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#6524]) +1 other test skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#6524])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#9683])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr2-cursor-blt:
    - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#1072] / [i915#9732]) +2 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_psr@fbc-psr2-cursor-blt.html

  * igt@kms_psr@fbc-psr2-cursor-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][247] ([i915#9732]) +4 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_psr@fbc-psr2-cursor-plane-move.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#1072] / [i915#9732]) +24 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr@psr2-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#1072] / [i915#9732]) +2 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_psr@psr2-cursor-render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][250] ([i915#9685])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#9685])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][252] ([i915#9685])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-tglu:         NOTRUN -> [SKIP][253] ([i915#5289])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#5289])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@basic:
    - shard-rkl:          [PASS][255] -> [FAIL][256] ([i915#5465])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-2/igt@kms_setmode@basic.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][257] ([i915#5465]) +1 other test fail
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_setmode@basic@pipe-a-dp-3.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [PASS][258] -> [FAIL][259] ([i915#5465]) +2 other tests fail
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-8/igt@kms_setmode@basic@pipe-b-edp-1.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@kms_setmode@basic@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][260] ([i915#5465])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html

  * igt@kms_vrr@max-min:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#9906])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#9906])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_writeback@writeback-check-output:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#2437])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_writeback@writeback-check-output.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#2436])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@syncobj_timeline@etime-single-wait-all-submitted:
    - shard-glk:          ([PASS][265], [PASS][266]) -> [DMESG-WARN][267] ([i915#118])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@syncobj_timeline@etime-single-wait-all-submitted.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@syncobj_timeline@etime-single-wait-all-submitted.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk1/igt@syncobj_timeline@etime-single-wait-all-submitted.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][268] ([i915#9781])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all:
    - shard-rkl:          [FAIL][269] ([i915#12179]) -> [PASS][270]
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all.html

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][271] ([i915#7742]) -> [PASS][272]
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          ([PASS][273], [FAIL][274]) ([i915#12027]) -> [PASS][275]
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@gem_ctx_engines@invalid-engines.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_ctx_engines@invalid-engines.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk5/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][276] ([i915#5784]) -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/igt@gem_eio@reset-stress.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-12/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-glk:          ([FAIL][278], [PASS][279]) ([i915#2842]) -> [PASS][280] +1 other test pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_exec_fair@basic-pace-solo.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@gem_exec_fair@basic-pace-solo.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk9/igt@gem_exec_fair@basic-pace-solo.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][281] ([i915#2842]) -> [PASS][282] +1 other test pass
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][283] ([i915#9820]) -> [PASS][284]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][285] ([i915#10131] / [i915#10887] / [i915#9820]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          [FAIL][287] -> [PASS][288]
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@i915_pm_rps@engine-order.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk3/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][289] ([i915#7790]) -> [PASS][290]
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb1/igt@i915_pm_rps@reset.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-snb5/igt@i915_pm_rps@reset.html
    - shard-tglu:         [ABORT][291] -> [PASS][292]
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@i915_pm_rps@reset.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@i915_pm_rps@reset.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          ([PASS][293], [FAIL][294]) ([i915#12177]) -> [PASS][295]
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
    - shard-glk:          ([PASS][296], [FAIL][297]) ([i915#11859]) -> [PASS][298]
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - shard-rkl:          [ABORT][299] ([i915#10354]) -> [PASS][300]
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_busy@extended-pageflip-hang-newfb:
    - shard-tglu:         [SKIP][301] -> [PASS][302] +46 other tests pass
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_busy@extended-pageflip-hang-newfb.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_busy@extended-pageflip-hang-newfb.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-snb:          [INCOMPLETE][303] ([i915#9878]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-snb7/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-dg2:          [SKIP][305] ([i915#1849]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][307], [PASS][308]) ([i915#2122]) -> [PASS][309]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk1/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][310] ([i915#2122]) -> [PASS][311] +1 other test pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-snb1/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-glk:          ([PASS][312], [INCOMPLETE][313]) ([i915#4839]) -> [PASS][314]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip@nonexisting-fb:
    - shard-tglu:         [SKIP][315] ([i915#3637]) -> [PASS][316] +3 other tests pass
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_flip@nonexisting-fb.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_flip@nonexisting-fb.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:
    - shard-dg2:          [SKIP][317] ([i915#3555]) -> [PASS][318] +1 other test pass
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
    - shard-tglu:         [SKIP][319] ([i915#1849]) -> [PASS][320] +16 other tests pass
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][321] ([i915#5354]) -> [PASS][322] +12 other tests pass
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [SKIP][323] ([i915#3555] / [i915#8228]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-8/igt@kms_hdr@bpc-switch-dpms.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_invalid_mode@zero-vdisplay:
    - shard-tglu:         [SKIP][325] ([i915#3555]) -> [PASS][326] +5 other tests pass
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_invalid_mode@zero-vdisplay.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_invalid_mode@zero-vdisplay.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-dg2:          [SKIP][327] ([i915#9581]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-tglu:         [SKIP][329] ([i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@invalid-num-scalers.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-dg2:          [SKIP][331] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-dg2:          [SKIP][333] ([i915#12247]) -> [PASS][334] +8 other tests pass
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:
    - shard-tglu:         [SKIP][335] ([i915#8152]) -> [PASS][336] +4 other tests pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:
    - shard-tglu:         [SKIP][337] ([i915#12247] / [i915#3558] / [i915#8152]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c:
    - shard-tglu:         [SKIP][339] ([i915#12247]) -> [PASS][340] +8 other tests pass
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d:
    - shard-tglu:         [SKIP][341] ([i915#12247] / [i915#8152]) -> [PASS][342]
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-dg2:          [SKIP][343] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:
    - shard-dg2:          [SKIP][345] ([i915#12247] / [i915#8152]) -> [PASS][346]
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-dg2:          [SKIP][347] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][349] ([i915#8152]) -> [PASS][350] +1 other test pass
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][351] ([i915#4281]) -> [PASS][352]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [SKIP][353] ([i915#9519]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][355] ([i915#9519]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
    - shard-tglu:         [SKIP][357] ([i915#9519]) -> [PASS][358]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_pm_rpm@modeset-lpsp.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          [SKIP][359] ([i915#11521]) -> [PASS][360]
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-glk:          [FAIL][361] ([i915#5465]) -> [PASS][362] +2 other tests pass
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk8/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][363] ([IGT#2]) -> [PASS][364]
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_sysfs_edid_timing.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-dg2:          [SKIP][365] ([i915#9197]) -> [PASS][366] +34 other tests pass
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@perf_pmu@rc6:
    - shard-dg1:          [DMESG-WARN][367] ([i915#4423]) -> [PASS][368] +2 other tests pass
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/igt@perf_pmu@rc6.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@perf_pmu@rc6.html

  * igt@prime_mmap_kms@buffer-sharing:
    - shard-dg2:          [SKIP][369] -> [PASS][370]
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@prime_mmap_kms@buffer-sharing.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@prime_mmap_kms@buffer-sharing.html

  
#### Warnings ####

  * igt@i915_selftest@mock:
    - shard-glk:          [DMESG-WARN][371] ([i915#1982] / [i915#9311]) -> [DMESG-WARN][372] ([i915#9311])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@i915_selftest@mock.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk7/igt@i915_selftest@mock.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         [SKIP][373] -> [SKIP][374] ([i915#1769] / [i915#3555])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          [SKIP][375] ([i915#1769] / [i915#3555]) -> [SKIP][376] ([i915#9197])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-tglu:         [SKIP][377] -> [SKIP][378] ([i915#5286]) +4 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          [SKIP][379] ([i915#9197]) -> [SKIP][380] +1 other test skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][381] -> [SKIP][382] ([i915#9197]) +2 other tests skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          [SKIP][383] ([i915#4538] / [i915#5190]) -> [SKIP][384] ([i915#5190] / [i915#9197]) +9 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          [SKIP][385] ([i915#5190] / [i915#9197]) -> [SKIP][386] ([i915#4538] / [i915#5190]) +5 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          [SKIP][387] ([i915#5190] / [i915#9197]) -> [SKIP][388] ([i915#5190]) +1 other test skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs:
    - shard-dg2:          [SKIP][389] ([i915#9197]) -> [SKIP][390] ([i915#10307] / [i915#6095]) +3 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][391] ([i915#10307] / [i915#6095]) -> [SKIP][392] ([i915#9197]) +12 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][393] ([i915#9197]) -> [SKIP][394] ([i915#12042])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-tglu:         [SKIP][395] -> [SKIP][396] ([i915#6095]) +7 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu:         [SKIP][397] -> [SKIP][398] ([i915#12042])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2:          [SKIP][399] ([i915#11616] / [i915#7213]) -> [SKIP][400] ([i915#9197])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_cdclk@mode-transition.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][401] ([i915#9197]) -> [SKIP][402] ([i915#11616] / [i915#7213])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_color@deep-color:
    - shard-tglu:         [SKIP][403] -> [SKIP][404] ([i915#3555] / [i915#9979])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_color@deep-color.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu:         [SKIP][405] -> [SKIP][406] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_content_protection@atomic-dpms.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          [SKIP][407] ([i915#3299]) -> [SKIP][408] ([i915#9197]) +1 other test skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][409] ([i915#9197]) -> [SKIP][410] ([i915#7118] / [i915#9424])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@legacy.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu:         [SKIP][411] -> [SKIP][412] ([i915#6944] / [i915#9424]) +1 other test skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_content_protection@lic-type-0.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          [SKIP][413] ([i915#9197]) -> [SKIP][414] ([i915#9424])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@mei-interface.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][415] ([i915#7118] / [i915#9424]) -> [SKIP][416] ([i915#7118] / [i915#7162] / [i915#9424])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-8/igt@kms_content_protection@type1.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [SKIP][417] ([i915#7118] / [i915#9424]) -> [FAIL][418] ([i915#1339] / [i915#7173])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-8/igt@kms_content_protection@uevent.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          [SKIP][419] ([i915#11453]) -> [SKIP][420] ([i915#9197]) +1 other test skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          [SKIP][421] ([i915#9197]) -> [SKIP][422] ([i915#11453])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          [SKIP][423] ([i915#11453]) -> [SKIP][424] ([i915#11453] / [i915#3359])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-8/igt@kms_cursor_crc@cursor-random-512x512.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-tglu:         [SKIP][425] -> [SKIP][426] ([i915#3555]) +1 other test skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][427] ([i915#11453] / [i915#3359]) -> [SKIP][428] ([i915#11453]) +1 other test skip
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          [SKIP][429] ([i915#9197]) -> [SKIP][430] ([i915#11453] / [i915#3359]) +1 other test skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          [SKIP][431] ([i915#9197]) -> [SKIP][432] ([i915#5354]) +3 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg2:          [SKIP][433] ([i915#9197]) -> [SKIP][434] ([i915#4103] / [i915#4213])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          [SKIP][435] ([i915#5354]) -> [SKIP][436] ([i915#9197]) +3 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][437] ([i915#9197]) -> [SKIP][438] ([i915#9067])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [SKIP][439] ([i915#3555]) -> [SKIP][440] ([i915#9197]) +5 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          [SKIP][441] ([i915#9197]) -> [SKIP][442] ([i915#3840])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu:         [SKIP][443] -> [SKIP][444] ([i915#3555] / [i915#3840])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_dsc@dsc-with-bpc.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg1:          [INCOMPLETE][445] ([i915#9878]) -> [INCOMPLETE][446] ([i915#1982] / [i915#9878])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-19/igt@kms_fbcon_fbt@fbc-suspend.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-15/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][447], [PASS][448]) ([i915#2122]) -> [FAIL][449] ([i915#2122]) +1 other test fail
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk1/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-dg2:          [INCOMPLETE][450] ([i915#4839] / [i915#6113]) -> [SKIP][451] ([i915#5354])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][452] ([i915#2672] / [i915#3555]) -> [SKIP][453] ([i915#3555])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          [SKIP][454] ([i915#3555] / [i915#5190]) -> [SKIP][455] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          [SKIP][456] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][457] ([i915#3555] / [i915#5190])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         [SKIP][458] ([i915#2672] / [i915#3555]) -> [SKIP][459] ([i915#3555]) +2 other tests skip
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/index.html

--===============1164060377610808573==
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
<tr><td><b>Series:</b></td><td>drm/i915/pm: Clean up the hibernate vs. PCI D3 quirk</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139097/">https://patchwork.freedesktop.org/series/139097/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15451_full -&gt; Patchwork_139097v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139097v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139097v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 7)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139097v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_atomic_transition@plane-all-transition-nonblocking-fencing.html">SKIP</a> +51 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset-force-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-1/igt@kms_big_joiner@invalid-modeset-force-joiner.html">SKIP</a> +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_big_joiner@invalid-modeset-force-joiner.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk3/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_dsc@dsc-basic.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_dsc@dsc-basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html">SKIP</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-13/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_vrr@negative-basic.html">SKIP</a> ([i915#3555] / [i915#9906]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_vrr@negative-basic.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15451_full and Patchwork_139097v1_full:</p>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_lease@lease-unleased-connector@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-connector@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.07] s</li>
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
<p>igt@kms_lease@lease-unleased-connector@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139097v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">FAIL</a> ([i915#12179])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@drm_fdinfo@virtual-idle.html">FAIL</a> ([i915#11900] / [i915#7742])</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@fbdev@info.html">SKIP</a> ([i915#1849] / [i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@fbdev@unaligned-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@fbdev@write.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@gem_busy@close-race.html">FAIL</a> ([i915#12297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> ([i915#3555] / [i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@gem_ctx_persistence@hang.html">SKIP</a> ([i915#8555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_ctx_persistence@hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_exec_balancer@hog.html">SKIP</a> ([i915#4812])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@gem_exec_balancer@hog.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@gem_exec_big@single.html">ABORT</a> ([i915#11713])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@gem_exec_fair@basic-none-vip.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@gem_exec_fence@concurrent.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@gem_exec_flush@basic-uc-pro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@gem_exec_reloc@basic-gtt.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> ([i915#3281]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_exec_reloc@basic-write-wc-active.html">SKIP</a> ([i915#3281])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@gem_exec_reloc@basic-write-wc-active.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@vcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@gem_exec_schedule@pi-common@vcs0.html">FAIL</a> ([i915#12296]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> ([i915#7276])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_lmem_swapping@verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_mmap@basic-small-bo.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@gem_mmap_gtt@close-race.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-display.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-8/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@gem_userptr_blits@forbidden-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@gem_userptr_blits@relocations.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html">SKIP</a> ([i915#2527]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@i915_module_load@load.html">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-15/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-19/igt@i915_pm_rpm@system-suspend-execbuf.html">DMESG-WARN</a> ([i915#4423]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-2-4-mc-ccs.html">SKIP</a> ([i915#8709]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#3555])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html">FAIL</a> ([i915#12238])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html">FAIL</a> ([i915#11859])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#5286]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> ([i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">ABORT</a> ([i915#10354])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +64 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +86 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#10307] / [i915#6095]) +119 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_content_protection@uevent@pipe-a-dp-3.html">FAIL</a> ([i915#1339] / [i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x256:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_cursor_crc@cursor-random-256x256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_cursor_crc@cursor-random-256x256.html">SKIP</a> ([i915#9197]) +43 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> ([i915#3555]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-snb5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> +71 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> +8 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_dp_aux_dev.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-1/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_fb_coherency@memset-crc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_fb_coherency@memset-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_flip@2x-flip-vs-suspend.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> ([i915#4839]) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> ([i915#3637]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1849]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html">SKIP</a> ([i915#5354]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> ([i915#3023]) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a> ([i915#3458]) +3 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_invalid_mode@uint-max-clock.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_invalid_mode@uint-max-clock.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">INCOMPLETE</a> ([i915#2295])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane@plane-panning-bottom-right-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_plane@plane-panning-bottom-right-suspend.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane@plane-panning-top-left.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_plane_alpha_blend@constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-3/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html">SKIP</a> ([i915#12247]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html">SKIP</a> ([i915#12247]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html">SKIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a> ([i915#3547])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-10/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_pm_rpm@i2c.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519])</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_pm_rpm@system-suspend-modeset.html">SKIP</a> ([i915#3547] / [i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_psr@fbc-psr2-cursor-blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_psr@fbc-psr2-cursor-plane-move.html">SKIP</a> ([i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_psr@psr2-cursor-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-16/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-2/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_setmode@basic@pipe-a-dp-3.html">FAIL</a> ([i915#5465]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-8/igt@kms_setmode@basic@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a> ([i915#5465]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html">FAIL</a> ([i915#5465])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-1/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> ([i915#2436])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-single-wait-all-submitted:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@syncobj_timeline@etime-single-wait-all-submitted.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@syncobj_timeline@etime-single-wait-all-submitted.html">PASS</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk1/igt@syncobj_timeline@etime-single-wait-all-submitted.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> ([i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all.html">FAIL</a> ([i915#12179]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> ([i915#7742]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@gem_ctx_engines@invalid-engines.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a>) ([i915#12027]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk5/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5784]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-12/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@gem_exec_fair@basic-pace-solo.html">PASS</a>) ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk9/igt@gem_exec_fair@basic-pace-solo.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#10887] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@i915_pm_rps@engine-order.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk3/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb1/igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#7790]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-snb5/igt@i915_pm_rps@reset.html">PASS</a></li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@i915_pm_rps@reset.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html">FAIL</a>) ([i915#12177]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">FAIL</a>) ([i915#11859]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk7/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-180.html">ABORT</a> ([i915#10354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-pageflip-hang-newfb:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_busy@extended-pageflip-hang-newfb.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_busy@extended-pageflip-hang-newfb.html">PASS</a> +46 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#9878]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-snb7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html">PASS</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk1/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb4/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-snb1/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">INCOMPLETE</a>) ([i915#4839]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_flip@nonexisting-fb.html">SKIP</a> ([i915#3637]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_flip@nonexisting-fb.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html">PASS</a> +16 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-8/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_invalid_mode@zero-vdisplay.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_invalid_mode@zero-vdisplay.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> ([i915#9581]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_plane@planar-pixel-format-settings.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@invalid-num-scalers.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_plane_scaling@invalid-num-scalers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-c.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">SKIP</a> ([i915#11521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_properties@plane-properties-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#5465]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk8/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_vblank@ts-continuation-dpms-suspend.html">PASS</a> +34 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/igt@perf_pmu@rc6.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-18/igt@perf_pmu@rc6.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_kms@buffer-sharing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@prime_mmap_kms@buffer-sharing.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@prime_mmap_kms@buffer-sharing.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#1982] / [i915#9311]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk7/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> ([i915#5286]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5190] / [i915#9197]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#9197]) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html">SKIP</a> ([i915#6095]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#11616] / [i915#7213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#11616] / [i915#7213])</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_color@deep-color.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_content_protection@atomic-dpms.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3299]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_content_protection@lic-type-0.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([i915#6944] / [i915#9424]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_content_protection@mei-interface.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-8/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#7162] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-8/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_content_protection@uevent.html">FAIL</a> ([i915#1339] / [i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#9197]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-8/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-9/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> ([i915#5354]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> ([i915#9197]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-2/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-19/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#9878]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg1-15/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#1982] / [i915#9878])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a>) ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-glk1/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> ([i915#4839] / [i915#6113]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_flip@flip-vs-suspend-interruptible.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139097v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-</p>
</li>
</ul>

</body>
</html>

--===============1164060377610808573==--
