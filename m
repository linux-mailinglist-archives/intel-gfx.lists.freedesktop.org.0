Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA08D9AF354
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 22:08:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75BB10E3B3;
	Thu, 24 Oct 2024 20:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EABE110E137;
 Thu, 24 Oct 2024 20:08:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7122868209254427761=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/display=3A_convert?=
 =?utf-8?q?_I915=5FSTATE=5FWARN=28=29_to_struct_intel=5Fdisplay_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2024 20:08:49 -0000
Message-ID: <172980052994.1328167.12016928482735429962@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241024162510.2410128-1-jani.nikula@intel.com>
In-Reply-To: <20241024162510.2410128-1-jani.nikula@intel.com>
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

--===============7122868209254427761==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: convert I915_STATE_WARN() to struct intel_display (rev2)
URL   : https://patchwork.freedesktop.org/series/140444/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15588_full -> Patchwork_140444v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_140444v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_140444v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_140444v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_color@ctm-0-50:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][1] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-19/igt@kms_color@ctm-0-50.html

  * igt@kms_color@ctm-signed@pipe-c-hdmi-a-4:
    - shard-dg1:          [PASS][2] -> [INCOMPLETE][3] +1 other test incomplete
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/igt@kms_color@ctm-signed@pipe-c-hdmi-a-4.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-15/igt@kms_color@ctm-signed@pipe-c-hdmi-a-4.html

  
#### Warnings ####

  * igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:
    - shard-mtlp:         [SKIP][4] ([i915#12316]) -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-4/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html

  
Known issues
------------

  Here are the changes found in Patchwork_140444v2_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-dg1:          ([PASS][6], [PASS][7], [FAIL][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30]) -> ([PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-16/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-16/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-16/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-13/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-13/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-12/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-12/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-12/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-19/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-19/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-19/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-16/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-16/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-16/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-15/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-15/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-15/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-14/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-14/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-14/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-12/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-12/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-12/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#8411]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@crc32:
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#6230])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@api_intel_bb@crc32.html

  * igt@debugfs_test@basic-hwmon:
    - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#9318])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@debugfs_test@basic-hwmon.html

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#11078])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@device_reset@cold-reset-bound.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#8414]) +6 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@drm_fdinfo@busy-idle@bcs0.html
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#8414]) +7 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@gem_busy@close-race:
    - shard-tglu-1:       NOTRUN -> [FAIL][62] ([i915#12297])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_busy@close-race.html
    - shard-dg1:          NOTRUN -> [FAIL][63] ([i915#12297])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_busy@close-race.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#3555] / [i915#9323])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#3555] / [i915#9323])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-14/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#9323])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#7697])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#7697])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_compute@compute-square:
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#9310])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_compute@compute-square.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#8562])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu-1:       NOTRUN -> [FAIL][71] ([i915#12031])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [PASS][72] -> [FAIL][73] ([i915#12031])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][74] ([i915#1099])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-snb7/igt@gem_ctx_persistence@engines-mixed.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#8555])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#280])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_ctx_sseu@invalid-args.html
    - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#280])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@gem_ctx_sseu@invalid-args.html
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#280])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@kms:
    - shard-dg2:          [PASS][79] -> [FAIL][80] ([i915#5784])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-5/igt@gem_eio@kms.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [PASS][81] -> [FAIL][82] ([i915#5784])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-16/igt@gem_eio@reset-stress.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-12/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#4525]) +2 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglu:         NOTRUN -> [FAIL][84] ([i915#6117])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#6334]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-tglu:         NOTRUN -> [FAIL][86] ([i915#2842]) +1 other test fail
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          NOTRUN -> [FAIL][87] ([i915#2842]) +4 other tests fail
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3539])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [PASS][89] -> [FAIL][90] ([i915#2876])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglu-1:       NOTRUN -> [FAIL][91] ([i915#2842]) +9 other tests fail
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
    - shard-snb:          NOTRUN -> [SKIP][92] +90 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-snb7/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#3539] / [i915#4852]) +2 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#3711])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3281]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gem_exec_reloc@basic-cpu.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#3281]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3281]) +6 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#3281]) +6 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_schedule@pi-ringfull@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][99] ([i915#12296]) +4 other tests fail
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@gem_exec_schedule@pi-ringfull@rcs0.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4812]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_exec_schedule@preempt-queue-contexts.html
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#4537] / [i915#4812])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#7276])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [PASS][103] -> [INCOMPLETE][104] ([i915#11441])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-rkl:          NOTRUN -> [ABORT][105] ([i915#7975] / [i915#8213]) +1 other test abort
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#4860])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_fence_thrash@bo-copy.html
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#4860])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#2190])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@massive:
    - shard-glk:          NOTRUN -> [SKIP][109] ([i915#4613])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk3/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#4613]) +2 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-tglu-1:       NOTRUN -> [SKIP][111] ([i915#4613]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#4613]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_media_vme:
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#284])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#4077]) +3 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#4077]) +4 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-16/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_wc@bad-offset:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#4083]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_mmap_wc@bad-offset.html

  * igt@gem_mmap_wc@pf-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4083]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@gem_mmap_wc@pf-nonblock.html

  * igt@gem_mmap_wc@read:
    - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#4083]) +5 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_mmap_wc@read.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3282])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#3282]) +3 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#3282])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3282]) +5 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#4270]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#4270]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#4270]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#4270]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#4270])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#4270]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#8428]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#5190] / [i915#8428])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#4079]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_set_tiling_vs_gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#4079]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_tiled_blits@basic:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4077]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gem_tiled_blits@basic.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3297]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#3297]) +1 other test skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3297]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#2527] / [i915#2856]) +2 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#2856])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#2527] / [i915#2856]) +2 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gen9_exec_parse@bb-oversize.html
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#2856])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#2527]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#2527]) +4 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@load:
    - shard-tglu-1:       NOTRUN -> [SKIP][143] ([i915#6227])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][144] -> [ABORT][145] ([i915#9820])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#8399])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#8399])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#6590]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#11681])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@i915_pm_rps@thresholds.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#6245])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@i915_query@hwconfig_table.html
    - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#6245])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@i915_query@hwconfig_table.html

  * igt@i915_selftest@mock@memory_region:
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][152] ([i915#9311]) +1 other test dmesg-warn
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@i915_selftest@mock@memory_region.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#7707])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@intel_hwmon@hwmon-read.html

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#4212]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_addfb_basic@tile-pitch-mismatch.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-dp-3-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#8709]) +11 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-dp-3-4-mc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#8709]) +7 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#8709]) +7 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-16/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-dg1:          [PASS][158] -> [FAIL][159] ([i915#5956])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#1769] / [i915#3555])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#1769] / [i915#3555])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][162] ([i915#5956])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#1769] / [i915#3555])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#5286]) +2 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#4538] / [i915#5286]) +3 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#5286]) +5 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#5286]) +5 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#3638]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][169]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][170] +12 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#4538] / [i915#5190])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3638]) +2 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#6187])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#4538]) +4 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#5190] / [i915#9197])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#6095]) +64 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][177] +29 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk3/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#12313])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#12313]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#12313])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#6095]) +39 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#6095]) +24 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#6095]) +156 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#6095]) +94 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#10307] / [i915#6095]) +137 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#3742])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#7828]) +6 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#7828]) +7 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
    - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#7828]) +8 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#7828]) +2 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#7828]) +6 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@atomic@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][194] ([i915#7173])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-10/igt@kms_content_protection@atomic@pipe-a-dp-3.html

  * igt@kms_content_protection@content-type-change:
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#6944] / [i915#9424])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#3116] / [i915#3299])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_content_protection@legacy.html
    - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#7116] / [i915#9424])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#9424])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-12/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#6944] / [i915#9424]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#7118])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#7118] / [i915#9424])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#11453] / [i915#3359]) +1 other test skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#3555] / [i915#8814])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#8814]) +2 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#3555]) +4 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html
    - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#3555]) +6 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][208] ([i915#11453] / [i915#3359])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#3555]) +2 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#11453] / [i915#3359]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#4103] / [i915#4213])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#4103])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#4213])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#4103]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#4103])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-mtlp:         [PASS][216] -> [FAIL][217] ([i915#2346])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#9723])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
    - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#9723])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#3555] / [i915#3804])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#3804])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [PASS][222] -> [SKIP][223] ([i915#12402])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#12402])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#3840])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#3840])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
    - shard-tglu-1:       NOTRUN -> [SKIP][227] ([i915#3840])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#3555] / [i915#3840])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#3840] / [i915#9053])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#3840] / [i915#9053])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [PASS][231] -> [SKIP][232] ([i915#1849])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_fbcon_fbt@fbc-suspend.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@display-4x:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#1839])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_feature_discovery@display-4x.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][234] -> [FAIL][235] ([i915#2122]) +1 other test fail
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-snb1/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-snb7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][236] +26 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][237] ([i915#8381])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_flip@2x-flip-vs-fences-interruptible.html
    - shard-mtlp:         NOTRUN -> [SKIP][238] ([i915#8381])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#3637])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#5354]) +9 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html
    - shard-tglu-1:       NOTRUN -> [SKIP][241] ([i915#3637]) +6 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#9934]) +3 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#3637]) +3 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-rmfb-interruptible@b-edp1:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][244] ([i915#6113])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_flip@flip-vs-rmfb-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@d-hdmi-a4:
    - shard-dg1:          NOTRUN -> [DMESG-WARN][245] ([i915#4423])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-19/igt@kms_flip@flip-vs-suspend@d-hdmi-a4.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-rkl:          [PASS][246] -> [FAIL][247] ([i915#2122])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][248] ([i915#2122])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2:
    - shard-rkl:          NOTRUN -> [FAIL][249] ([i915#11989])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a4:
    - shard-dg1:          [PASS][250] -> [FAIL][251] ([i915#2122]) +1 other test fail
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a4.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-16/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a4.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
    - shard-tglu:         NOTRUN -> [FAIL][252] ([i915#2122]) +1 other test fail
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#2672]) +4 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][254] ([i915#2672] / [i915#3555]) +2 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
    - shard-tglu-1:       NOTRUN -> [SKIP][255] ([i915#2587] / [i915#2672]) +3 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#2587] / [i915#2672]) +3 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#2672] / [i915#3555] / [i915#5190])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#2672]) +2 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#2587] / [i915#2672] / [i915#3555])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#2587] / [i915#2672]) +3 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#2672] / [i915#3555]) +4 other tests skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#2672] / [i915#3555]) +3 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
    - shard-dg1:          NOTRUN -> [SKIP][263] ([i915#2672] / [i915#3555]) +3 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-dg2:          [PASS][264] -> [SKIP][265] ([i915#3555]) +4 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][266] ([i915#2672] / [i915#3555] / [i915#8813])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#2672] / [i915#8813])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#8708]) +3 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-dg1:          NOTRUN -> [SKIP][269] +34 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [PASS][270] -> [SKIP][271] ([i915#5354]) +13 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][272] ([i915#3458]) +12 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglu-1:       NOTRUN -> [SKIP][273] +54 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#8708]) +2 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][275] ([i915#1825]) +30 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][276] ([i915#5439])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#3458]) +2 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][278] ([i915#1825]) +6 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][279] ([i915#8708]) +15 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][280] +83 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#3023]) +19 other tests skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-dg1:          NOTRUN -> [SKIP][282] ([i915#433])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][283] ([i915#3555] / [i915#8228]) +1 other test skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][284] ([i915#3555] / [i915#8228])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu:         NOTRUN -> [SKIP][285] ([i915#3555] / [i915#8228]) +2 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [PASS][286] -> [SKIP][287] ([i915#3555] / [i915#8228])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-10/igt@kms_hdr@static-swap.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_hdr@static-swap.html
    - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#3555] / [i915#8228])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_hdr@static-swap.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][289] ([i915#12388]) +1 other test skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][290] ([i915#12394])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#12339])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@kms_joiner@basic-ultra-joiner.html
    - shard-dg1:          NOTRUN -> [SKIP][292] ([i915#12339])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-14/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#12388])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][294] ([i915#1839])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
    - shard-dg1:          NOTRUN -> [SKIP][295] ([i915#1839])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@pixel-format-source-clamping:
    - shard-dg2:          [PASS][296] -> [SKIP][297] ([i915#8825])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-3/igt@kms_plane@pixel-format-source-clamping.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-dg2:          [PASS][298] -> [SKIP][299] ([i915#7294])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][300] ([i915#9809]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][301] ([i915#8292]) +1 other test fail
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
    - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#12247] / [i915#9423])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg2:          NOTRUN -> [SKIP][303] ([i915#12247]) +3 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][304] ([i915#12247]) +13 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
    - shard-dg2:          [PASS][305] -> [SKIP][306] ([i915#12247] / [i915#8152] / [i915#9423]) +1 other test skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#12247]) +2 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:
    - shard-dg2:          [PASS][308] -> [SKIP][309] ([i915#12247] / [i915#8152]) +1 other test skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
    - shard-dg2:          [PASS][310] -> [SKIP][311] ([i915#8152] / [i915#9423])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c:
    - shard-dg2:          [PASS][312] -> [SKIP][313] ([i915#12247]) +8 other tests skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d:
    - shard-dg2:          [PASS][314] -> [SKIP][315] ([i915#8152])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-dg1:          NOTRUN -> [SKIP][316] ([i915#12247]) +18 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
    - shard-tglu:         NOTRUN -> [SKIP][317] ([i915#12247] / [i915#6953])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][318] ([i915#12247]) +8 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
    - shard-tglu-1:       NOTRUN -> [SKIP][319] ([i915#12247] / [i915#3555])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
    - shard-dg1:          NOTRUN -> [SKIP][320] ([i915#12247] / [i915#3555])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][321] ([i915#12343])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu:         NOTRUN -> [SKIP][322] ([i915#9812])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][323] ([i915#9685])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-tglu-1:       NOTRUN -> [SKIP][324] ([i915#9685])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html
    - shard-dg1:          NOTRUN -> [SKIP][325] ([i915#9685]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [PASS][326] -> [SKIP][327] ([i915#4281])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][328] ([i915#9340])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu:         NOTRUN -> [SKIP][329] ([i915#8430])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][330] ([i915#9519])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [PASS][331] -> [SKIP][332] ([i915#9519])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
    - shard-rkl:          NOTRUN -> [SKIP][333] ([i915#9519])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][334] ([i915#6524])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][335] ([i915#6524])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-mtlp:         NOTRUN -> [SKIP][336] ([i915#12316]) +4 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][337] ([i915#11520]) +7 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-dg1:          NOTRUN -> [SKIP][338] ([i915#11520]) +5 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][339] ([i915#9808])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
    - shard-snb:          NOTRUN -> [SKIP][340] ([i915#11520]) +1 other test skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-snb7/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][341] ([i915#11520])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk1/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][342] ([i915#11520]) +1 other test skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][343] ([i915#11520]) +6 other tests skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][344] ([i915#11520]) +5 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][345] ([i915#9683])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu:         NOTRUN -> [SKIP][346] ([i915#9683])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-pr-sprite-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][347] ([i915#9732]) +13 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html

  * igt@kms_psr@fbc-psr-sprite-render:
    - shard-mtlp:         NOTRUN -> [SKIP][348] ([i915#9688]) +11 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_psr@fbc-psr-sprite-render.html

  * igt@kms_psr@fbc-psr2-primary-blt:
    - shard-dg1:          NOTRUN -> [SKIP][349] ([i915#1072] / [i915#9732]) +16 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_psr@fbc-psr2-primary-blt.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][350] ([i915#1072] / [i915#9732]) +18 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr-basic:
    - shard-tglu:         NOTRUN -> [SKIP][351] ([i915#9732]) +19 other tests skip
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_psr@psr-basic.html

  * igt@kms_psr@psr-cursor-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][352] ([i915#1072] / [i915#9732]) +3 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_psr@psr-cursor-mmap-gtt.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][353] ([i915#5289])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][354] ([i915#5289])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-tglu:         NOTRUN -> [SKIP][355] ([i915#3555]) +6 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-rkl:          NOTRUN -> [ABORT][356] ([i915#12231]) +1 other test abort
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][357] ([i915#3555] / [i915#8809] / [i915#8823])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][358] ([i915#8623])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [PASS][359] -> [FAIL][360] ([i915#9196]) +1 other test fail
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  * igt@kms_universal_plane@universal-plane-pageflip-windowed:
    - shard-dg2:          [PASS][361] -> [SKIP][362] ([i915#9197]) +36 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-3/igt@kms_universal_plane@universal-plane-pageflip-windowed.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_universal_plane@universal-plane-pageflip-windowed.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][363] ([i915#9906]) +1 other test skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          NOTRUN -> [SKIP][364] ([i915#3555] / [i915#9906])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_vrr@negative-basic.html
    - shard-mtlp:         [PASS][365] -> [FAIL][366] ([i915#10393]) +1 other test fail
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-4/igt@kms_vrr@negative-basic.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg1:          NOTRUN -> [SKIP][367] ([i915#9906])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_vrr@seamless-rr-switch-vrr.html
    - shard-tglu:         NOTRUN -> [SKIP][368] ([i915#9906])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@kms_vrr@seamless-rr-switch-vrr.html
    - shard-mtlp:         NOTRUN -> [SKIP][369] ([i915#8808] / [i915#9906])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-check-output:
    - shard-tglu-1:       NOTRUN -> [SKIP][370] ([i915#2437])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg1:          NOTRUN -> [SKIP][371] ([i915#2437]) +1 other test skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-tglu-1:       NOTRUN -> [SKIP][372] ([i915#2437] / [i915#9412]) +1 other test skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][373] ([i915#2437])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@blocking@0-rcs0:
    - shard-tglu-1:       NOTRUN -> [FAIL][374] ([i915#10538]) +1 other test fail
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@perf@blocking@0-rcs0.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-dg1:          NOTRUN -> [SKIP][375] ([i915#2433])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglu-1:       NOTRUN -> [SKIP][376] ([i915#8850])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_vgem@basic-write:
    - shard-dg1:          NOTRUN -> [SKIP][377] ([i915#3708]) +1 other test skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][378] ([i915#3708])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html
    - shard-mtlp:         NOTRUN -> [SKIP][379] ([i915#3708])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-1/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-rkl:          NOTRUN -> [SKIP][380] ([i915#9917]) +1 other test skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [SKIP][381] ([i915#9917])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][382] ([i915#7297]) -> [PASS][383]
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-10/igt@gem_ccs@suspend-resume.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][384] ([i915#12392] / [i915#7297]) -> [PASS][385]
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          ([FAIL][386], [FAIL][387], [FAIL][388]) ([i915#2846]) -> [PASS][389]
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][390] ([i915#2842]) -> [PASS][391] +1 other test pass
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-dg1:          [ABORT][392] ([i915#7975] / [i915#8213]) -> [PASS][393] +1 other test pass
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          ([PASS][394], [ABORT][395]) ([i915#12375] / [i915#5566]) -> [PASS][396]
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@gen9_exec_parse@allowed-single.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [ABORT][397] ([i915#9820]) -> [PASS][398]
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-snb1/igt@i915_module_load@reload-with-fault-injection.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-dg1:          [ABORT][399] ([i915#9820]) -> [PASS][400]
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [ABORT][401] ([i915#9820]) -> [PASS][402]
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][403] ([i915#10131] / [i915#10887] / [i915#9820]) -> [PASS][404]
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][405] ([i915#3591]) -> [PASS][406] +2 other tests pass
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-dg2:          [FAIL][407] ([i915#5956]) -> [PASS][408] +1 other test pass
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          [SKIP][409] ([i915#9197]) -> [PASS][410] +20 other tests pass
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg1:          [DMESG-WARN][411] ([i915#4423]) -> [PASS][412]
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-snb:          [SKIP][413] -> [PASS][414] +1 other test pass
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-snb1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-snb7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([PASS][415], [FAIL][416]) -> [PASS][417]
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          ([PASS][418], [FAIL][419]) ([i915#12403]) -> [PASS][420] +1 other test pass
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1:
    - shard-mtlp:         [INCOMPLETE][421] ([i915#6113]) -> [PASS][422]
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-3/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
    - shard-glk:          ([INCOMPLETE][423], [PASS][424], [PASS][425]) ([i915#4839]) -> [PASS][426] +1 other test pass
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk4/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk7/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk1/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-glk:          ([PASS][427], [FAIL][428]) ([i915#2122]) -> [PASS][429] +1 other test pass
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk5/igt@kms_flip@plain-flip-fb-recreate.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk1/igt@kms_flip@plain-flip-fb-recreate.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk2/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
    - shard-snb:          [FAIL][430] ([i915#2122]) -> [PASS][431] +5 other tests pass
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-snb2/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:
    - shard-tglu:         [FAIL][432] ([i915#2122]) -> [PASS][433]
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-tglu-3/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tglu-5/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-mtlp:         [FAIL][434] ([i915#11989] / [i915#2122]) -> [PASS][435]
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-mtlp:         [FAIL][436] ([i915#2122]) -> [PASS][437]
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          ([PASS][438], [FAIL][439], [PASS][440]) ([i915#2122]) -> [PASS][441] +3 other tests pass
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][442] ([i915#5354]) -> [PASS][443] +8 other tests pass
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_invalid_mode@clock-too-high:
    - shard-dg2:          [SKIP][444] ([i915#3555]) -> [PASS][445] +1 other test pass
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_invalid_mode@clock-too-high.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_invalid_mode@clock-too-high.html

  * igt@kms_plane_alpha_blend@constant-alpha-mid:
    - shard-dg2:          [SKIP][446] ([i915#7294]) -> [PASS][447]
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_plane_alpha_blend@constant-alpha-mid.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-dg2:          [SKIP][448] ([i915#8152] / [i915#9423]) -> [PASS][449]
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c:
    - shard-dg2:          [SKIP][450] ([i915#12247]) -> [PASS][451] +8 other tests pass
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d:
    - shard-dg2:          [SKIP][452] ([i915#8152]) -> [PASS][453]
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [SKIP][454] ([i915#

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/index.html

--===============7122868209254427761==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: convert I915_STATE_WARN() =
to struct intel_display (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/140444/">https://patchwork.freedesktop.org/series/140444/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140444v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140444v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15588_full -&gt; Patchwork_140444v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_140444v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_140444v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
140444v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_color@ctm-0-50:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-19/igt@kms_color@ctm-0-50.html">=
INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-15/igt@kms_color@ctm-signed@pipe-c-hdmi-a-4.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_140444v2/shard-dg1-15/igt@kms_color@ctm-signed@pipe-c-hdmi-a-4.html">INCOM=
PLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr2_sf@pr-plane-move-sf-dmg-area:<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-4/igt@kms_psr2_sf@pr-plane-move-sf-dmg-area.html">=
SKIP</a> ([i915#12316]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_psr2_sf@pr-plane-move-sf-dmg=
-area.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140444v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-19=
/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15588/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-18/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15588/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15588/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15588/shard-dg1-17/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-16/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
588/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15588/shard-dg1-16/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-15/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588=
/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15588/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-14/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/sh=
ard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15588/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-13/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard=
-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15588/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg1-12/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-dg=
1-12/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140444v2/shard-dg1-19/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-19/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140444v2/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/s=
hard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140444v2/shard-dg1-18/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140444v2/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/s=
hard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140444v2/shard-dg1-16/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-16/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140444v2/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-15/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/s=
hard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140444v2/shard-dg1-14/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-14/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140444v2/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/s=
hard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140444v2/shard-dg1-13/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140444v2/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-12/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/s=
hard-dg1-12/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@api_intel_bb@blit-reloc-ke=
ep-cache.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@api_intel_bb@crc32.html">=
SKIP</a> ([i915#6230])</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@debugfs_test@basic-hwmon.=
html">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> ([i915#11078])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@drm_fdinfo@busy-idle@bcs0=
.html">SKIP</a> ([i915#8414]) +6 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@drm_fdinfo@busy-idle@bcs0=
.html">SKIP</a> ([i915#8414]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_busy@close-race.html"=
>FAIL</a> ([i915#12297])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_busy@close-race.html"=
>FAIL</a> ([i915#12297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@gem_ccs@block-multicopy-in=
place.html">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-14/igt@gem_ccs@ctrl-surf-copy.ht=
ml">SKIP</a> ([i915#3555] / [i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_compute@compute-square:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_compute@compute-squar=
e.html">SKIP</a> ([i915#9310])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_ctx_engines@invalid-e=
ngines.html">FAIL</a> ([i915#12031])</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1404=
44v2/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915=
#12031])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-snb7/igt@gem_ctx_persistence@engines=
-mixed.html">SKIP</a> ([i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@gem_ctx_persistence@heartb=
eat-hang.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> ([i915#280])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> ([i915#280])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-5/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@=
gem_eio@kms.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-16/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-=
dg1-12/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5784])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> ([i915#4525]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@gem_exec_balancer@paralle=
l-ordering.html">FAIL</a> ([i915#6117])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@gem_exec_capture@capture-i=
nvisible@smem0.html">SKIP</a> ([i915#6334]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@gem_exec_fair@basic-none-=
solo.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@gem_exec_fair@basic-none@b=
cs0.html">FAIL</a> ([i915#2842]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gem_exec_fair@basic-pace.=
html">SKIP</a> ([i915#3539])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v=
2/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2876]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_exec_fair@basic-pace@=
vecs0.html">FAIL</a> ([i915#2842]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-snb7/igt@gem_exec_fence@syncobj-back=
ward-timeline-chain-engines.html">SKIP</a> +90 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_exec_flush@basic-batc=
h-kernel-default-cmd.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other te=
sts skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_exec_flush@basic-batc=
h-kernel-default-cmd.html">SKIP</a> ([i915#3711])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gem_exec_reloc@basic-cpu.=
html">SKIP</a> ([i915#3281]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-c=
pu.html">SKIP</a> ([i915#3281]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@gem_exec_reloc@basic-write=
-read-noreloc.html">SKIP</a> ([i915#3281]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@gem_exec_reloc@basic-writ=
e-wc-noreloc.html">SKIP</a> ([i915#3281]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@gem_exec_schedule@pi-ringf=
ull@rcs0.html">FAIL</a> ([i915#12296]) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_exec_schedule@preempt=
-queue-contexts.html">SKIP</a> ([i915#4812]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_exec_schedule@preempt=
-queue-contexts.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> ([i915#7276])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444=
v2/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> ([i9=
15#11441])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@gem_exec_suspend@basic-s4-=
devices.html">ABORT</a> ([i915#7975] / [i915#8213]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> ([i915#4860])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_fence_thrash@bo-copy.=
html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-glk3/igt@gem_lmem_swapping@massive.h=
tml">SKIP</a> ([i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@gem_lmem_swapping@parallel=
-random-verify.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_lmem_swapping@random-=
engines.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@gem_lmem_swapping@smem-oo=
m.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@gem_media_vme.html">SKIP<=
/a> ([i915#284])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@gem_mmap_gtt@medium-copy-=
xy.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-16/igt@gem_mmap_gtt@zero-extend.=
html">SKIP</a> ([i915#4077]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-offset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_mmap_wc@bad-offset.ht=
ml">SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@pf-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@gem_mmap_wc@pf-nonblock.ht=
ml">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_mmap_wc@read.html">SK=
IP</a> ([i915#4083]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@gem_partial_pwrite_pread@w=
rite-snoop.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_partial_pwrite_pread@=
writes-after-reads-display.html">SKIP</a> ([i915#3282]) +3 other tests skip=
</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_partial_pwrite_pread@=
writes-after-reads-display.html">SKIP</a> ([i915#3282])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> ([i915#3282]) +5 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_pxp@protected-encrypt=
ed-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@gem_pxp@reject-modify-cont=
ext-protection-off-3.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@gem_pxp@verify-pxp-execut=
ion-after-suspend-resume.html">SKIP</a> ([i915#4270]) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">SKIP</a> ([i915#4270]) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@gem_pxp@verify-pxp-stale-=
buf-execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@gem_pxp@verify-pxp-stale-=
ctx-execution.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@gem_render_copy@yf-tiled-=
ccs-to-y-tiled-ccs.html">SKIP</a> ([i915#8428]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gem_render_copy@yf-tiled-=
to-vebox-yf-tiled.html">SKIP</a> ([i915#5190] / [i915#8428])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> ([i915#4079]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gem_tiled_blits@basic.htm=
l">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@gem_userptr_blits@readonly=
-pwrite-unsync.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@gen9_exec_parse@basic-rej=
ected-ctx-param.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@gen9_exec_parse@batch-inv=
alid-length.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> ([i915#2527] / [i915#2856]) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@gen9_exec_parse@bb-secure=
.html">SKIP</a> ([i915#2527]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> ([i915#2527]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@i915_module_load@load.htm=
l">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140444v2/shard-rkl-4/igt@i915_module_load@reload-with-fault-injecti=
on.html">ABORT</a> ([i915#9820])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@i915_pm_freq_api@freq-res=
et.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@i915_pm_freq_api@freq-sus=
pend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@i915_pm_rps@thresholds.ht=
ml">SKIP</a> ([i915#11681])</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@i915_query@hwconfig_table=
.html">SKIP</a> ([i915#6245])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@i915_query@hwconfig_table=
.html">SKIP</a> ([i915#6245])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@i915_selftest@mock@memory=
_region.html">DMESG-WARN</a> ([i915#9311]) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@intel_hwmon@hwmon-read.htm=
l">SKIP</a> ([i915#7707])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_addfb_basic@tile-pitc=
h-mismatch.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-dp-3-4-mc-cc=
s:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-10/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-a-dp-3-4-mc-ccs.html">SKIP</a> ([i915#8709]) +=
11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-r=
c-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-r=
c-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-16/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140444v2/shard-dg1-13/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing.html">FAIL</a> ([i915#5956])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#176=
9] / [i915#3555])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing-internal-panels.html">SKIP</a> ([i915#176=
9] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hd=
mi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-fencing@pipe-a-hdmi-a-3.html">FAIL</a> ([i915#595=
6])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> ([i915#1769] / [i9=
15#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-r=
otate-180.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_big_fb@4-tiled-8bpp-r=
otate-180.html">SKIP</a> ([i915#4538] / [i915#5286]) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> ([i915#5286]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> ([i915#5286]) +5 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_big_fb@linear-8bpp-ro=
tate-270.html">SKIP</a> ([i915#3638]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_big_fb@linear-8bpp-ro=
tate-90.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_big_fb@x-tiled-8bpp-r=
otate-270.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-=
rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-90.html">SKIP</a> ([i915#3638]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_big_fb@y-tiled-addfb-=
size-overflow.html">SKIP</a> ([i915#6187])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-32bpp=
-rotate-90.html">SKIP</a> ([i915#4538]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-0.html">SKIP</a> ([i915#5190] / [i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_ccs@bad-aux-stride-y-=
tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> ([i915#6095]) +64 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-glk3/igt@kms_ccs@bad-rotation-90-4-t=
iled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4=
-tiled-lnl-ccs.html">SKIP</a> ([i915#12313])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4=
-tiled-lnl-ccs.html">SKIP</a> ([i915#12313]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_ccs@crc-primary-basic=
-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12313])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes=
-basic-yf-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> ([i915#6095]) +39 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_ccs@missing-ccs-buffe=
r-yf-tiled-ccs@pipe-a-edp-1.html">SKIP</a> ([i915#6095]) +24 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/igt@kms_ccs@random-ccs-data-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> ([i915#6095]) +156 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +94 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_ccs@random-ccs-data-y=
-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#10307] / [i915#60=
95]) +137 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf=
-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i=
915#6095]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_chamelium_frames@hdmi-=
frame-dump.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> ([i915#7828]) +7 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> ([i915#7828]) +8 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd=
-fast.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9=
424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-10/igt@kms_content_protection@at=
omic@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_content_protection@co=
ntent-type-change.html">SKIP</a> ([i915#6944] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> ([i915#3116] / [i915#3299])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])=
 +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_content_protection@le=
gacy.html">SKIP</a> ([i915#7116] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-12/igt@kms_content_protection@li=
c-type-0.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_content_protection@me=
i-interface.html">SKIP</a> ([i915#6944] / [i915#9424]) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_content_protection@typ=
e1.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-off=
screen-max-size.html">SKIP</a> ([i915#3555] / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-ons=
creen-256x85.html">SKIP</a> ([i915#8814]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> ([i915#3555]) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-512x170.html">SKIP</a> ([i915#11453] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x10.html">SKIP</a> ([i915#3555]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> ([i915#11453] / [i915#3359]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103] / [i915#4213])</l=
i>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_140444v2/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_dirtyfb@drrs-dirtyfb-=
ioctl.html">SKIP</a> ([i915#9723])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_dirtyfb@drrs-dirtyfb-=
ioctl.html">SKIP</a> ([i915#9723])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> ([i915#3555] / [i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> ([i915#3804])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-10/igt@kms_dp_linktrain_fallback@dp-fallback.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140444v2/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKI=
P</a> ([i915#12402])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_dp_linktrain_fallback@=
dp-fallback.html">SKIP</a> ([i915#12402])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> ([i915#3840])</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> ([i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> ([i915#3555] / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> ([i915#3840] / [i915#9053])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/s=
hard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html">SKIP</a> ([i915#1849])</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_feature_discovery@dis=
play-4x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-snb1/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1=
-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140444v2/shard-snb7/igt@kms_flip@2x-flip-vs-blocking-wf-vb=
lank@ab-vga1-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms.h=
tml">SKIP</a> +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_flip@2x-flip-vs-fence=
s-interruptible.html">SKIP</a> ([i915#8381])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_flip@2x-flip-vs-fence=
s-interruptible.html">SKIP</a> ([i915#8381])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a> ([i915#3637])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> ([i915#5354]) +9 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> ([i915#3637]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_flip@2x-single-buffer=
-flip-vs-dpms-off-vs-modeset.html">SKIP</a> ([i915#9934]) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_flip@2x-wf_vblank-ts-=
check.html">SKIP</a> ([i915#3637]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible@b-edp1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_flip@flip-vs-rmfb-int=
erruptible@b-edp1.html">INCOMPLETE</a> ([i915#6113])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@d-hdmi-a4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-19/igt@kms_flip@flip-vs-suspend@=
d-hdmi-a4.html">DMESG-WARN</a> ([i915#4423])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14044=
4v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a> ([i915#2=
122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-rec=
reate@a-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_flip@plain-flip-fb-rec=
reate@b-hdmi-a2.html">FAIL</a> ([i915#11989])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-17/igt@kms_flip@wf_vblank-ts-check-interruptible@a-=
hdmi-a4.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_140444v2/shard-dg1-16/igt@kms_flip@wf_vblank-ts-check-inter=
ruptible@a-hdmi-a4.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_flip@wf_vblank-ts-che=
ck-interruptible@d-hdmi-a1.html">FAIL</a> ([i915#2122]) +1 other test fail<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#35=
55]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#2672=
] / [i915#3555] / [i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i915=
#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587] / [i9=
15#2672] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">SKIP</a> =
([i915#2587] / [i915#2672]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> ([i915#2672] / [i915#355=
5]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] =
/ [i915#3555]) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> ([i915#2672] =
/ [i915#3555]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bp=
p-linear-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_flip_scaled_crc@f=
lip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> ([i915#3555]) +=
4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-upscaling.html">SKIP</a> ([i915#2672] / [i915#35=
55] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> ([i=
915#2672] / [i915#8813])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-14/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +34 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-rend=
er.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_140444v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-dra=
w-render.html">SKIP</a> ([i915#5354]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html">SKIP</a> ([i915#3458]) +12 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> +54 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> ([i915#1825]) +30 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-4.html">SKIP</a> ([i915#5439])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([i915#1825]) +6 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +15 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +83 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-suspend.html">SKIP</a> ([i915#3023]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_hdmi_inject@inject-au=
dio.html">SKIP</a> ([i915#433])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> ([i915#3555] / [i915#8228]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_hdr@bpc-switch-suspen=
d.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> ([i915#3555] / [i915#8228]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-10/igt@kms_hdr@static-swap.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-d=
g2-11/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#3555] / [i915#8228])</l=
i>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_hdr@static-swap.html">=
SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_joiner@basic-force-bi=
g-joiner.html">SKIP</a> ([i915#12388]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_joiner@basic-force-ul=
tra-joiner.html">SKIP</a> ([i915#12394])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@kms_joiner@basic-ultra-joi=
ner.html">SKIP</a> ([i915#12339])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-14/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> ([i915#12339])</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_joiner@invalid-modese=
t-force-big-joiner.html">SKIP</a> ([i915#12388])</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-3/igt@kms_plane@pixel-format-source-clamping.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140444v2/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html">SKI=
P</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_plane_alpha_blend@constant-alpha-max.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140444v2/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-max.html=
">SKIP</a> ([i915#7294])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_plane_scaling@2x-scal=
er-multi-pipe.html">SKIP</a> ([i915#9809]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-2.html">FAIL</a> ([i915#8292]) +1 other test fail<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation.html">SKIP</a> ([i915#12247] / [i915#942=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +13=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling=
-with-rotation.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_scaling@plane-sca=
ler-unity-scaling-with-rotation.html">SKIP</a> ([i915#12247] / [i915#8152] =
/ [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> ([i915#12247]) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_plane_scaling@plane-scaler-unity-scaling=
-with-rotation@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_scaling@pl=
ane-scaler-unity-scaling-with-rotation@pipe-d.html">SKIP</a> ([i915#12247] =
/ [i915#8152]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-p=
ixel-format.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_scaling@plane-upscal=
e-20x20-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#9423])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-p=
ixel-format@pipe-c.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_scaling@plane=
-upscale-20x20-with-pixel-format@pipe-c.html">SKIP</a> ([i915#12247]) +8 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-p=
ixel-format@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_plane_scaling@plane=
-upscale-20x20-with-pixel-format@pipe-d.html">SKIP</a> ([i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_plane_scaling@plane-u=
pscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> ([i915#12247]) +18 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#69=
53])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-d.html">SKIP</a> ([i915#12247]) +8=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#35=
55])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i915#35=
55])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> ([i915#12343])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_pm_backlight@fade.htm=
l">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html">S=
KIP</a> ([i915#9685])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_pm_dc@dc6-psr.html">S=
KIP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-tglu-5/igt@kms_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-tg=
lu-9/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> ([i915#9340])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> ([i915#8430])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.=
html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2=
/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([i915#9519])</=
li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lps=
p.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-6/igt@kms_psr2_sf@fbc-pr-cursor=
-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#12316]) +4 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-move-continuous-exceed-fully-sf.html">SKIP</a> ([i915#11520]) +7 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +5 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1=
:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-over=
lay-primary-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> ([i915#9808])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-snb7/igt@kms_psr2_sf@pr-overlay-plan=
e-move-continuous-exceed-sf.html">SKIP</a> ([i915#11520]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-glk1/igt@kms_psr2_sf@pr-overlay-plan=
e-move-continuous-sf.html">SKIP</a> ([i915#11520])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-6/igt@kms_psr2_sf@psr2-cursor-pl=
ane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-=
plane-move-continuous-sf.html">SKIP</a> ([i915#11520]) +6 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-continuous-sf.html">SKIP</a> ([i915#11520]) +5 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-ren=
der.html">SKIP</a> ([i915#9732]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-sprite-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_psr@fbc-psr-sprite-re=
nder.html">SKIP</a> ([i915#9688]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_psr@fbc-psr2-primary-=
blt.html">SKIP</a> ([i915#1072] / [i915#9732]) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-re=
nder.html">SKIP</a> ([i915#1072] / [i915#9732]) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_psr@psr-basic.html">S=
KIP</a> ([i915#9732]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg2-11/igt@kms_psr@psr-cursor-mmap-g=
tt.html">SKIP</a> ([i915#1072] / [i915#9732]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-5/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-180.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-7/igt@kms_scaling_modes@scaling=
-mode-full-aspect.html">SKIP</a> ([i915#3555]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-2/igt@kms_selftest@drm_framebuff=
er.html">ABORT</a> ([i915#12231]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_setmode@invalid-clone=
-exclusive-crtc.html">SKIP</a> ([i915#3555] / [i915#8809] / [i915#8823])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> ([i915#8623])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_140444v2/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-d-edp-1.html">FAIL</a> ([i915#9196]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-3/igt@kms_universal_plane@universal-plane-pageflip-=
windowed.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_140444v2/shard-dg2-2/igt@kms_universal_plane@universal-pla=
ne-pageflip-windowed.html">SKIP</a> ([i915#9197]) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> ([i915#9906]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@kms_vrr@negative-basic.htm=
l">SKIP</a> ([i915#3555] / [i915#9906])</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-4/igt@kms_vrr@negative-basic.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shar=
d-mtlp-8/igt@kms_vrr@negative-basic.html">FAIL</a> ([i915#10393]) +1 other =
test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> ([i915#9906])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> ([i915#9906])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-5/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> ([i915#8808] / [i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_writeback@writeback-c=
heck-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@kms_writeback@writeback-f=
b-id.html">SKIP</a> ([i915#2437]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@kms_writeback@writeback-f=
b-id-xrgb2101010.html">SKIP</a> ([i915#2437] / [i915#9412]) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-glk3/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@blocking@0-rcs0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@perf@blocking@0-rcs0.html=
">FAIL</a> ([i915#10538]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@perf@per-context-mode-unp=
rivileged.html">SKIP</a> ([i915#2433])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-1/igt@perf_pmu@cpu-hotplug.html=
">SKIP</a> ([i915#8850])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@prime_vgem@basic-write.ht=
ml">SKIP</a> ([i915#3708]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-6/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> ([i915#3708])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-mtlp-1/igt@prime_vgem@fence-flip-han=
g.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-rkl-3/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a> ([i915#9917]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-3/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">SKIP</a> ([i915#9917])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-10/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> =
([i915#7297]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_140444v2/shard-dg2-11/igt@gem_ccs@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-com=
pfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#12392] / [i915#7297]) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard=
-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk1=
/igt@gem_exec_fair@basic-deadline.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@gem_exec_fair@basic-=
deadline.html">FAIL</a>) ([i915#2846]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk9/igt@gem_exec_fair@basic=
-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_140444v2/shard-rkl-6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices.html">ABOR=
T</a> ([i915#7975] / [i915#8213]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140444v2/shard-dg1-18/igt@gem_exec_suspend@basic=
-s4-devices.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk9/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-gl=
k6/igt@gen9_exec_parse@allowed-single.html">ABORT</a>) ([i915#12375] / [i91=
5#5566]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_140444v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-snb1/igt@i915_module_load@reload-with-fault-injection.h=
tml">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_140444v2/shard-snb7/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@i915_module_load@reload-w=
ith-fault-injection.html">PASS</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_140444v2/shard-tglu-2/igt@i915_module_load@reload-w=
ith-fault-injection.html">PASS</a></li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> ([i915#10131] / [i915#10887] / [i915#9820]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-=
5/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_140444v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle=
@gt0-vecs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-trans=
ition@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#5956]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-4/igt@kms_at=
omic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS</a>=
 +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180-hflip-async-flip.html">SKIP</a> ([i915#9197]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_bi=
g_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a>=
 +20 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg1-17/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">DMESG-WARN</a> ([i915#4423]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg1-13/igt@kms_big_fb@=
y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-snb1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.htm=
l">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_140444v2/shard-snb7/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk7/igt@kms_flip@2x-modeset-vs-vblank-race-interrupti=
ble@ac-hdmi-a1-hdmi-a2.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-r=
ace-interruptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk5/igt@kms_f=
lip@2x-modeset-vs-vblank-race-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk7/igt@kms_flip@2x-modeset-vs-vblank-race-interrupti=
ble@bc-hdmi-a1-hdmi-a2.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_15588/shard-glk6/igt@kms_flip@2x-modeset-vs-vblank-r=
ace-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a>) ([i915#12403]) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard=
-glk5/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@bc-hdmi-a1-hdmi-=
a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-3/igt@kms_flip@flip-vs-rmfb-interruptible@a-edp1.h=
tml">INCOMPLETE</a> ([i915#6113]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_flip@flip-vs-rmfb-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk4/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">INCO=
MPLETE</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1558=
8/shard-glk7/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-glk9/igt@km=
s_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a>) ([i915#4839]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-glk1=
/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html">PASS</a> +1 other test pass</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk5/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15588/shard-g=
lk1/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a>) ([i915#2122]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/sha=
rd-glk2/igt@kms_flip@plain-flip-fb-recreate.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-snb1/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">F=
AIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_140444v2/shard-snb2/igt@kms_flip@plain-flip-fb-recreate@a-vg=
a1.html">PASS</a> +5 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-tglu-3/igt@kms_flip@plain-flip-fb-recreate@d-hdmi-a1.ht=
ml">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_140444v2/shard-tglu-5/igt@kms_flip@plain-flip-fb-recrea=
te@d-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible.h=
tml">FAIL</a> ([i915#11989] / [i915#2122]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_flip@plai=
n-flip-ts-check-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-mtlp-4/igt@kms_flip@plain-flip-ts-check-interruptible@a=
-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_140444v2/shard-mtlp-8/igt@kms_flip@plain-flip-t=
s-check-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15588/shard-glk7/igt@kms_flip@wf_vblank-ts-check-interruptible@a-h=
dmi-a1.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15588/shard-glk8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdm=
i-a1.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_15588/shard-glk6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-=
a1.html">PASS</a>) ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_140444v2/shard-glk6/igt@kms_flip@wf_vblank-ts-che=
ck-interruptible@a-hdmi-a1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-move.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_frontbuffer_t=
racking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +8 other tests pass</=
li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_invalid_mode@clock-too-high.html">SKIP</a=
> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_140444v2/shard-dg2-5/igt@kms_invalid_mode@clock-too-high.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html=
">SKIP</a> ([i915#7294]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_plane_alpha_blend@constant-a=
lpha-mid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-modifiers.html">SKIP</a> ([i915#8152] / [i915#9423]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/ig=
t@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-modifiers@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_=
plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c.html">PASS<=
/a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15588/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-modifiers@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140444v2/shard-dg2-5/igt@kms_p=
lane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          [SKIP][454] ([i915#</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7122868209254427761==--
