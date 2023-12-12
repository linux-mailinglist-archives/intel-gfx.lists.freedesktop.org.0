Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A17B680E057
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 01:36:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30D3410E54A;
	Tue, 12 Dec 2023 00:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC75310E546;
 Tue, 12 Dec 2023 00:36:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D335DAADD6;
 Tue, 12 Dec 2023 00:36:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2374144615691514360=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915=3A_cdclk/voltage?=
 =?utf-8?q?=5Flevel_cleanups_and_fixes_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 12 Dec 2023 00:36:26 -0000
Message-ID: <170234138683.31291.10325610613729613198@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
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

--===============2374144615691514360==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: cdclk/voltage_level cleanups and fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/126979/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14008_full -> Patchwork_126979v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126979v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126979v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/index.html

Participating hosts (7 -> 9)
------------------------------

  Additional (2): shard-snb-0 shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126979v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-snb5/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-rkl:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-2/igt@gem_exec_balancer@invalid-bonds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-rkl-5/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@nohangcheck:
    - shard-rkl:          NOTRUN -> [ABORT][5] +2 other tests abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-rkl-3/igt@gem_exec_balancer@nohangcheck.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][6] +1 other test incomplete
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk2/igt@i915_pm_rc6_residency@rc6-fence@gt0.html

  * igt@i915_pm_rc6_residency@rc6-fence@gt1:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-mtlp-7/igt@i915_pm_rc6_residency@rc6-fence@gt1.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - shard-glk:          NOTRUN -> [ABORT][9] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk1/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@perf@gen12-unprivileged-single-ctx-counters@rcs0:
    - shard-dg1:          NOTRUN -> [ABORT][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg1-13/igt@perf@gen12-unprivileged-single-ctx-counters@rcs0.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg2:          NOTRUN -> [ABORT][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-3/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-check-all@rcs0:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-tglu-5/igt@perf_pmu@busy-check-all@rcs0.html

  * igt@perf_pmu@busy-idle-check-all:
    - shard-snb:          NOTRUN -> [INCOMPLETE][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-snb6/igt@perf_pmu@busy-idle-check-all.html

  
#### Warnings ####

  * igt@gem_exec_balancer@full:
    - shard-rkl:          [ABORT][14] -> [INCOMPLETE][15] +2 other tests incomplete
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-5/igt@gem_exec_balancer@full.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-rkl-4/igt@gem_exec_balancer@full.html
    - shard-dg1:          [INCOMPLETE][16] -> [ABORT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg1-12/igt@gem_exec_balancer@full.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg1-13/igt@gem_exec_balancer@full.html

  * igt@gem_exec_balancer@full-late:
    - shard-dg2:          [INCOMPLETE][18] -> [ABORT][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-6/igt@gem_exec_balancer@full-late.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-7/igt@gem_exec_balancer@full-late.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [INCOMPLETE][20] -> [ABORT][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/igt@gem_exec_whisper@basic-forked.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk1/igt@gem_exec_whisper@basic-forked.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-glk:          [ABORT][22] ([i915#9847]) -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk1/igt@perf_pmu@all-busy-idle-check-all.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk7/igt@perf_pmu@all-busy-idle-check-all.html

  * igt@perf_pmu@busy-start@rcs0:
    - shard-rkl:          [INCOMPLETE][24] -> [ABORT][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-7/igt@perf_pmu@busy-start@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-rkl-5/igt@perf_pmu@busy-start@rcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_126979v3_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) -> ([PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [FAIL][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75]) ([i915#8293])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-glk9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk9/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk9/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk9/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk8/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk8/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk7/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk7/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk7/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk5/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk4/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk4/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk4/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk3/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk3/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk3/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk2/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk2/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk1/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk1/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fair@basic-none-solo:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3539] / [i915#4852])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-rkl:          [PASS][77] -> [FAIL][78] ([i915#2842])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-rkl-7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [PASS][79] -> [ABORT][80] ([i915#7975] / [i915#8213])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#5190])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4885])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-2/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3297])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@gem_userptr_blits@coherency-sync.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([fdo#109289])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-2/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#2856])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-2/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([fdo#109303])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@i915_query@query-topology-known-pci-ids.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([fdo#111614])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#5354]) +6 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_ccs@pipe-b-bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3299])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([fdo#109274] / [i915#5354])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([fdo#109274])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#2672])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][93] -> [FAIL][94] ([i915#6880])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-snb:          [PASS][95] -> [SKIP][96] ([fdo#109271]) +3 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#3458]) +3 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#8708]) +2 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#9423]) +3 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#9685])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_pm_dc@dc6-psr.html

  * igt@perf@non-sampling-read-error:
    - shard-rkl:          NOTRUN -> [ABORT][101] ([i915#9847])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-rkl-5/igt@perf@non-sampling-read-error.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#8850])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@perf_pmu@cpu-hotplug.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][103] ([i915#7812])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-snb4/igt@runner@aborted.html

  * igt@v3d/v3d_submit_csd@multiple-job-submission:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#2575])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@v3d/v3d_submit_csd@multiple-job-submission.html

  * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#7711])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [INCOMPLETE][106] ([i915#9275]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-snb:          [SKIP][108] ([fdo#109271]) -> [PASS][109] +3 other tests pass
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-snb7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  
#### Warnings ####

  * igt@kms_content_protection@atomic-dpms:
    - shard-snb:          [INCOMPLETE][110] -> [SKIP][111] ([fdo#109271])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14008/shard-snb7/igt@kms_content_protection@atomic-dpms.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-snb4/igt@kms_content_protection@atomic-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9847]: https://gitlab.freedesktop.org/drm/intel/issues/9847


Build changes
-------------

  * Linux: CI_DRM_14008 -> Patchwork_126979v3
  * Piglit: piglit_4509 -> None

  CI-20190529: 20190529
  CI_DRM_14008: d630426f84b0724b04e5c41e59594a41460b3c3c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7635: 0b796be8ce05cb2070ce5136d248f438c962d11e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126979v3: d630426f84b0724b04e5c41e59594a41460b3c3c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/index.html

--===============2374144615691514360==
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
<tr><td><b>Series:</b></td><td>drm/i915: cdclk/voltage_level cleanups and f=
ixes (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/126979/">https://patchwork.freedesktop.org/series/126979/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126979v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126979v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14008_full -&gt; Patchwork_126979v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126979v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_126979v3_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v=
3/index.html</p>
<h2>Participating hosts (7 -&gt; 9)</h2>
<p>Additional (2): shard-snb-0 shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
126979v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-snb2/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979=
v3/shard-snb5/igt@gem_eio@in-flight-contexts-10ms.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-rkl-2/igt@gem_exec_balancer@invalid-bonds.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12697=
9v3/shard-rkl-5/igt@gem_exec_balancer@invalid-bonds.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@nohangcheck:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-rkl-3/igt@gem_exec_balancer@nohangch=
eck.html">ABORT</a> +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-5/igt@i915_pm_rc6_residency@rc6-=
fence.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence@gt0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-glk2/igt@i915_pm_rc6_residency@rc6-f=
ence@gt0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-mtlp-7/igt@i915_pm_rc6_residency@rc6=
-fence@gt1.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-glk1/igt@perf@gen12-unprivileged-sin=
gle-ctx-counters.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters@rcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg1-13/igt@perf@gen12-unprivileged-s=
ingle-ctx-counters@rcs0.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-3/igt@perf@per-context-mode-unpr=
ivileged.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-tglu-5/igt@perf_pmu@busy-check-all@r=
cs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-snb6/igt@perf_pmu@busy-idle-check-al=
l.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@full:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14008/shard-rkl-5/igt@gem_exec_balancer@full.html">ABORT</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard=
-rkl-4/igt@gem_exec_balancer@full.html">INCOMPLETE</a> +2 other tests incom=
plete</p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14008/shard-dg1-12/igt@gem_exec_balancer@full.html">INCOMPLETE</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3=
/shard-dg1-13/igt@gem_exec_balancer@full.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@full-late:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-dg2-6/igt@gem_exec_balancer@full-late.html">INCOMPLETE<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
979v3/shard-dg2-7/igt@gem_exec_balancer@full-late.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-glk8/igt@gem_exec_whisper@basic-forked.html">INCOMPLETE=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6979v3/shard-glk1/igt@gem_exec_whisper@basic-forked.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-glk1/igt@perf_pmu@all-busy-idle-check-all.html">ABORT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9847">i915#9=
847</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126979v3/shard-glk7/igt@perf_pmu@all-busy-idle-check-all.html">INCOMPLETE=
</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-start@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-rkl-7/igt@perf_pmu@busy-start@rcs0.html">INCOMPLETE</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979=
v3/shard-rkl-5/igt@perf_pmu@busy-start@rcs0.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126979v3_full that come from kno=
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
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
979v3/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126979v3/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126979v3/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/sh=
ard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126979v3/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6979v3/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126979v3/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126979v3/shard-glk5/boot.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/sh=
ard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126979v3/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6979v3/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126979v3/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126979v3/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/sh=
ard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126979v3/shard-glk1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v3/shard-glk1/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@gem_exec_fair@basic-none-=
solo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6979v3/shard-rkl-7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126979v3/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices@lmem0.html">=
ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975"=
>i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@gem_render_copy@x-tiled-t=
o-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-2/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/48=
85">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-2/igt@gen7_exec_parse@basic-allo=
wed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-2/igt@gen9_exec_parse@bb-start-c=
md.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@i915_query@query-topology=
-known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_ccs@pipe-b-bad-pixel-=
format-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_cursor_legacy@cursorb=
-vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_flip@2x-absolute-wf_v=
blank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126979v3/shard-dg2-6/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-i=
ndfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126979v3/shard-snb1/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hd=
mi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg1-13/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@kms_pm_dc@dc6-psr.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9685">i=
915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-sampling-read-error:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-rkl-5/igt@perf@non-sampling-read-err=
or.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9847">i915#9847</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8850=
">i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-snb4/igt@runner@aborted.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7812">i915#7=
812</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@multiple-job-submission:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@v3d/v3d_submit_csd@multip=
le-job-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126979v3/shard-dg2-10/igt@vc4/vc4_perfmon@destroy-i=
nvalid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7711">i915#7711</a>)</li>
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
hwork_126979v3/shard-dg2-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-snb5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legac=
y.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126979v3/shard-snb7/igt@kms_cursor_legacy@2x-long-flip-=
vs-cursor-legacy.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_content_protection@atomic-dpms:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14008/shard-snb7/igt@kms_content_protection@atomic-dpms.html">INCOM=
PLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_126979v3/shard-snb4/igt@kms_content_protection@atomic-dpms.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10=
9271</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14008 -&gt; Patchwork_126979v3</li>
<li>Piglit: piglit_4509 -&gt; None</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14008: d630426f84b0724b04e5c41e59594a41460b3c3c @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7635: 0b796be8ce05cb2070ce5136d248f438c962d11e @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126979v3: d630426f84b0724b04e5c41e59594a41460b3c3c @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2374144615691514360==--
