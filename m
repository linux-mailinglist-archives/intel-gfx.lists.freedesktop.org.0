Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4C6987B81
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 01:12:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E3510E349;
	Thu, 26 Sep 2024 23:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41ECB10E349;
 Thu, 26 Sep 2024 23:12:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6665277115282538687=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/bios=3A_Refactor_R?=
 =?utf-8?q?OM_access_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Sep 2024 23:12:02 -0000
Message-ID: <172739232223.1109224.4246573638531223111@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240923152453.11230-1-ville.syrjala@linux.intel.com>
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

--===============6665277115282538687==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/bios: Refactor ROM access (rev2)
URL   : https://patchwork.freedesktop.org/series/138477/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15448_full -> Patchwork_138477v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_138477v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_138477v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_138477v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@nop:
    - shard-dg2:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@gem_exec_balancer@nop.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@gem_exec_balancer@nop.html

  * igt@gem_exec_schedule@pi-common:
    - shard-tglu:         NOTRUN -> [FAIL][3] +5 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@gem_exec_schedule@pi-common.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][4] +2 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_async_flips@test-cursor.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-tglu:         NOTRUN -> [SKIP][5] +33 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html

  * igt@kms_cursor_edge_walk@64x64-right-edge:
    - shard-tglu:         [PASS][7] -> [SKIP][8] +25 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_cursor_edge_walk@64x64-right-edge.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_cursor_edge_walk@64x64-right-edge.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-mtlp:         NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][10] +8 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][11] +4 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
    - shard-dg1:          NOTRUN -> [SKIP][12] +6 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-15/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html

  
#### Warnings ####

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-tglu:         [SKIP][13] ([i915#5286]) -> [SKIP][14] +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-tglu:         [SKIP][15] ([i915#12042]) -> [SKIP][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-tglu:         [SKIP][17] ([i915#6095]) -> [SKIP][18] +7 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_content_protection@srm:
    - shard-tglu:         [SKIP][19] ([i915#6944] / [i915#7116] / [i915#7118]) -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_content_protection@srm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-tglu:         [SKIP][21] ([i915#11453]) -> [SKIP][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglu:         [SKIP][23] ([i915#4103]) -> [SKIP][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-tglu:         [SKIP][25] ([i915#3840] / [i915#9053]) -> [SKIP][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          [SKIP][27] ([i915#5354]) -> [SKIP][28] +6 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-tglu:         [SKIP][29] ([i915#5289]) -> [SKIP][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_vrr@flip-basic:
    - shard-tglu:         [SKIP][31] ([i915#3555]) -> [SKIP][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_vrr@flip-basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_vrr@flip-basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - {shard-tglu-1}:     NOTRUN -> [FAIL][33] +1 other test fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-1/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@i915_pm_freq_api@freq-reset:
    - {shard-tglu-1}:     NOTRUN -> [SKIP][34] +126 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - {shard-tglu-1}:     NOTRUN -> [WARN][35] +1 other test warn
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15448_full and Patchwork_138477v2_full:

### New IGT tests (2) ###

  * igt@kms_color@ctm-max@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.66] s

  * igt@kms_color@ctm-max@pipe-b-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.57] s

  

Known issues
------------

  Here are the changes found in Patchwork_138477v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#6230])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@api_intel_bb@crc32.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [PASS][37] -> [SKIP][38] ([i915#2582])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@fbdev@nullptr.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@fbdev@nullptr.html

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#7697])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#9323])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
    - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#9323])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][42] -> [INCOMPLETE][43] ([i915#7297])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][44] -> [FAIL][45] ([i915#12027])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_freq@sysfs:
    - shard-dg2:          [PASS][46] -> [FAIL][47] ([i915#9561]) +1 other test fail
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-6/igt@gem_ctx_freq@sysfs.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-6/igt@gem_ctx_freq@sysfs.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#280])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#280])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_big@single:
    - shard-tglu:         NOTRUN -> [ABORT][50] ([i915#11713])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-7/igt@gem_exec_big@single.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#3539] / [i915#4852]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-15/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          NOTRUN -> [FAIL][52] ([i915#2846])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk7/igt@gem_exec_fair@basic-deadline.html
    - shard-mtlp:         NOTRUN -> [SKIP][53] ([i915#4473] / [i915#4771]) +1 other test skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@gem_exec_fair@basic-deadline.html
    - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#3539] / [i915#4852])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul:
    - shard-rkl:          NOTRUN -> [FAIL][55] ([i915#2842]) +1 other test fail
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gem_exec_fair@basic-none-rrul.html
    - shard-tglu:         NOTRUN -> [FAIL][56] ([i915#2842]) +1 other test fail
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@gem_exec_fair@basic-none-rrul.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-rkl:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#3281]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@gem_exec_reloc@basic-cpu-wc-active.html
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3281])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-wc-active.html
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#3281])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-15/igt@gem_exec_reloc@basic-cpu-wc-active.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#3281]) +2 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#4812])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#2190])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#4613] / [i915#7582])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#4613]) +2 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@gem_lmem_swapping@heavy-random.html
    - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#4613])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][68] -> [TIMEOUT][69] ([i915#5493]) +1 other test timeout
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_madvise@dontneed-before-exec:
    - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#3282]) +2 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@gem_madvise@dontneed-before-exec.html
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3282])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@gem_madvise@dontneed-before-exec.html
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3282])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-15/igt@gem_madvise@dontneed-before-exec.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4083])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-11/igt@gem_mmap_wc@bad-object.html
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#4083]) +1 other test skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-16/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@bad-size:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#4083])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-7/igt@gem_mmap_wc@bad-size.html

  * igt@gem_pxp@create-regular-context-1:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4270]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@gem_pxp@create-regular-context-1.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#4270])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#4270]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-off-2.html
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#4270]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3282]) +4 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#8428])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#5190] / [i915#8428]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_render_tiled_blits@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#4079])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-7/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#4077])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-13/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#2527]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html
    - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#2527] / [i915#2856]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [PASS][87] -> [ABORT][88] ([i915#9820])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
    - shard-glk:          [PASS][89] -> [ABORT][90] ([i915#9820])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#8399])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#6590]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#5723])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-7/igt@i915_query@test-query-geometry-subslices.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#7707])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@intel_hwmon@hwmon-write.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-glk:          NOTRUN -> [SKIP][95] +30 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#3555])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#9531])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-15/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#9531])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-dg2:          [PASS][99] -> [FAIL][100] ([i915#5956]) +1 other test fail
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#4538] / [i915#5286])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#5286]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][103] +2 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#5286]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][105] -> [FAIL][106] ([i915#5138]) +1 other test fail
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-dg2:          [PASS][107] -> [SKIP][108] ([i915#9197]) +37 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - shard-dg1:          [PASS][109] -> [DMESG-WARN][110] ([i915#4423])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-15/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-17/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][111] +1 other test skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4538] / [i915#5190])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#6095]) +4 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#10307] / [i915#10434] / [i915#6095])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#6095]) +54 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#6095]) +84 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#12042])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#10307] / [i915#6095]) +149 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#6095]) +41 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#7828]) +3 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_edid@dp-edid-resolution-list:
    - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#7828]) +5 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_chamelium_edid@dp-edid-resolution-list.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#7828])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#7828]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#7828]) +5 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@deep-color:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#3555] / [i915#9979])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#7118] / [i915#9424])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#3116] / [i915#3299]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3555]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#11453]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][130] ([i915#7882])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#4103])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#9809])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][133] -> [FAIL][134] ([i915#2346])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4103] / [i915#4213])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#9723])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#8588])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#3555] / [i915#3840]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#4854])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#658])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][141] -> [FAIL][142] ([i915#79]) +1 other test fail
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#3637]) +6 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#3637] / [i915#3966])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-glk:          [PASS][145] -> [FAIL][146] ([i915#2122]) +1 other test fail
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - shard-tglu:         [PASS][147] -> [SKIP][148] ([i915#3637]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_flip@basic-flip-vs-modeset.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-mtlp:         NOTRUN -> [FAIL][149] ([i915#2122]) +2 other tests fail
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:
    - shard-tglu:         [PASS][150] -> [FAIL][151] ([i915#2122]) +3 other tests fail
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-4/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#2587] / [i915#2672]) +3 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#2587] / [i915#2672] / [i915#3555])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-dg2:          [PASS][154] -> [SKIP][155] ([i915#3555]) +2 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#2672] / [i915#3555]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#2672]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][158] -> [SKIP][159] ([i915#5354]) +13 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-snb:          [PASS][160] -> [SKIP][161] +4 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#1825]) +4 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#1825]) +15 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#3023]) +9 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][165] +4 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][166] +44 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#3458]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#5354]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#1849]) +18 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#3458]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_hdr@static-swap:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#3555] / [i915#8228])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_hdr@static-swap.html

  * igt@kms_invalid_mode@bad-vsync-start:
    - shard-tglu:         [PASS][172] -> [SKIP][173] ([i915#3555]) +2 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_invalid_mode@bad-vsync-start.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_invalid_mode@bad-vsync-start.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#1839])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@pixel-format:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#8825])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane@pixel-format.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-tglu:         [PASS][176] -> [SKIP][177] ([i915#8825])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane@plane-panning-bottom-right-suspend.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-dg2:          [PASS][178] -> [SKIP][179] ([i915#8825]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane@plane-panning-top-left.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-tglu:         [PASS][180] -> [SKIP][181] ([i915#7294])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@coverage-7efc:
    - shard-dg2:          [PASS][182] -> [SKIP][183] ([i915#7294]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_plane_alpha_blend@coverage-7efc.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-7efc.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#8152])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][185] ([i915#8292])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][186] ([i915#8292])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-b:
    - shard-tglu:         [PASS][187] -> [SKIP][188] ([i915#12247]) +5 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-b.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:
    - shard-tglu:         [PASS][189] -> [SKIP][190] ([i915#8152]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-dg2:          [PASS][191] -> [SKIP][192] ([i915#12247]) +8 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d:
    - shard-dg2:          [PASS][193] -> [SKIP][194] ([i915#8152])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
    - shard-dg2:          [PASS][195] -> [SKIP][196] ([i915#12247] / [i915#8152] / [i915#9423])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#12247] / [i915#6953])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#12247]) +1 other test skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#12247] / [i915#6953])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#12247] / [i915#6953])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_plane_scaling@planes-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#12247] / [i915#8152]) +1 other test skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#12247]) +11 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#12247]) +3 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-tglu:         [PASS][204] -> [SKIP][205] ([i915#6953] / [i915#8152])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d:
    - shard-tglu:         [PASS][206] -> [SKIP][207] ([i915#12247] / [i915#8152])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg2:          [PASS][208] -> [SKIP][209] ([i915#3555] / [i915#8152] / [i915#9423]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:
    - shard-dg2:          [PASS][210] -> [SKIP][211] ([i915#12247] / [i915#8152]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:
    - shard-snb:          NOTRUN -> [SKIP][212] +12 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-snb7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#5354]) +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#5354])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-16/igt@kms_pm_backlight@basic-brightness.html
    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#9812])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-tglu:         [PASS][216] -> [SKIP][217] ([i915#1849]) +4 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_pm_rpm@cursor-dpms.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-tglu:         [PASS][218] -> [SKIP][219] ([i915#3547] / [i915#9519])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_pm_rpm@drm-resources-equal.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#9519])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][221] -> [SKIP][222] ([i915#9519]) +1 other test skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@pm-tiling:
    - shard-tglu:         [PASS][223] -> [SKIP][224] ([i915#9519])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_pm_rpm@pm-tiling.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_pm_rpm@pm-tiling.html

  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#9808]) +2 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1.html

  * igt@kms_psr@fbc-psr2-primary-blt:
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#1072] / [i915#9732]) +4 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-19/igt@kms_psr@fbc-psr2-primary-blt.html

  * igt@kms_psr@pr-sprite-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#9688]) +2 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_psr@pr-sprite-mmap-cpu.html
    - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#1072] / [i915#9732]) +2 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_psr@pr-sprite-mmap-cpu.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][229] ([i915#9732]) +15 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_psr@psr2-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#1072] / [i915#9732]) +9 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_psr@psr2-suspend.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#9685])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-16/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#9685])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-11/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#3555]) +4 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#9906])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#2437])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#3708] / [i915#4077])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@prime_vgem@basic-fence-mmap.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-rkl:          NOTRUN -> [SKIP][237] +14 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-idle-check-all:
    - shard-rkl:          [FAIL][238] ([i915#12179]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][240] ([i915#7742]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@fbdev@unaligned-read:
    - shard-dg2:          [SKIP][242] ([i915#2582]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@fbdev@unaligned-read.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@fbdev@unaligned-read.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          [FAIL][244] ([i915#12027]) -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk5/igt@gem_ctx_engines@invalid-engines.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk9/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [FAIL][246] ([i915#12027]) -> [PASS][247]
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-rkl:          [FAIL][248] ([i915#2842]) -> [PASS][249]
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-7/igt@gem_exec_fair@basic-pace@bcs0.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [ABORT][250] ([i915#9820]) -> [PASS][251]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][252] ([i915#3591]) -> [PASS][253] +1 other test pass
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][254] ([i915#7790]) -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb4/igt@i915_pm_rps@reset.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-snb7/igt@i915_pm_rps@reset.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [SKIP][256] ([i915#7984]) -> [PASS][257]
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-4/igt@i915_power@sanity.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-6/igt@i915_power@sanity.html

  * igt@kms_addfb_basic@master-rmfb:
    - shard-dg1:          [DMESG-WARN][258] ([i915#4423]) -> [PASS][259] +1 other test pass
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-13/igt@kms_addfb_basic@master-rmfb.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-12/igt@kms_addfb_basic@master-rmfb.html

  * igt@kms_big_joiner@invalid-modeset-force-joiner:
    - shard-dg2:          [SKIP][260] -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-7/igt@kms_big_joiner@invalid-modeset-force-joiner.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html

  * igt@kms_cursor_crc@cursor-dpms:
    - shard-tglu:         [SKIP][262] -> [PASS][263] +27 other tests pass
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_cursor_crc@cursor-dpms.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_cursor_crc@cursor-dpms.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-mtlp:         [INCOMPLETE][264] -> [PASS][265] +1 other test pass
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-8/igt@kms_cursor_crc@cursor-suspend.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][266] ([i915#2122]) -> [PASS][267] +3 other tests pass
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-snb4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible:
    - shard-tglu:         [SKIP][268] ([i915#3637]) -> [PASS][269] +3 other tests pass
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip@dpms-vs-vblank-race-interruptible.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_flip@dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-dg2:          [SKIP][270] ([i915#3555]) -> [PASS][271] +3 other tests pass
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglu:         [SKIP][272] ([i915#1849]) -> [PASS][273] +4 other tests pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-dg2:          [SKIP][274] ([i915#5354]) -> [PASS][275] +9 other tests pass
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_invalid_mode@bad-vtotal:
    - shard-tglu:         [SKIP][276] ([i915#3555]) -> [PASS][277] +1 other test pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_invalid_mode@bad-vtotal.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_invalid_mode@bad-vtotal.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-dg2:          [SKIP][278] ([i915#9197]) -> [PASS][279] +24 other tests pass
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane@plane-position-covered:
    - shard-dg2:          [SKIP][280] ([i915#8825]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane@plane-position-covered.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_plane@plane-position-covered.html

  * igt@kms_plane@plane-position-hole:
    - shard-tglu:         [SKIP][282] ([i915#8825]) -> [PASS][283] +1 other test pass
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane@plane-position-hole.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@constant-alpha-min:
    - shard-dg2:          [SKIP][284] ([i915#7294]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_plane_alpha_blend@constant-alpha-min.html

  * igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:
    - shard-tglu:         [SKIP][286] ([i915#7294]) -> [PASS][287]
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html

  * igt@kms_plane_scaling@invalid-num-scalers:
    - shard-tglu:         [SKIP][288] ([i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][289]
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@invalid-num-scalers.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@invalid-num-scalers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-tglu:         [SKIP][290] ([i915#8152]) -> [PASS][291] +3 other tests pass
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:
    - shard-dg2:          [SKIP][292] ([i915#8152] / [i915#9423]) -> [PASS][293] +1 other test pass
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][294] ([i915#8152]) -> [PASS][295] +1 other test pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-dg2:          [SKIP][296] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][297]
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-dg2:          [SKIP][298] ([i915#12247]) -> [PASS][299] +11 other tests pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:
    - shard-dg2:          [SKIP][300] ([i915#12247] / [i915#8152]) -> [PASS][301] +1 other test pass
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-tglu:         [SKIP][302] ([i915#12247] / [i915#6953] / [i915#8152]) -> [PASS][303]
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a:
    - shard-tglu:         [SKIP][304] ([i915#12247]) -> [PASS][305] +8 other tests pass
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:
    - shard-tglu:         [SKIP][306] ([i915#12247] / [i915#8152]) -> [PASS][307]
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-dg2:          [SKIP][308] ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][309]
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][310] ([i915#4281]) -> [PASS][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [SKIP][312] ([i915#9519]) -> [PASS][313]
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [SKIP][314] ([i915#9519]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_properties@crtc-properties-legacy:
    - shard-dg2:          [SKIP][316] ([i915#11521]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_properties@crtc-properties-legacy.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_properties@crtc-properties-legacy.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-mtlp:         [FAIL][318] -> [PASS][319] +1 other test pass
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][320] ([i915#4349]) -> [PASS][321] +4 other tests pass
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-3/igt@perf_pmu@busy-double-start@vecs1.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglu:         [FAIL][322] ([i915#2876]) -> [FAIL][323] ([i915#2842])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [ABORT][324] ([i915#10131] / [i915#9820]) -> [ABORT][325] ([i915#11231])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          [SKIP][326] ([i915#9197]) -> [SKIP][327] ([i915#1769] / [i915#3555])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-dg2:          [SKIP][328] ([i915#9197]) -> [SKIP][329] +2 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-tglu:         [SKIP][330] -> [SKIP][331] ([i915#5286]) +3 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@linear-64bpp-rotate-270:
    - shard-dg2:          [SKIP][332] -> [SKIP][333] ([i915#9197])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_big_fb@linear-64bpp-rotate-270.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_big_fb@linear-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][334] ([i915#5190] / [i915#9197]) -> [SKIP][335] ([i915#4538] / [i915#5190]) +3 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          [SKIP][336] ([i915#5190]) -> [SKIP][337] ([i915#5190] / [i915#9197]) +2 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          [SKIP][338] ([i915#4538] / [i915#5190]) -> [SKIP][339] ([i915#5190] / [i915#9197]) +7 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][340] ([i915#9197]) -> [SKIP][341] ([i915#12042]) +1 other test skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
    - shard-dg2:          [SKIP][342] ([i915#9197]) -> [SKIP][343] ([i915#10307] / [i915#6095]) +3 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][344] ([i915#10307] / [i915#6095]) -> [SKIP][345] ([i915#9197]) +7 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         [SKIP][346] -> [SKIP][347] ([i915#6095]) +4 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][348] ([i915#12042]) -> [SKIP][349] ([i915#9197])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2:          [SKIP][350] ([i915#11616] / [i915#7213]) -> [SKIP][351] ([i915#9197])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_cdclk@mode-transition.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_cdclk@mode-transition.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][352] ([i915#7118] / [i915#9424]) -> [SKIP][353] ([i915#9197])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@content-type-change:
    - shard-dg2:          [SKIP][354] ([i915#9424]) -> [SKIP][355] ([i915#9197])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_content_protection@content-type-change.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          [SKIP][356] ([i915#9197]) -> [SKIP][357] ([i915#3299])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          [SKIP][358] ([i915#3299]) -> [SKIP][359] ([i915#9197])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_content_protection@dp-mst-type-1.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          [SKIP][360] ([i915#9197]) -> [SKIP][361] ([i915#9424])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_content_protection@lic-type-1.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          [TIMEOUT][362] ([i915#7173]) -> [SKIP][363] ([i915#7118])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_content_protection@srm.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [SKIP][364] ([i915#9197]) -> [SKIP][365] ([i915#7118] / [i915#9424])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_content_protection@uevent.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-dg2:          [SKIP][366] ([i915#11453] / [i915#3359]) -> [SKIP][367] ([i915#11453]) +1 other test skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          [SKIP][368] ([i915#11453]) -> [SKIP][369] ([i915#11453] / [i915#3359]) +2 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-tglu:         [SKIP][370] -> [SKIP][371] ([i915#11453])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-dg2:          [SKIP][372] ([i915#11453]) -> [SKIP][373] ([i915#9197])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-dg2:          [SKIP][374] ([i915#9197]) -> [SKIP][375] ([i915#5354]) +2 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          [SKIP][376] ([i915#9197]) -> [SKIP][377] ([i915#4103] / [i915#4213])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          [SKIP][378] ([i915#5354]) -> [SKIP][379] ([i915#9197]) +3 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          [SKIP][380] ([i915#9197]) -> [SKIP][381] ([i915#9067])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][382] ([i915#9833]) -> [SKIP][383] ([i915#9197])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglu:         [SKIP][384] -> [SKIP][385] ([i915#3555]) +2 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg2:          [SKIP][386] ([i915#9197]) -> [SKIP][387] ([i915#8812])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          [SKIP][388] ([i915#3555] / [i915#3840]) -> [SKIP][389] ([i915#9197])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_dsc@dsc-with-bpc.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         [SKIP][390] -> [SKIP][391] ([i915#3555] / [i915#3840])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_dsc@dsc-with-formats.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          [SKIP][392] ([i915#4881]) -> [SKIP][393] ([i915#9197])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_fence_pin_leak.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_fence_pin_leak.html

  * igt@kms_flip@wf_vblank-ts-check:
    - shard-dg2:          [FAIL][394] ([i915#2122]) -> [SKIP][395] ([i915#5354])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_flip@wf_vblank-ts-check.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_flip@wf_vblank-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu:         [SKIP][396] ([i915#3555]) -> [SKIP][397] ([i915#2587] / [i915#2672] / [i915#3555]) +1 other test skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg2:          [SKIP][398] ([i915#2672] / [i915#3555] / [i915#5190]) -> [SKIP][399] ([i915#3555] / [i915#5190]) +2 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         [SKIP][400] ([i915#3555]) -> [SKIP][401] ([i915#2672] / [i915#3555])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-tglu:         [SKIP][402] ([i915#2672] / [i915#3555]) -> [SKIP][403] ([i915#3555]) +1 other test skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          [SKIP][404] ([i915#2672] / [i915#3555]) -> [SKIP][405] ([i915#3555]) +2 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:
    - shard-tglu:         [SKIP][406] -> [SKIP][407] ([i915#1849]) +34 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-tglu:         [SKIP][408] ([i915#1849]) -> [SKIP][409] +29 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][410] ([i915#5354]) -> [SKIP][411] ([i915#3458]) +7 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][412] -> [SKIP][413] ([i915#5354]) +11 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg1:          [SKIP][414] -> [SKIP][415] ([i915#4423]) +1 other test skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-dg1:          [SKIP][416] ([i915#3458]) -> [SKIP][417] ([i915#3458] / [i915#4423])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-tglu:         [SKIP][418] ([i915#9766]) -> [SKIP][419] ([i915#1849])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][420] ([i915#10433] / [i915#3458]) -> [SKIP][421] ([i915#3458]) +2 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
    - shard-dg2:          [SKIP][422] ([i915#3458]) -> [SKIP][423] ([i915#5354]) +10 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          [SKIP][424] ([i915#9197]) -> [SKIP][425] ([i915#3555] / [i915#8228]) +1 other test skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_hdr@bpc-switch-suspend.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          [SKIP][426] ([i915#3555] / [i915#8228]) -> [SKIP][427] ([i915#9197])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][428] ([i915#4070] / [i915#4816]) -> [SKIP][429] ([i915#4816])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          [SKIP][430] ([i915#3555] / [i915#8806]) -> [SKIP][431] ([i915#9197])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:
    - shard-dg2:          [SKIP][432] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][433] ([i915#12247] / [i915#9423])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][434] ([i915#12247] / [i915#8152]) -> [SKIP][435] ([i915#12247])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-dg2:          [SKIP][436] ([i915#12247] / [i915#6953] / [i915#9423]) -> [SKIP][437] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][438] ([i915#12247]) -> [SKIP][439] ([i915#12247] / [i915#8152])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
    - shard-tglu:         [SKIP][440] ([i915#12247] / [i915#8152]) -> [SKIP][441] ([i915#12247]) +1 other test skip
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-tglu:         [SKIP][442] ([i915#12247] / [i915#6953]) -> [SKIP][443] ([i915#12247] / [i915#6953] / [i915#8152]) +1 other test skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:
    - shard-tglu:         [SKIP][444] ([i915#12247]) -> [SKIP][445] ([i915#12247] / [i915#8152]) +1 other test skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg2:          [SKIP][446] ([i915#4235]) -> [SKIP][447] ([i915#9197])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_rotation_crc@exhaust-fences.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          [SKIP][448] ([i915#11131]) -> [SKIP][449] ([i915#11131] / [i915#4235])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-4/igt@kms_rotation_crc@primary-rotation-270.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu:         [SKIP][450] -> [SKIP][451] ([i915#5289]) +1 other test skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][452] ([i915#11131] / [i915#5190]) -> [SKIP][453] ([i915#11131] / [i915#4235] / [i915#5190])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [453]: https://intel-gfx-ci.01.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/index.html

--===============6665277115282538687==
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
<tr><td><b>Series:</b></td><td>drm/i915/bios: Refactor ROM access (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138477/">https://patchwork.freedesktop.org/series/138477/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15448_full -&gt; Patchwork_138477v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_138477v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_138477v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_138477v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@nop:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@gem_exec_balancer@nop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@gem_exec_balancer@nop.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@gem_exec_schedule@pi-common.html">FAIL</a> +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_async_flips@test-cursor.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_atomic_transition@modeset-transition-nonblocking.html">SKIP</a> +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-right-edge:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_cursor_edge_walk@64x64-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_cursor_edge_walk@64x64-right-edge.html">SKIP</a> +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-15/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> ([i915#5286]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_content_protection@srm.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_content_protection@srm.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a> ([i915#4103]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> ([i915#5289]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_vrr@flip-basic.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_vrr@flip-basic.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-1/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> +126 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> +1 other test warn</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15448_full and Patchwork_138477v2_full:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@kms_color@ctm-max@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.66] s</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.57] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138477v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@api_intel_bb@crc32.html">SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@gem_basic@multigpu-create-close.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#9323])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> ([i915#7297])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-2/igt@gem_ctx_engines@invalid-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-6/igt@gem_ctx_freq@sysfs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-6/igt@gem_ctx_freq@sysfs.html">FAIL</a> ([i915#9561]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@gem_ctx_sseu@engines.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-7/igt@gem_exec_big@single.html">ABORT</a> ([i915#11713])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-15/igt@gem_exec_fair@basic-deadline.html">SKIP</a> ([i915#3539] / [i915#4852]) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@gem_exec_fair@basic-deadline.html">SKIP</a> ([i915#4473] / [i915#4771]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@gem_exec_fair@basic-deadline.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gem_exec_fair@basic-none-rrul.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@gem_exec_fair@basic-none-rrul.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@gem_exec_reloc@basic-cpu-wc-active.html">SKIP</a> ([i915#3281]) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-wc-active.html">SKIP</a> ([i915#3281])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-15/igt@gem_exec_reloc@basic-cpu-wc-active.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@gem_exec_reloc@basic-softpin.html">SKIP</a> ([i915#3281]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> ([i915#4613] / [i915#7582])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> ([i915#3282]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> ([i915#3282])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-15/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-11/igt@gem_mmap_wc@bad-object.html">SKIP</a> ([i915#4083])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-16/igt@gem_mmap_wc@bad-object.html">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-7/igt@gem_mmap_wc@bad-size.html">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@gem_pxp@create-regular-context-1.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gem_readwrite@read-bad-handle.html">SKIP</a> ([i915#3282]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">SKIP</a> ([i915#8428])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">SKIP</a> ([i915#5190] / [i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-7/igt@gem_render_tiled_blits@basic.html">SKIP</a> ([i915#4079])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-13/igt@gem_tiled_partial_pwrite_pread@writes.html">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2527] / [i915#2856]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-7/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@intel_hwmon@hwmon-write.html">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> +30 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#3555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-15/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> ([i915#5956]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> ([i915#5138]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKIP</a> ([i915#9197]) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-15/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-17/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-edp-1.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i915#6095])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +54 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> ([i915#6095]) +84 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html">SKIP</a> ([i915#10307] / [i915#6095]) +149 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#6095]) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@kms_chamelium_audio@hdmi-audio-edid.html">SKIP</a> ([i915#7828]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-resolution-list:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_chamelium_edid@dp-edid-resolution-list.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([i915#7828])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> ([i915#7828]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555] / [i915#9979])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116] / [i915#3299]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_cursor_crc@cursor-suspend.html">INCOMPLETE</a> ([i915#7882])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html">SKIP</a> ([i915#9809])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> ([i915#8588])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_feature_discovery@chamelium.html">SKIP</a> ([i915#4854])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> ([i915#3637]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([i915#3637] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_flip@basic-flip-vs-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> ([i915#3637]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL</a> ([i915#2122]) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-4/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_flip@plain-flip-fb-recreate@c-hdmi-a1.html">FAIL</a> ([i915#2122]) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> ([i915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> ([i915#1825]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#1825]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> ([i915#3023]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#1849]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html">SKIP</a> ([i915#3458]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_invalid_mode@bad-vsync-start.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_invalid_mode@bad-vsync-start.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane@pixel-format.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane@plane-panning-bottom-right-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane@plane-panning-bottom-right-suspend.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane@plane-panning-top-left.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html">SKIP</a> ([i915#8825]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_plane_alpha_blend@coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-7efc.html">SKIP</a> ([i915#7294]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-b:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-b.html">SKIP</a> ([i915#12247]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">SKIP</a> ([i915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#12247]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_plane_scaling@planes-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) +11 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> ([i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-snb7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> ([i915#5354]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-16/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#5354])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> ([i915#1849]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a> ([i915#3547] / [i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([i915#9519]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-tiling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_pm_rpm@pm-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1.html">SKIP</a> ([i915#9808]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-19/igt@kms_psr@fbc-psr2-primary-blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-mmap-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-4/igt@kms_psr@pr-sprite-mmap-cpu.html">SKIP</a> ([i915#9688]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-8/igt@kms_psr@pr-sprite-mmap-cpu.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_psr@psr2-cursor-plane-onoff.html">SKIP</a> ([i915#9732]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_psr@psr2-suspend.html">SKIP</a> ([i915#1072] / [i915#9732]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-16/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-11/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@kms_vrr@flip-suspend.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-3/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> ([i915#3708] / [i915#4077])</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-5/igt@tools_test@sysfs_l3_parity.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">FAIL</a> ([i915#12179]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">FAIL</a> ([i915#7742]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-glk5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-glk9/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#12027]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> ([i915#3591]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb4/igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#7790]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-snb7/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-4/igt@i915_power@sanity.html">SKIP</a> ([i915#7984]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-6/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@master-rmfb:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-13/igt@kms_addfb_basic@master-rmfb.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-12/igt@kms_addfb_basic@master-rmfb.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset-force-joiner:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-7/igt@kms_big_joiner@invalid-modeset-force-joiner.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_cursor_crc@cursor-dpms.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_cursor_crc@cursor-dpms.html">PASS</a> +27 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-8/igt@kms_cursor_crc@cursor-suspend.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-1/igt@kms_cursor_crc@cursor-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-snb4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip@dpms-vs-vblank-race-interruptible.html">SKIP</a> ([i915#3637]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_flip@dpms-vs-vblank-race-interruptible.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-rte:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-rte.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-suspend.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_invalid_mode@bad-vtotal.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_invalid_mode@bad-vtotal.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_pipe_crc_basic@suspend-read-crc.html">PASS</a> +24 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-covered:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane@plane-position-covered.html">SKIP</a> ([i915#8825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_plane@plane-position-covered.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane@plane-position-hole.html">SKIP</a> ([i915#8825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane@plane-position-hole.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-min.html">SKIP</a> ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_plane_alpha_blend@constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">SKIP</a> ([i915#7294]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_alpha_blend@coverage-vs-premult-vs-constant.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@invalid-num-scalers.html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@invalid-num-scalers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">SKIP</a> ([i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html">PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([i915#9519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_properties@crtc-properties-legacy.html">SKIP</a> ([i915#11521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_properties@crtc-properties-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-7/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-3/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> ([i915#4349]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2876]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#10131] / [i915#9820]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> ([i915#11231])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5286]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_big_fb@linear-64bpp-rotate-270.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#5190] / [i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> ([i915#5190] / [i915#9197]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#5190] / [i915#9197]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> ([i915#9197]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#12042]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#11616] / [i915#7213]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#7118] / [i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_content_protection@content-type-change.html">SKIP</a> ([i915#9424]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_content_protection@content-type-change.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> ([i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3299]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_content_protection@lic-type-1.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#7173]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_content_protection@srm.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_content_protection@uevent.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453] / [i915#3359]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> ([i915#11453]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#11453]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">SKIP</a> ([i915#5354]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> ([i915#9197]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> ([i915#9067])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9833]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#3555] / [i915#3840]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_dsc@dsc-with-formats.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_dsc@dsc-with-formats.html">SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#4881]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_fence_pin_leak.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_flip@wf_vblank-ts-check.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_flip@wf_vblank-ts-check.html">SKIP</a> ([i915#5354])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> ([i915#2587] / [i915#2672] / [i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> ([i915#3555] / [i915#5190]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#2672] / [i915#3555]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> ([i915#1849]) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#5354]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#5354]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#4423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html">SKIP</a> ([i915#3458] / [i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#9766]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#10433] / [i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#3458]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> ([i915#5354]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#9197]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-7/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#3555] / [i915#8228]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4070] / [i915#4816]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#3555] / [i915#8806]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html">SKIP</a> ([i915#12247] / [i915#8152] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html">SKIP</a> ([i915#12247] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d.html">SKIP</a> ([i915#12247])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#9423]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">SKIP</a> ([i915#12247]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> ([i915#12247] / [i915#6953] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-10/igt@kms_rotation_crc@exhaust-fences.html">SKIP</a> ([i915#4235]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-2/igt@kms_rotation_crc@exhaust-fences.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-4/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> ([i915#11131]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> ([i915#11131] / [i915#4235])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138477v2/shard-tglu-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> ([i915#5289]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15448/shard-dg2-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> ([i915#11131] / [i915#5190]) -&gt; <a href="https://intel-gfx-ci.01.">SKIP</a> ([i915#11131] / [i915#4235] / [i915#5190])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6665277115282538687==--
