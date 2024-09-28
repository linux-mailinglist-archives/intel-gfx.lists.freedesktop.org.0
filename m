Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB7398918C
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 23:18:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 509CB10E268;
	Sat, 28 Sep 2024 21:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCE5910E268;
 Sat, 28 Sep 2024 21:18:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0365815157098538020=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Enhance_debugfs_for_forcing?=
 =?utf-8?q?_joiner_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Sep 2024 21:18:52 -0000
Message-ID: <172755833282.1131708.5475670338560140763@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
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

--===============0365815157098538020==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enhance debugfs for forcing joiner (rev2)
URL   : https://patchwork.freedesktop.org/series/139162/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15454_full -> Patchwork_139162v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139162v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139162v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139162v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk1/igt@i915_pm_rps@engine-order.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk5/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_rps@reset:
    - shard-tglu:         NOTRUN -> [ABORT][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds:
    - shard-mtlp:         NOTRUN -> [SKIP][4] +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@i915_pm_rps@thresholds.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-tglu:         [PASS][5] -> [SKIP][6] +12 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-tglu:         NOTRUN -> [SKIP][7] +25 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_joiner@basic-force-joiner:
    - shard-mtlp:         [PASS][8] -> [SKIP][9] +1 other test skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@kms_big_joiner@basic-force-joiner.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_big_joiner@basic-force-joiner.html

  * igt@kms_feature_discovery@display-1x:
    - shard-dg2:          [PASS][10] -> [SKIP][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_feature_discovery@display-1x.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_feature_discovery@display-1x.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-snb:          NOTRUN -> [INCOMPLETE][12] +1 other test incomplete
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][13] +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][14] +4 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_vblank@query-idle-hang@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][15] +1 other test incomplete
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_vblank@query-idle-hang@pipe-d-edp-1.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2:          NOTRUN -> [SKIP][16] +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@sriov_basic@bind-unbind-vf.html

  
#### Warnings ####

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [SKIP][17] ([i915#5286]) -> [SKIP][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         [SKIP][19] ([i915#6095]) -> [SKIP][20] +3 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_content_protection@type1:
    - shard-tglu:         [SKIP][21] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) -> [SKIP][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_content_protection@type1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-mtlp:         [SKIP][23] ([i915#3359]) -> [SKIP][24] +7 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         [SKIP][25] ([i915#11453]) -> [SKIP][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglu:         [SKIP][27] ([i915#4103]) -> [SKIP][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu:         [SKIP][29] ([i915#1769] / [i915#3555] / [i915#3804]) -> [SKIP][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][31] ([i915#5354]) -> [SKIP][32] +16 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         [SKIP][33] ([i915#3555] / [i915#8228]) -> [SKIP][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_hdr@invalid-metadata-sizes.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-tglu:         [SKIP][35] ([i915#3555]) -> [SKIP][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_lowres@tiling-4.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-mtlp:         [SKIP][37] ([i915#4235]) -> [SKIP][38] +8 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         [SKIP][39] ([i915#8623]) -> [SKIP][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - {shard-tglu-1}:     NOTRUN -> [SKIP][41] +3 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  
Known issues
------------

  Here are the changes found in Patchwork_139162v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#8411])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_fdinfo@most-busy-idle-check-all:
    - shard-rkl:          [PASS][43] -> [FAIL][44] ([i915#12179])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][45] -> [FAIL][46] ([i915#7742])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#8414]) +9 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@drm_fdinfo@virtual-busy-all.html

  * igt@drm_fdinfo@virtual-busy-hang:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#8414])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@drm_fdinfo@virtual-busy-hang.html

  * igt@fbdev@info:
    - shard-dg2:          [PASS][49] -> [SKIP][50] ([i915#1849] / [i915#2582])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@fbdev@info.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#2582])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@fbdev@nullptr.html

  * igt@fbdev@unaligned-write:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#2582])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@fbdev@unaligned-write.html

  * igt@gem_caching@writes:
    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#4873])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_caching@writes.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#3555] / [i915#9323])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][55] ([i915#7297])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#7697])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#280])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][58] -> [FAIL][59] ([i915#5784])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-13/igt@gem_eio@reset-stress.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4812])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#4525]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][62] -> [FAIL][63] ([i915#2876])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fence@submit3:
    - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#4812])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#3539] / [i915#4852])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@gem_exec_flush@basic-wb-rw-before-default.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3539] / [i915#4852])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_reloc@basic-active:
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#3281]) +5 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_exec_reloc@basic-active.html

  * igt@gem_exec_reloc@basic-cpu-read:
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#3281])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-read.html

  * igt@gem_exec_reloc@basic-write-cpu-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3281])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@gem_exec_reloc@basic-write-cpu-noreloc.html

  * igt@gem_exec_schedule@pi-common:
    - shard-tglu:         NOTRUN -> [FAIL][70] ([i915#12296]) +5 other tests fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@gem_exec_schedule@pi-common.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg1:          [PASS][71] -> [ABORT][72] ([i915#7975] / [i915#8213]) +1 other test abort
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-18/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4860])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#4613])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#4613]) +3 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][76] ([i915#4613]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk7/igt@gem_lmem_swapping@verify-ccs.html
    - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#4613])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_lmem_swapping@verify-ccs.html
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#12193])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#4565])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_mmap@pf-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4083]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_mmap@pf-nonblock.html

  * igt@gem_mmap_gtt@basic-read-write:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4077])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_mmap_gtt@basic-read-write.html

  * igt@gem_mmap_offset@clear:
    - shard-mtlp:         [PASS][82] -> [ABORT][83] ([i915#10729])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@gem_mmap_offset@clear.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_mmap_offset@clear.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [PASS][84] -> [ABORT][85] ([i915#10029] / [i915#10729])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4083])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#4083])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-14/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html

  * igt@gem_pxp@reject-modify-context-protection-on:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#4270]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gem_pxp@reject-modify-context-protection-on.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#4270])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#8428])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#3282]) +3 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#3297]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#3281] / [i915#3297])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@bb-large:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#2527]) +1 other test skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@gen9_exec_parse@bb-large.html
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#2856])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#2527] / [i915#2856])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#2527]) +2 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gen9_exec_parse@secure-batches.html
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#2856])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][99] -> [ABORT][100] ([i915#9820])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [PASS][101] -> [ABORT][102] ([i915#9820])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg2:          [PASS][103] -> [ABORT][104] ([i915#9820])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@intel_hwmon@hwmon-read:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#7707])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#4212]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#4212])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#8709]) +7 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#1769] / [i915#3555])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-snb:          [PASS][110] -> [FAIL][111] ([i915#5956]) +1 other test fail
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
    - shard-mtlp:         [PASS][112] -> [FAIL][113] ([i915#11808] / [i915#5956]) +1 other test fail
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-2/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][114] -> [FAIL][115] ([i915#5138])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#5286])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#5286]) +2 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][118] +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-2/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#9197]) +16 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#3638])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#5190] / [i915#9197]) +2 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#4538])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#6095]) +119 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#6095]) +18 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#10307] / [i915#6095]) +99 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#6095]) +101 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:
    - shard-glk:          NOTRUN -> [SKIP][127] +46 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#6095]) +4 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html

  * igt@kms_cdclk@mode-transition@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#11616] / [i915#7213]) +3 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#7828]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_chamelium_audio@dp-audio.html
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4423] / [i915#7828])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#7828]) +5 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#7828])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#7828]) +4 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#7828]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3116])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#7118])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#11453])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#11453])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][140] +19 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#4103])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#4213])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#9809]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][144] +4 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#3804])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#3555] / [i915#3840])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3555] / [i915#3840])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#2065] / [i915#4854])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-4x:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#1839])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#658])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_feature_discovery@psr2.html
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#658])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][152] -> [FAIL][153] ([i915#2122]) +3 other tests fail
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][154] +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#3637]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#3637])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglu:         [PASS][157] -> [FAIL][158] ([i915#2122]) +1 other test fail
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-rkl:          [PASS][159] -> [FAIL][160] ([i915#2122])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-2/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][161] ([i915#12034])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-fences:
    - shard-tglu:         [PASS][162] -> [SKIP][163] ([i915#3637]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_flip@flip-vs-fences.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-dg1:          [PASS][164] -> [FAIL][165] ([i915#2122]) +1 other test fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-18/igt@kms_flip@plain-flip-ts-check.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-18/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a3:
    - shard-dg2:          NOTRUN -> [FAIL][166] ([i915#2122]) +3 other tests fail
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-7/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3555] / [i915#5190])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#2587] / [i915#2672] / [i915#3555])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#2587] / [i915#2672])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#2672] / [i915#3555])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#2672]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#2587] / [i915#2672]) +1 other test skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-dg2:          [PASS][173] -> [SKIP][174] ([i915#3555]) +3 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling:
    - shard-tglu:         [PASS][175] -> [SKIP][176] ([i915#3555]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#2672] / [i915#3555]) +1 other test skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#2672]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#3555]) +3 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
    - shard-tglu:         [PASS][180] -> [SKIP][181] ([i915#1849]) +1 other test skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-snb:          [PASS][182] -> [SKIP][183] +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#1849]) +9 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [PASS][185] -> [SKIP][186] ([i915#5354]) +10 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#5354]) +14 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#3458]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][189] +17 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#1825]) +4 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#3023]) +8 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#3458])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#1825]) +18 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#3555] / [i915#8228])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#3555] / [i915#8228])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_invalid_mode@zero-clock:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][196] ([i915#4423])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_invalid_mode@zero-clock.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#6301])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
    - shard-snb:          NOTRUN -> [SKIP][198]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#9581])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane@plane-position-hole-dpms:
    - shard-dg2:          [PASS][200] -> [SKIP][201] ([i915#8825]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_plane@plane-position-hole-dpms.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane@plane-position-hole-dpms.html

  * igt@kms_plane_alpha_blend@coverage-7efc:
    - shard-dg1:          [PASS][202] -> [DMESG-WARN][203] ([i915#4423]) +2 other tests dmesg-warn
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-14/igt@kms_plane_alpha_blend@coverage-7efc.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_plane_alpha_blend@coverage-7efc.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d:
    - shard-tglu:         [PASS][204] -> [SKIP][205] ([i915#12247] / [i915#8152]) +2 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-dg2:          [PASS][206] -> [SKIP][207] ([i915#8152] / [i915#9423]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#3555] / [i915#8152])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#12247] / [i915#8152])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:
    - shard-dg2:          [PASS][210] -> [SKIP][211] ([i915#8152]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#12247] / [i915#6953])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#12247]) +4 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#12247] / [i915#6953])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#12247]) +11 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-tglu:         [PASS][216] -> [SKIP][217] ([i915#6953] / [i915#8152])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b:
    - shard-tglu:         [PASS][218] -> [SKIP][219] ([i915#12247]) +5 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-dg2:          [PASS][220] -> [SKIP][221] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a:
    - shard-dg2:          [PASS][222] -> [SKIP][223] ([i915#12247]) +8 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:
    - shard-dg2:          [PASS][224] -> [SKIP][225] ([i915#12247] / [i915#8152])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#9685])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#9685])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [PASS][228] -> [FAIL][229] ([i915#9295])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][230] -> [SKIP][231] ([i915#4281])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#8430])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-tglu:         [PASS][233] -> [SKIP][234] ([i915#9519])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_pm_rpm@dpms-lpsp.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#9519]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][236] -> [SKIP][237] ([i915#9519])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg2:          [PASS][238] -> [SKIP][239] ([i915#3547])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_pm_rpm@drm-resources-equal.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][240] -> [SKIP][241] ([i915#9519]) +2 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#6524])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-2/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#6524])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#9683])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#1072] / [i915#9732]) +1 other test skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_psr@fbc-psr-suspend.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#9688]) +3 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr-cursor-render:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#1072] / [i915#9732]) +9 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_psr@psr-cursor-render.html
    - shard-dg1:          NOTRUN -> [SKIP][248] ([i915#1072] / [i915#9732]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#9732]) +8 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu:         NOTRUN -> [ABORT][250] ([i915#12231]) +1 other test abort
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@invalid-clone-single-crtc-stealing:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#3555]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][252] -> [FAIL][253] ([IGT#2])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_sysfs_edid_timing.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_sysfs_edid_timing.html
    - shard-snb:          [PASS][254] -> [FAIL][255] ([IGT#2] / [i915#6493])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_sysfs_edid_timing.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@ts-continuation-idle-hang:
    - shard-dg2:          [PASS][256] -> [SKIP][257] ([i915#9197]) +34 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_vblank@ts-continuation-idle-hang.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_vblank@ts-continuation-idle-hang.html

  * igt@kms_vrr@max-min:
    - shard-tglu:         NOTRUN -> [SKIP][258] ([i915#9906])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_vrr@max-min.html

  * igt@kms_writeback@writeback-check-output-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#2437] / [i915#9412])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html

  * igt@perf@mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#2434])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@perf@mi-rpc.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-dg2:          NOTRUN -> [FAIL][261] ([i915#11943])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@perf_pmu@all-busy-idle-check-all.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#8516])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#3291] / [i915#3708])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#3708])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-16/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][265] ([i915#9781])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - shard-dg2:          [SKIP][266] ([i915#2582]) -> [PASS][267]
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@fbdev@read.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@fbdev@read.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][268] ([i915#7297]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_exec_balancer@full:
    - shard-dg2:          [FAIL][270] -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-7/igt@gem_exec_balancer@full.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@gem_exec_balancer@full.html

  * igt@gem_exec_fair@basic-pace-share:
    - shard-rkl:          [FAIL][272] ([i915#2842]) -> [PASS][273] +2 other tests pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@gem_exec_fair@basic-pace-share.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@gem_exec_fair@basic-pace-share.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][274] ([i915#2842]) -> [PASS][275] +1 other test pass
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][276] ([i915#5493]) -> [PASS][277] +1 other test pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4:
    - shard-dg1:          [FAIL][278] ([i915#5956]) -> [PASS][279] +1 other test pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][280] ([i915#5138]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_cursor_edge_walk@128x128-top-bottom:
    - shard-dg2:          [SKIP][282] ([i915#9197]) -> [PASS][283] +46 other tests pass
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_edge_walk@128x128-top-bottom.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_cursor_edge_walk@128x128-top-bottom.html

  * igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled:
    - shard-glk:          [DMESG-WARN][284] -> [PASS][285] +1 other test pass
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk5/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk4/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][286] ([i915#2122]) -> [PASS][287] +2 other tests pass
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@absolute-wf_vblank-interruptible:
    - shard-dg2:          [SKIP][288] ([i915#5354]) -> [PASS][289] +18 other tests pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip@absolute-wf_vblank-interruptible.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_flip@absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-tglu:         [FAIL][290] ([i915#2122]) -> [PASS][291] +1 other test pass
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-6/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-tglu:         [SKIP][292] ([i915#3637]) -> [PASS][293] +2 other tests pass
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:
    - shard-glk:          [FAIL][294] ([i915#2122]) -> [PASS][295] +7 other tests pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk7/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
    - {shard-tglu-1}:     [FAIL][296] -> [PASS][297]
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@c-hdmi-a1:
    - {shard-tglu-1}:     [FAIL][298] ([i915#2122]) -> [PASS][299] +1 other test pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check:
    - shard-rkl:          [FAIL][300] ([i915#11989] / [i915#2122]) -> [PASS][301]
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [SKIP][302] ([i915#3555]) -> [PASS][303] +8 other tests pass
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-tglu:         [SKIP][304] ([i915#1849]) -> [PASS][305] +4 other tests pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-snb:          [SKIP][306] -> [PASS][307] +7 other tests pass
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_plane@pixel-format:
    - shard-dg2:          [SKIP][308] ([i915#8825]) -> [PASS][309] +1 other test pass
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane@pixel-format.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_plane@pixel-format.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [SKIP][310] ([i915#7294]) -> [PASS][311] +1 other test pass
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c:
    - shard-dg2:          [SKIP][312] ([i915#12247]) -> [PASS][313] +20 other tests pass
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-tglu:         [SKIP][314] ([i915#8152]) -> [PASS][315] +3 other tests pass
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:
    - shard-tglu:         [SKIP][316] ([i915#12247]) -> [PASS][317] +5 other tests pass
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-dg2:          [SKIP][318] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][319] +2 other tests pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
    - shard-dg2:          [SKIP][320] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][321] +1 other test pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-dg2:          [SKIP][322] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][324] ([i915#12247] / [i915#8152]) -> [PASS][325] +6 other tests pass
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [SKIP][326] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [SKIP][328] ([i915#9340]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg2:          [SKIP][330] -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][332] ([i915#9519]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-rkl:          [SKIP][334] ([i915#9519]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-dg1:          [DMESG-WARN][336] ([i915#4423]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-13/igt@kms_pm_rpm@system-suspend-modeset.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [SKIP][338] ([i915#11521]) -> [PASS][339] +1 other test pass
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_vblank@wait-forked-busy:
    - shard-tglu:         [SKIP][340] -> [PASS][341] +15 other tests pass
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_vblank@wait-forked-busy.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_vblank@wait-forked-busy.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][342] ([i915#11231]) -> [ABORT][343] ([i915#10131] / [i915#9820])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg2:          [SKIP][344] ([i915#1769] / [i915#3555]) -> [SKIP][345] ([i915#9197])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [SKIP][346] -> [SKIP][347] ([i915#5286])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          [SKIP][348] ([i915#9197]) -> [SKIP][349] +3 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-dg2:          [SKIP][350] -> [SKIP][351] ([i915#9197]) +3 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          [SKIP][352] ([i915#5190] / [i915#9197]) -> [SKIP][353] ([i915#5190])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][354] ([i915#5190] / [i915#9197]) -> [SKIP][355] ([i915#4538] / [i915#5190]) +10 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          [SKIP][356] ([i915#4538] / [i915#5190]) -> [SKIP][357] ([i915#5190] / [i915#9197]) +3 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][358] ([i915#10307] / [i915#6095]) -> [SKIP][359] ([i915#9197]) +7 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][360] ([i915#9197]) -> [SKIP][361] ([i915#10307] / [i915#6095]) +11 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         [SKIP][362] -> [SKIP][363] ([i915#6095])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][364] ([i915#9197]) -> [SKIP][365] ([i915#11616] / [i915#7213])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][366] ([i915#5354]) -> [SKIP][367] ([i915#3555])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_color@deep-color.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          [SKIP][368] ([i915#9197]) -> [SKIP][369] ([i915#3299])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [TIMEOUT][370] ([i915#7173]) -> [SKIP][371] ([i915#9197])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_content_protection@legacy.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][372] ([i915#9197]) -> [SKIP][373] ([i915#7118] / [i915#9424])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_content_protection@type1.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg2:          [SKIP][374] ([i915#9197]) -> [SKIP][375] ([i915#3555]) +4 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu:         [SKIP][376] -> [SKIP][377] ([i915#11453])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_cursor_crc@cursor-random-512x512.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-dg2:          [SKIP][378] ([i915#9197]) -> [SKIP][379] ([i915#11453]) +1 other test skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          [SKIP][380] ([i915#11453]) -> [SKIP][381] ([i915#9197])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-dg2:          [SKIP][382] ([i915#3555]) -> [SKIP][383] ([i915#9197])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-max-size.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2:          [SKIP][384] ([i915#5354]) -> [SKIP][385] ([i915#9197]) +2 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - shard-dg2:          [SKIP][386] ([i915#9197]) -> [SKIP][387] ([i915#5354]) +2 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg2:          [SKIP][388] ([i915#9197]) -> [SKIP][389] ([i915#4103] / [i915#4213]) +2 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglu:         [SKIP][390] -> [SKIP][391] ([i915#3555]) +1 other test skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-dg2:          [SKIP][392] ([i915#8588]) -> [SKIP][393] ([i915#9197])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][394] ([i915#9197]) -> [SKIP][395] ([i915#8812])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-dg2:          [SKIP][396] ([i915#9197]) -> [SKIP][397] ([i915#3555] / [i915#3840])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][398] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][399] ([i915#3555] / [i915#5190])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         [SKIP][400] ([i915#3555]) -> [SKIP][401] ([i915#2672] / [i915#3555])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][402] ([i915#2672] / [i915#3555]) -> [SKIP][403] ([i915#3555])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][404] ([i915#3555] / [i915#5190]) -> [SKIP][405] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         [SKIP][406] -> [SKIP][407] ([i915#1849]) +16 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][408] ([i915#10433] / [i915#3458]) -> [SKIP][409] ([i915#3458]) +4 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2:          [SKIP][410] ([i915#3458]) -> [SKIP][411] ([i915#5354]) +9 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          [SKIP][412] ([i915#5354]) -> [SKIP][413] ([i915#10433] / [i915#3458]) +1 other test skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][414] -> [SKIP][415] ([i915#5354]) +11 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-tglu:         [SKIP][416] ([i915#1849]) -> [SKIP][417] +13 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          [SKIP][418] ([i915#3458]) -> [SKIP][419] ([i915#10433] / [i915#3458])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-dg2:          [SKIP][420] ([i915#5354]) -> [SKIP][421] ([i915#3458]) +14 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [SKIP][422] ([i915#3555] / [i915#8228]) -> [SKIP][423] ([i915#9197])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_hdr@bpc-switch-dpms.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [SKIP][424] ([i915#9197]) -> [SKIP][425] ([i915#3555] / [i915#8228])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          [SKIP][426] ([i915#9197]) -> [SKIP][427] ([i915#6301])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          [SKIP][428] ([i915#9197]) -> [SKIP][429] ([i915#8806])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_multiple@tiling-y.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][430] ([i915#6953] / [i915#9423]) -> [SKIP][431] ([i915#6953] / [i915#8152] / [i915#9423])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
    - shard-dg2:          [SKIP][432] ([i915#12247] / [i915#6953] / [i915#9423]) -> [SKIP][433] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) +1 other test skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][434] ([i915#12247]) -> [SKIP][435] ([i915#12247] / [i915#8152]) +1 other test skip
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-tglu:         [SKIP][436] ([i915#12247] / [i915#6953]) -> [SKIP][437] ([i915#12247] / [i915#6953] / [i915#8152])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:
    - shard-tglu:         [SKIP][438] ([i915#12247]) -> [SKIP][439] ([i915#12247] / [i915#8152])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [SKIP][440] ([i915#3361]) -> [FAIL][441] ([i915#9295])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-2/igt@kms_pm_dc@dc6-dpms.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-dg2:          [SKIP][442] ([i915#5190]) -> [SKIP][443] ([i915#5190] / [i915#9197]) +2 other tests skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-dg2:          [SKIP][444] ([i915#11131] / [i915#5190]) -> [SKIP][445] ([i915#5190] / [i915#9197])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][446] ([i915#5190] / [i915#9197]) -> [SKIP][447] ([i915#11131] / [i915#5190])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
    - shard-tglu:         [SKIP][448] ([i915#5289]) -> [SKIP][449]
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          [SKIP][450] ([i915#11131]) -> [SKIP][451] ([i915#9197])
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/index.html

--===============0365815157098538020==
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
<tr><td><b>Series:</b></td><td>Enhance debugfs for forcing joiner (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139162/">https://patchwork.freedesktop.org/series/139162/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15454_full -&gt; Patchwork_139162v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139162v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139162v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139162v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk1/igt@i915_pm_rps@engine-order.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk5/igt@i915_pm_rps@engine-order.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@i915_pm_rps@reset.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@i915_pm_rps@thresholds.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_atomic_transition@modeset-transition-nonblocking.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_atomic_transition@modeset-transition-nonblocking.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html">SKIP</a> +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic-force-joiner:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@kms_big_joiner@basic-force-joiner.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_big_joiner@basic-force-joiner.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-1x:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_feature_discovery@display-1x.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_feature_discovery@display-1x.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_flip@flip-vs-blocking-wf-vblank.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@query-idle-hang@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_vblank@query-idle-hang@pipe-d-edp-1.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_content_protection@type1.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_content_protection@type1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> ([i915#1769] / [i915#3555] / [i915#3804]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_lowres@tiling-4.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_lowres@tiling-4.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">SKIP</a> ([i915#4235]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#8623]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139162v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@api_intel_bb@object-reloc-purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all.html">FAIL</a> ([i915#12179])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@drm_fdinfo@virtual-busy-all.html">SKIP</a> ([i915#8414]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@drm_fdinfo@virtual-busy-hang.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@fbdev@info.html">SKIP</a> ([i915#1849] / [i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_caching@writes.html">SKIP</a> ([i915#4873])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@gem_ccs@block-copy-compressed.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-13/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_exec_balancer@bonded-semaphore.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2876])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_exec_fence@submit3.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@gem_exec_flush@basic-wb-rw-before-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_exec_flush@basic-wb-rw-default.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_exec_reloc@basic-active.html">SKIP</a> ([i915#3281]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-read.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@gem_exec_reloc@basic-write-cpu-noreloc.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@gem_exec_schedule@pi-common.html">FAIL</a> ([i915#12296]) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-18/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> ([i915#4613]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk7/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#4613])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@gem_lmem_swapping@verify-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@pf-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_mmap@pf-nonblock.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_mmap_gtt@basic-read-write.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_mmap_offset@clear.html">ABORT</a> ([i915#10729])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-7/igt@gem_mmap_offset@clear@smem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> ([i915#10029] / [i915#10729])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gem_mmap_wc@bad-offset.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-14/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gem_pxp@reject-modify-context-protection-on.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-buf-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html">SKIP</a> ([i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> ([i915#3282]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@gem_userptr_blits@relocations.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2527]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@intel_hwmon@hwmon-read.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html">SKIP</a> ([i915#8709]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> ([i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-2/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html">FAIL</a> ([i915#11808] / [i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-2/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#9197]) +16 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([i915#3638])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +119 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html">SKIP</a> ([i915#6095]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#6095]) +99 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +101 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs.html">SKIP</a> +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> ([i915#4423] / [i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> ([i915#7828])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-without-ddc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html">SKIP</a> ([i915#9809]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#2065] / [i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_feature_discovery@display-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-9/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-3/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-2/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a2.html">FAIL</a> ([i915#12034])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_flip@flip-vs-fences.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-18/igt@kms_flip@plain-flip-ts-check.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-18/igt@kms_flip@plain-flip-ts-check.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-7/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-upscaling.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> ([i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html">SKIP</a> ([i915#1849]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> ([i915#1849]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> ([i915#5354]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> ([i915#1825]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#3023]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html">SKIP</a> ([i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_hdr@invalid-hdr.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_invalid_mode@zero-clock.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> ([i915#9581])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_plane@plane-position-hole-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane@plane-position-hole-dpms.html">SKIP</a> ([i915#8825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-14/igt@kms_plane_alpha_blend@coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_plane_alpha_blend@coverage-7efc.html">DMESG-WARN</a> ([i915#4423]) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> ([i915#3555] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-a.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_pm_dc@dc5-psr.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a> ([i915#3547])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-2/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_psr@fbc-psr-suspend.html">SKIP</a> ([i915#1072] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_psr@pr-sprite-plane-onoff.html">SKIP</a> ([i915#9688]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_psr@psr-cursor-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +9 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-15/igt@kms_psr@psr-cursor-render.html">SKIP</a> ([i915#1072] / [i915#9732]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_psr@psr2-cursor-plane-onoff.html">SKIP</a> ([i915#9732]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_selftest@drm_framebuffer.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc-stealing:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-1/igt@kms_setmode@invalid-clone-single-crtc-stealing.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb6/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb1/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2] / [i915#6493])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-idle-hang:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_vblank@ts-continuation-idle-hang.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_vblank@ts-continuation-idle-hang.html">SKIP</a> ([i915#9197]) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@kms_vrr@max-min.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412])</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@perf@mi-rpc.html">SKIP</a> ([i915#2434])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@perf_pmu@all-busy-idle-check-all.html">FAIL</a> ([i915#11943])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-6/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@prime_vgem@basic-read.html">SKIP</a> ([i915#3291] / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-16/igt@prime_vgem@fence-write-hang.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-7/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> ([i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@fbdev@read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-7/igt@gem_exec_balancer@full.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@gem_exec_balancer@full.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-4/igt@gem_exec_fair@basic-pace-share.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@gem_exec_fair@basic-pace-share.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#5956]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-4.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> ([i915#5138]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-top-bottom:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_edge_walk@128x128-top-bottom.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_cursor_edge_walk@128x128-top-bottom.html">PASS</a> +46 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk5/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk4/igt@kms_draw_crc@draw-method-blt@xrgb8888-ytiled.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip@absolute-wf_vblank-interruptible.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_flip@absolute-wf_vblank-interruptible.html">PASS</a> +18 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-6/igt@kms_flip@flip-vs-blocking-wf-vblank.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">SKIP</a> ([i915#3637]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip@plain-flip-fb-recreate-interruptible.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-glk7/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">PASS</a> +7 other tests pass</li>
<li>{shard-tglu-1}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-hdmi-a1:</p>
<ul>
<li>{shard-tglu-1}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-1/igt@kms_flip@plain-flip-ts-check@c-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-5/igt@kms_flip@wf_vblank-ts-check.html">FAIL</a> ([i915#11989] / [i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-2/igt@kms_flip@wf_vblank-ts-check.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane@pixel-format.html">SKIP</a> ([i915#8825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_plane@pixel-format.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html">SKIP</a> ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_alpha_blend@constant-alpha-max.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-c.html">PASS</a> +20 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> ([i915#9340]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_pm_rpm@i2c.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg1-13/igt@kms_pm_rpm@system-suspend-modeset.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg1-13/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">SKIP</a> ([i915#11521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_properties@plane-properties-legacy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-busy:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_vblank@wait-forked-busy.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_vblank@wait-forked-busy.html">PASS</a> +15 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#11231]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#9197]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> ([i915#11616] / [i915#7213])</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_color@deep-color.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#7173]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_content_protection@legacy.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_content_protection@type1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_content_protection@type1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> ([i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html">SKIP</a> ([i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i915#4103] / [i915#4213]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> ([i915#1849]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([i915#10433] / [i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> ([i915#5354]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> ([i915#10433] / [i915#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html">SKIP</a> ([i915#3458]) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-1/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-4/igt@kms_plane_multiple@tiling-y.html">SKIP</a> ([i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-rkl-2/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> ([i915#3361]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> ([i915#9295])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html">SKIP</a> ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">SKIP</a> ([i915#11131] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#11131] / [i915#5190])</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-tglu-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#5289]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15454/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-90.html">SKIP</a> ([i915#11131]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139162v2/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0365815157098538020==--
