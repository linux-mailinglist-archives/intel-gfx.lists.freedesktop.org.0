Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1B480E3F6
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 06:46:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A882F10E3F7;
	Tue, 12 Dec 2023 05:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8D9C10E3F7;
 Tue, 12 Dec 2023 05:46:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE7CBA7E03;
 Tue, 12 Dec 2023 05:46:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6764958237882821846=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/display=3A_Get_big?=
 =?utf-8?q?joiner_config_before_dsc_config_during_readout_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Date: Tue, 12 Dec 2023 05:46:11 -0000
Message-ID: <170235997186.31292.16573866983780480821@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231122064627.905828-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20231122064627.905828-1-ankit.k.nautiyal@intel.com>
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

--===============6764958237882821846==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Get bigjoiner config before dsc config during readout (rev3)
URL   : https://patchwork.freedesktop.org/series/126742/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14008_full -> Patchwork_126742v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126742v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126742v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (7 -> 8)
------------------------------

  Additional (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126742v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@parallel:
    - shard-dg1:          NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg1-13/igt@gem_exec_balancer@parallel.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][2] +1 other test incomplete
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk7/igt@i915_pm_rc6_residency@rc6-fence@gt0.html

  * igt@perf@blocking@0-rcs0:
    - shard-rkl:          NOTRUN -> [ABORT][3] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-rkl-5/igt@perf@blocking@0-rcs0.html

  * igt@perf@invalid-open-flags:
    - shard-dg2:          NOTRUN -> [ABORT][4] +1 other test abort
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@perf@invalid-open-flags.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-tglu-9/igt@perf_pmu@busy-check-all@rcs0.html

  * igt@perf_pmu@busy-idle-check-all:
    - shard-snb:          NOTRUN -> [INCOMPLETE][6] +1 other test incomplete
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-snb2/igt@perf_pmu@busy-idle-check-all.html

  
#### Warnings ####

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          [SKIP][7] ([i915#4771]) -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-5/igt@gem_exec_balancer@bonded-sync.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@full-late:
    - shard-rkl:          [INCOMPLETE][9] -> [ABORT][10] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-1/igt@gem_exec_balancer@full-late.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-rkl-5/igt@gem_exec_balancer@full-late.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt0:
    - shard-dg1:          [INCOMPLETE][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-fence@gt0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-fence@gt0.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-glk:          [ABORT][13] ([i915#9847]) -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk1/igt@perf_pmu@all-busy-idle-check-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk3/igt@perf_pmu@all-busy-idle-check-all.html

  * igt@perf_pmu@busy-accuracy-2@rcs0:
    - shard-rkl:          [ABORT][15] -> [INCOMPLETE][16] +2 other tests incomplete
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-5/igt@perf_pmu@busy-accuracy-2@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-rkl-7/igt@perf_pmu@busy-accuracy-2@rcs0.html
    - shard-glk:          [INCOMPLETE][17] -> [ABORT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/igt@perf_pmu@busy-accuracy-2@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk1/igt@perf_pmu@busy-accuracy-2@rcs0.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-dg2:          [INCOMPLETE][19] -> [ABORT][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-10/igt@perf_pmu@busy-check-all@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@perf_pmu@busy-check-all@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_126742v3_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45]) -> ([PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [FAIL][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69]) ([i915#8293])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk9/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk9/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk9/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk7/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk6/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk6/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk6/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk5/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk5/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk5/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk4/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk4/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk3/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk2/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk2/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][70] ([i915#7297])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3539] / [i915#4852])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-rkl:          [PASS][72] -> [FAIL][73] ([i915#2842])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-rkl-3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#5190])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4885])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3297])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@gem_userptr_blits@coherency-sync.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([fdo#109289])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#2856])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([fdo#111614])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3299])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [PASS][81] -> [FAIL][82] ([i915#72])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([fdo#109274])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-snb:          [PASS][84] -> [SKIP][85] ([fdo#109271]) +3 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#5354]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3458]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#8708]) +1 other test skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#9423]) +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#9685])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#9340])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@perf@non-sampling-read-error:
    - shard-rkl:          NOTRUN -> [ABORT][92] ([i915#9847])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-rkl-5/igt@perf@non-sampling-read-error.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#8850])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@perf_pmu@cpu-hotplug.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][94] ([i915#7812])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-snb4/igt@runner@aborted.html

  * igt@v3d/v3d_submit_csd@multiple-job-submission:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#2575])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@v3d/v3d_submit_csd@multiple-job-submission.html

  * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#7711])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [INCOMPLETE][97] ([i915#9275]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-snb:          [SKIP][99] ([fdo#109271] / [fdo#111767]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
    - shard-snb:          [SKIP][101] ([fdo#109271]) -> [PASS][102] +1 other test pass
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic-dpms:
    - shard-snb:          [INCOMPLETE][103] -> [SKIP][104] ([fdo#109271])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb7/igt@kms_content_protection@atomic-dpms.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-snb1/igt@kms_content_protection@atomic-dpms.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-rkl:          [INCOMPLETE][105] -> [ABORT][106] ([i915#9847])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-7/igt@perf_pmu@all-busy-idle-check-all.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-rkl-5/igt@perf_pmu@all-busy-idle-check-all.html
    - shard-dg1:          [INCOMPLETE][107] -> [ABORT][108] ([i915#9847])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg1-16/igt@perf_pmu@all-busy-idle-check-all.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-dg1-13/igt@perf_pmu@all-busy-idle-check-all.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9847]: https://gitlab.freedesktop.org/drm/intel/issues/9847


Build changes
-------------

  * Linux: CI_DRM_14008 -> Patchwork_126742v3

  CI-20190529: 20190529
  CI_DRM_14008: d630426f84b0724b04e5c41e59594a41460b3c3c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7635: 0b796be8ce05cb2070ce5136d248f438c962d11e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126742v3: d630426f84b0724b04e5c41e59594a41460b3c3c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/index.html

--===============6764958237882821846==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Get bigjoiner config befor=
e dsc config during readout (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/126742/">https://patchwork.freedesktop.org/series/126742/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126742v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126742v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14008_full -&gt; Patchwork_126742v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126742v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_126742v3_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (7 -&gt; 8)</h2>
<p>Additional (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
126742v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg1-13/igt@gem_exec_balancer@paralle=
l.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence@gt0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-glk7/igt@i915_pm_rc6_residency@rc6-f=
ence@gt0.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-rkl-5/igt@perf@blocking@0-rcs0.html"=
>ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf@invalid-open-flags:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@perf@invalid-open-flags.ht=
ml">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-tglu-9/igt@perf_pmu@busy-check-all@r=
cs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-snb2/igt@perf_pmu@busy-idle-check-al=
l.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-dg2-5/igt@gem_exec_balancer@bonded-sync.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4771">i915#4771=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26742v3/shard-dg2-3/igt@gem_exec_balancer@bonded-sync.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-rkl-1/igt@gem_exec_balancer@full-late.html">INCOMPLETE<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
742v3/shard-rkl-5/igt@gem_exec_balancer@full-late.html">ABORT</a> +1 other =
test abort</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence@gt0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-fence@gt0.html">IN=
COMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126742v3/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-fence@gt0.html">A=
BORT</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-glk1/igt@perf_pmu@all-busy-idle-check-all.html">ABORT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9=
847</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126742v3/shard-glk3/igt@perf_pmu@all-busy-idle-check-all.html">INCOMPLETE=
</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-2@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14008/shard-rkl-5/igt@perf_pmu@busy-accuracy-2@rcs0.html">ABORT</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v=
3/shard-rkl-7/igt@perf_pmu@busy-accuracy-2@rcs0.html">INCOMPLETE</a> +2 oth=
er tests incomplete</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14008/shard-glk3/igt@perf_pmu@busy-accuracy-2@rcs0.html">INCOMPLETE<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
742v3/shard-glk1/igt@perf_pmu@busy-accuracy-2@rcs0.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-dg2-10/igt@perf_pmu@busy-check-all@rcs0.html">INCOMPLET=
E</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26742v3/shard-dg2-3/igt@perf_pmu@busy-check-all@rcs0.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126742v3_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14008/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14008/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14008/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14008/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14008/shard-glk7/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4008/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shar=
d-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_14008/shard-glk9/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
742v3/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126742v3/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126742v3/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/sh=
ard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126742v3/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6742v3/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126742v3/shard-glk6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk6/=
boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126742v3/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/sh=
ard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126742v3/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6742v3/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126742v3/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126742v3/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126742v3/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126742v3/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126742v3/shard-glk1/boot.html">PASS</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@gem_ccs@suspend-resume@til=
e4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@gem_exec_fair@basic-none-s=
olo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6742v3/shard-rkl-3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@gem_render_copy@x-tiled-to=
-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
85">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@gem_userptr_blits@coherenc=
y-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@gen7_exec_parse@basic-allo=
wed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-3/igt@gen9_exec_parse@bb-start-c=
md.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_big_fb@x-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legac=
y.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126742v3/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-=
legacy.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/72">i915#72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-i=
ndfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126742v3/shard-snb5/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bcpsr-farfromfence-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hd=
mi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg1-12/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@kms_pm_dc@dc6-psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9685">i9=
15#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9340"=
>i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-sampling-read-error:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-rkl-5/igt@perf@non-sampling-read-err=
or.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9847">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@perf_pmu@cpu-hotplug.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8850"=
>i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-snb4/igt@runner@aborted.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7812">i915#7=
812</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@multiple-job-submission:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@v3d/v3d_submit_csd@multipl=
e-job-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126742v3/shard-dg2-6/igt@vc4/vc4_perfmon@destroy-in=
valid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7711">i915#7711</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9275">i9=
15#9275</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126742v3/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_126742v3/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-c=
ursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-move.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126742v3/shard-snb7/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-spr-indfb-move.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-snb7/igt@kms_content_protection@atomic-dpms.html">INCOM=
PLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_126742v3/shard-snb1/igt@kms_content_protection@atomic-dpms.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14008/shard-rkl-7/igt@perf_pmu@all-busy-idle-check-all.html">INCOMPL=
ETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_126742v3/shard-rkl-5/igt@perf_pmu@all-busy-idle-check-all.html">ABORT</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9847=
</a>)</p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14008/shard-dg1-16/igt@perf_pmu@all-busy-idle-check-all.html">INCOMP=
LETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126742v3/shard-dg1-13/igt@perf_pmu@all-busy-idle-check-all.html">ABORT</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#98=
47</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14008 -&gt; Patchwork_126742v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14008: d630426f84b0724b04e5c41e59594a41460b3c3c @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7635: 0b796be8ce05cb2070ce5136d248f438c962d11e @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126742v3: d630426f84b0724b04e5c41e59594a41460b3c3c @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6764958237882821846==--
