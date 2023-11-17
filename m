Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 779F27EEBE0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 06:17:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE9C10E111;
	Fri, 17 Nov 2023 05:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80FE910E111;
 Fri, 17 Nov 2023 05:17:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5651EA7E03;
 Fri, 17 Nov 2023 05:17:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8836095665527556950=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Fri, 17 Nov 2023 05:17:34 -0000
Message-ID: <170019825430.7874.16554576543535560876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231115090719.3210079-1-jouni.hogander@intel.com>
In-Reply-To: <20231115090719.3210079-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUHJl?=
 =?utf-8?q?pare_intel=5Ffbdev_for_Xe_=28rev2=29?=
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

--===============8836095665527556950==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Prepare intel_fbdev for Xe (rev2)
URL   : https://patchwork.freedesktop.org/series/126446/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13881_full -> Patchwork_126446v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126446v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126446v2_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/index.html

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126446v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-rkl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][3] +2 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr@psr2_primary_render:
    - shard-dg1:          NOTRUN -> [SKIP][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_psr@psr2_primary_render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][5] +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_dsc@dsc-fractional-bpp-with-bpc}:
    - shard-mtlp:         NOTRUN -> [SKIP][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * {igt@kms_pm_dc@dc6-psr}:
    - shard-dg2:          NOTRUN -> [SKIP][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_pm_dc@dc6-psr.html

  * {igt@kms_psr@psr_no_drrs}:
    - shard-rkl:          NOTRUN -> [SKIP][8] +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_psr@psr_no_drrs.html

  * {igt@kms_psr@psr_sprite_render}:
    - shard-dg1:          NOTRUN -> [SKIP][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_psr@psr_sprite_render.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid}:
    - shard-snb:          [PASS][10] -> [TIMEOUT][11] +1 other test timeout
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-snb1/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-snb2/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options}:
    - shard-apl:          NOTRUN -> [TIMEOUT][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html

  * {igt@kms_selftest@drm_format@drm_test_format_block_width_tiled}:
    - shard-tglu:         [PASS][13] -> [TIMEOUT][14] +1 other test timeout
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-tglu-8/igt@kms_selftest@drm_format@drm_test_format_block_width_tiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-tglu-9/igt@kms_selftest@drm_format@drm_test_format_block_width_tiled.html

  * {igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_8bpp}:
    - shard-rkl:          [PASS][15] -> [TIMEOUT][16] +3 other tests timeout
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_8bpp.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_8bpp.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-mtlp:         [PASS][17] -> [TIMEOUT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-2/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-8/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  
Known issues
------------

  Here are the changes found in Patchwork_126446v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43]) -> ([PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [FAIL][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68]) ([i915#8293])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk9/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk9/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk9/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk8/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk8/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk6/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk6/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk6/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk6/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk5/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk5/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk5/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk5/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk3/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk2/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk2/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk2/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk9/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk9/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk9/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk9/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk6/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk6/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk5/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk5/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk5/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk4/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk4/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk4/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk4/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk3/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk3/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk2/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk2/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk2/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#8411])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#8411])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_fdinfo@busy-hang@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#8414]) +4 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@drm_fdinfo@busy-hang@bcs0.html

  * igt@drm_fdinfo@busy-idle-check-all@vcs0:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#8414]) +9 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@drm_fdinfo@busy-idle-check-all@vcs0.html

  * igt@drm_fdinfo@busy-idle@bcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#8414]) +5 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@drm_fdinfo@busy-idle@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][74] ([i915#7742])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_read@empty-block:
    - shard-rkl:          [PASS][75] -> [SKIP][76] ([i915#1845] / [i915#4098]) +6 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@drm_read@empty-block.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@drm_read@empty-block.html

  * igt@fbdev@read:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#2582])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@fbdev@read.html

  * igt@gem_basic@multigpu-create-close:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#7697])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#9323])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#9323])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#6335])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#8562])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-dg1:          [PASS][83] -> [DMESG-WARN][84] ([i915#4423])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg1-14/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#8555])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-14/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#1099]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#280])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-rkl:          NOTRUN -> [ABORT][88] ([i915#7975] / [i915#8213])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_eio@hibernate.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-mtlp:         [PASS][89] -> [ABORT][90] ([i915#9414])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-5/igt@gem_eio@in-flight-contexts-immediate.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4771])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#4812])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4812]) +2 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_balancer@fairslice:
    - shard-rkl:          [PASS][94] -> [SKIP][95] ([Intel XE#874])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gem_exec_balancer@fairslice.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#8555])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#4525])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-mtlp:         NOTRUN -> [FAIL][98] ([i915#9606])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-pace:
    - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#3539])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_exec_fair@basic-pace.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#3539] / [i915#4852]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_params@secure-non-master:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([fdo#112283])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [PASS][102] -> [SKIP][103] ([i915#3281]) +6 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#3281]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_reloc@basic-wc:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3281]) +11 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_exec_reloc@basic-wc.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#3281]) +1 other test skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_reloc@basic-write-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#3281]) +8 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_exec_reloc@basic-write-wc.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4537] / [i915#4812]) +1 other test skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_fence_thrash@bo-write-verify-x:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#4860]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_fence_thrash@bo-write-verify-x.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4860]) +4 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#4613] / [i915#7582])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#4613]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#4613]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [PASS][114] -> [TIMEOUT][115] ([i915#5493])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify:
    - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#4613]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@gem_lmem_swapping@verify.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#8289])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@gem_media_fill@media-fill.html

  * igt@gem_media_vme:
    - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#284])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@basic-write-read-distinct:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#4077]) +5 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_mmap_gtt@basic-write-read-distinct.html

  * igt@gem_mmap_gtt@coherency:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([fdo#111656])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_mmap_gtt@coherency.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#4077]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4077]) +12 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_wc@coherency:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#4083]) +3 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_mmap_wc@coherency.html

  * igt@gem_mmap_wc@set-cache-level:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#1850])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html

  * igt@gem_mmap_wc@write:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#4083]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_mmap_wc@write.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#4083]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_partial_pwrite_pread@write-display:
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#3282]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_partial_pwrite_pread@write-display.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#3282]) +3 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#4270]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#4270]) +3 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3282]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#8428]) +3 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#768])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#8411]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          [PASS][135] -> [SKIP][136] ([i915#3282]) +2 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#4885]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_spin_batch@spin-all-new:
    - shard-dg2:          NOTRUN -> [FAIL][138] ([i915#5889])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_spin_batch@spin-all-new.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3282]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#4079]) +2 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3297]) +4 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#3297] / [i915#4880])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@mmap-offset-banned@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#3297])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_userptr_blits@mmap-offset-banned@gtt.html

  * igt@gem_userptr_blits@sd-probe:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#3297] / [i915#4958])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_userptr_blits@sd-probe.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#3297])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-rkl:          NOTRUN -> [FAIL][146] ([i915#3318])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-dg1:          NOTRUN -> [SKIP][147] ([fdo#109289])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gen7_exec_parse@basic-offset.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([fdo#109289]) +2 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-rkl:          [PASS][149] -> [SKIP][150] ([i915#2527]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#2856]) +3 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#2527])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#2856]) +2 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#2527])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_hangman@engine-engine-error@bcs0:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#9588])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][156] ([i915#9559])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#7091])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_mult@media-freq@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#6590]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@i915_pm_freq_mult@media-freq@gt1.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([fdo#109293] / [fdo#109506])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#6621])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_rps@reset:
    - shard-mtlp:         NOTRUN -> [FAIL][161] ([i915#8346])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds@gt0:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#8925])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@i915_pm_rps@thresholds@gt0.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([fdo#109303])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_selftest@mock@memory_region:
    - shard-apl:          NOTRUN -> [DMESG-WARN][164] ([i915#9311])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@forcewake:
    - shard-tglu:         [PASS][165] -> [INCOMPLETE][166] ([i915#8797])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-tglu-9/igt@i915_suspend@forcewake.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-tglu-6/igt@i915_suspend@forcewake.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#4212])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#4212])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-apl:          NOTRUN -> [SKIP][169] ([fdo#109271] / [i915#1769])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#5286]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([fdo#111614])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][172] -> [FAIL][173] ([i915#5138])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#4538] / [i915#5286])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([fdo#111614]) +4 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([fdo#111614] / [i915#3638])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#5190]) +13 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][178] -> [FAIL][179] ([i915#3743]) +1 other test fail
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#4538])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([fdo#111615])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([fdo#111615]) +4 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([fdo#110723]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#4538] / [i915#5190]) +5 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#2705])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#2705])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#4087]) +3 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#4087]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#7828]) +4 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-red-to-blue:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([fdo#111827]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_chamelium_color@ctm-red-to-blue.html

  * igt@kms_chamelium_color@degamma:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([fdo#111827]) +2 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#7828]) +8 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_frames@dp-crc-multiple:
    - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#7828]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-multiple.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#7828]) +4 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@ctm-0-50@pipe-b:
    - shard-rkl:          [PASS][195] -> [SKIP][196] ([i915#4098]) +1 other test skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_color@ctm-0-50@pipe-b.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_color@ctm-0-50@pipe-b.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#3299]) +2 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#7118])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@srm@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][199] ([i915#7173])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-apl2/igt@kms_content_protection@srm@pipe-a-dp-1.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#7118])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#6944])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#3359]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#3555] / [i915#8814])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#3359])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#3555]) +2 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#3359]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][207] ([fdo#111767] / [fdo#111825])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#3546]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#1845] / [i915#4098]) +24 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([fdo#111825]) +8 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][211] ([fdo#111825]) +9 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][212] ([fdo#109274] / [i915#5354]) +4 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@forked-move@all-pipes:
    - shard-mtlp:         [PASS][213] -> [DMESG-WARN][214] ([i915#2017])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-8/igt@kms_cursor_legacy@forked-move@all-pipes.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-4/igt@kms_cursor_legacy@forked-move@all-pipes.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#4103] / [i915#4213]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#4213])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#9226] / [i915#9261]) +1 other test skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#9227])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#9227])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#9226] / [i915#9261]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#3555] / [i915#8812])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#8812])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#3555] / [i915#3840] / [i915#9159])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#3555] / [i915#3840])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#3469])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#3637]) +3 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([fdo#109274]) +4 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-nonexisting-fb:
    - shard-snb:          NOTRUN -> [SKIP][228] ([fdo#109271]) +27 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-snb2/igt@kms_flip@2x-nonexisting-fb.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#3637] / [i915#4098]) +1 other test skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#3555]) +5 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#8810])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#2672]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#2672]) +2 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8810])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#2672]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([fdo#109285])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#5274])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
    - shard-rkl:          [PASS][238] -> [SKIP][239] ([i915#1849] / [i915#4098])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#5354]) +26 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#8708]) +16 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#8708])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-y:
    - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#5460])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#3458]) +5 other tests skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#8708]) +2 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#3023]) +9 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([fdo#111825] / [i915#1825]) +15 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][248] ([i915#1825]) +18 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][249] ([fdo#109271]) +119 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#1849] / [i915#4098]) +16 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#3458]) +19 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#3555] / [i915#8228]) +1 other test skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#3555] / [i915#8228])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_hdr@invalid-hdr.html

  * igt@kms_invalid_mode@bad-htotal:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#3555] / [i915#4098]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_invalid_mode@bad-htotal.html

  * igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#9457]) +2 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg1:          NOTRUN -> [SKIP][256] ([i915#1839])
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#6301])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#6301])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@plane-panning-bottom-right:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#4098] / [i915#8825])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#8806])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [FAIL][261] ([i915#8292])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#3555] / [i915#4098] / [i915#8152])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#5176] / [i915#9423]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#5235]) +15 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#5235]) +11 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#5235]) +15 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#5235]) +1 other test skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#3555] / [i915#5235]) +3 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-edp-1.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#6524])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@d3hot:
    - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#6524] / [i915#6805])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([fdo#111068])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#4348])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg1:          NOTRUN -> [SKIP][273] ([fdo#111068])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#9681]) +2 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rotation_crc@bad-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#4235]) +2 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_rotation_crc@bad-tiling.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-rkl:          [PASS][276] -> [INCOMPLETE][277] ([i915#8875] / [i915#9475] / [i915#9569])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-90.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-90.html
    - shard-mtlp:         NOTRUN -> [SKIP][278] ([i915#4235])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#5289])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][280] ([i915#4235] / [i915#5190])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@basic@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [FAIL][281] ([i915#5465]) +1 other test fail
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-snb5/igt@kms_setmode@basic@pipe-a-vga-1.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-mtlp:         NOTRUN -> [SKIP][282] ([fdo#109309])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_tv_load_detect@load-detect.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:
    - shard-snb:          [PASS][283] -> [FAIL][284] ([i915#9196])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
    - shard-mtlp:         [PASS][285] -> [FAIL][286] ([i915#9196])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [INCOMPLETE][287] ([i915#180] / [i915#9159])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html

  * igt@kms_vblank@wait-forked-busy-hang:
    - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#4098]) +10 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_vblank@wait-forked-busy-hang.html

  * igt@kms_vrr@negative-basic:
    - shard-dg1:          NOTRUN -> [SKIP][289] ([i915#3555]) +1 other test skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_vrr@negative-basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#2437]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_writeback@writeback-check-output.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-mtlp:         NOTRUN -> [SKIP][291] ([fdo#109289]) +1 other test skip
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config-invalid:
    - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#7387])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@perf@global-sseu-config-invalid.html

  * igt@perf@mi-rpc:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#2434])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@perf@mi-rpc.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         NOTRUN -> [FAIL][294] ([i915#4349])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][295] -> [FAIL][296] ([i915#4349]) +3 other tests fail
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][297] ([i915#6806])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          NOTRUN -> [FAIL][298] ([i915#5793])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][299] ([i915#8516])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#3291] / [i915#3708])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@prime_vgem@basic-fence-read.html
    - shard-rkl:          [PASS][301] -> [SKIP][302] ([fdo#109295] / [i915#3291] / [i915#3708])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-write:
    - shard-mtlp:         NOTRUN -> [SKIP][303] ([i915#3708])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#3708] / [i915#4077])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][305] ([fdo#109295] / [i915#3708])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg1:          NOTRUN -> [SKIP][306] ([i915#3708])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@prime_vgem@fence-write-hang.html

  * igt@v3d/v3d_job_submission@array-job-submission:
    - shard-dg2:          NOTRUN -> [SKIP][307] ([i915#2575]) +10 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@v3d/v3d_job_submission@array-job-submission.html

  * igt@v3d/v3d_submit_cl@bad-in-sync:
    - shard-dg1:          NOTRUN -> [SKIP][308] ([i915#2575]) +3 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@v3d/v3d_submit_cl@bad-in-sync.html

  * igt@v3d/v3d_submit_cl@valid-submission:
    - shard-mtlp:         NOTRUN -> [SKIP][309] ([i915#2575]) +7 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@v3d/v3d_submit_cl@valid-submission.html

  * igt@v3d/v3d_submit_csd@bad-multisync-pad:
    - shard-rkl:          NOTRUN -> [SKIP][310] ([fdo#109315]) +6 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@v3d/v3d_submit_csd@bad-multisync-pad.html

  * igt@vc4/vc4_label_bo@set-bad-handle:
    - shard-mtlp:         NOTRUN -> [SKIP][311] ([i915#7711]) +2 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@vc4/vc4_label_bo@set-bad-handle.html

  * igt@vc4/vc4_mmap@mmap-bad-handle:
    - shard-dg1:          NOTRUN -> [SKIP][312] ([i915#7711]) +1 other test skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@vc4/vc4_mmap@mmap-bad-handle.html

  * igt@vc4/vc4_tiling@set-get:
    - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#7711]) +7 other tests skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@vc4/vc4_tiling@set-get.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
    - shard-rkl:          NOTRUN -> [SKIP][314] ([i915#7711]) +7 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-mtlp:         [ABORT][315] ([i915#9414]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - shard-rkl:          [SKIP][317] ([i915#6252]) -> [PASS][318]
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-rkl:          [SKIP][319] ([i915#9591]) -> [PASS][320]
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-rkl:          [FAIL][321] ([i915#2842]) -> [PASS][322] +1 other test pass
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][323] ([i915#2842]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [FAIL][325] ([i915#2842]) -> [PASS][326]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-tglu-9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-rkl:          [SKIP][327] ([i915#3281]) -> [PASS][328] +1 other test pass
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gem_exec_reloc@basic-concurrent0.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-rkl:          [SKIP][329] ([i915#3282]) -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gem_partial_pwrite_pread@write-uncached.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [SKIP][331] ([i915#2527]) -> [PASS][332]
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_module_load@reload-no-display:
    - shard-snb:          [INCOMPLETE][333] -> [PASS][334]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-snb6/igt@i915_module_load@reload-no-display.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-snb5/igt@i915_module_load@reload-no-display.html

  * {igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0}:
    - shard-dg1:          [FAIL][335] -> [PASS][336]
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][337] ([i915#4387]) -> [PASS][338]
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][339] ([i915#5138]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         [FAIL][341] ([i915#3743]) -> [PASS][342] +1 other test pass
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_color@degamma@pipe-a:
    - shard-rkl:          [SKIP][343] ([i915#4098]) -> [PASS][344] +2 other tests pass
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_color@degamma@pipe-a.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_color@degamma@pipe-a.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
    - shard-rkl:          [SKIP][345] ([i915#1845] / [i915#4098]) -> [PASS][346] +12 other tests pass
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][347] ([i915#2346]) -> [PASS][348]
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [FAIL][349] ([i915#6880]) -> [PASS][350]
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][351] ([i915#1849] / [i915#4098]) -> [PASS][352] +2 other tests pass
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
    - shard-apl:          [ABORT][353] ([i915#180]) -> [PASS][354]
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

  * {igt@kms_pm_rpm@dpms-non-lpsp}:
    - shard-rkl:          [SKIP][355] ([i915#9519]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html

  * {igt@kms_pm_rpm@drm-resources-equal}:
    - shard-rkl:          [SKIP][357] ([fdo#109308]) -> [PASS][358]
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_pm_rpm@drm-resources-equal.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_pm_rpm@drm-resources-equal.html

  * {igt@kms_pm_rpm@i2c}:
    - shard-dg2:          [FAIL][359] ([i915#8717]) -> [PASS][360]
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-2/igt@kms_pm_rpm@i2c.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-6/igt@kms_pm_rpm@i2c.html

  * {igt@kms_pm_rpm@modeset-lpsp-stress}:
    - shard-dg1:          [SKIP][361] ([i915#9519]) -> [PASS][362] +1 other test pass
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * {igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode}:
    - shard-dg2:          [TIMEOUT][363] -> [PASS][364]
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-6/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-6/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
    - shard-dg1:          [TIMEOUT][365] -> [PASS][366]
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg1-13/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-13/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html

  * {igt@kms_selftest@drm_format@drm_test_format_block_width_tiled}:
    - shard-mtlp:         [TIMEOUT][367] -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-2/igt@kms_selftest@drm_format@drm_test_format_block_width_tiled.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-1/igt@kms_selftest@drm_format@drm_test_format_block_width_tiled.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-snb:          [TIMEOUT][369] -> [PASS][370]
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-snb7/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-snb1/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - shard-mtlp:         [FAIL][371] ([i915#9196]) -> [PASS][372]
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][373] ([i915#7957]) -> [SKIP][374] ([i915#3555])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][375] ([i915#4098] / [i915#9323]) -> [SKIP][376] ([i915#7957])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][377] ([i915#1845] / [i915#4098]) -> [SKIP][378] ([i915#5286]) +2 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-rkl:          [SKIP][379] ([i915#5286]) -> [SKIP][380] ([i915#1845] / [i915#4098])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][381] ([i915#1845] / [i915#4098]) -> [SKIP][382] ([fdo#111614] / [i915#3638]) +1 other test skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][383] ([fdo#111614] / [i915#3638]) -> [SKIP][384] ([i915#1845] / [i915#4098])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
    - shard-rkl:          [SKIP][385] ([fdo#110723]) -> [SKIP][386] ([i915#1845] / [i915#4098])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][387] ([i915#1845] / [i915#4098]) -> [SKIP][388] ([fdo#110723]) +2 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][389] ([i915#1845] / [i915#4098]) -> [SKIP][390] ([i915#3116])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@type1:
    - shard-rkl:          [SKIP][391] ([i915#1845] / [i915#4098]) -> [SKIP][392] ([i915#7118])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_content_protection@type1.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][393] ([i915#1845] / [i915#4098]) -> [SKIP][394] ([i915#3359])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-rkl:          [SKIP][395] ([i915#3555]) -> [SKIP][396] ([i915#1845] / [i915#4098])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_cursor_crc@cursor-random-32x32.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][397] ([i915#1845] / [i915#4098]) -> [SKIP][398] ([i915#3555])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          [SKIP][399] ([i915#1845] / [i915#4098]) -> [SKIP][400] ([i915#4103])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][401] ([fdo#110189] / [i915#3955]) -> [SKIP][402] ([i915#3955]) +1 other test skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][403] ([fdo#109285] / [i915#4098]) -> [SKIP][404] ([fdo#109285])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          [SKIP][405] ([fdo#111825] / [i915#1825]) -> [SKIP][406] ([i915#1849] / [i915#4098]) +8 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          [SKIP][407] ([i915#1849] / [i915#4098]) -> [SKIP][408] ([i915#3023]) +10 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          [SKIP][409] ([i915#1849] / [i915#4098]) -> [SKIP][410] ([fdo#111825] / [i915#1825]) +21 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-rkl:          [SKIP][411] ([i915#3023]) -> [SKIP][412] ([i915#1849] / [i915#4098]) +5 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][413] ([i915#1849] / [i915#4098]) -> [SKIP][414] ([i915#5439])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][415] ([i915#3555] / [i915#8228]) -> [SKIP][416] ([i915#1845] / [i915#4098])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_hdr@static-toggle.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_hdr@static-toggle.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][417] ([i915#1845] / [i915#4098]) -> [SKIP][418] ([i915#6301])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][419] ([i915#5289]) -> [SKIP][420] ([i915#1845] / [i915#4098])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#874]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/874
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
  [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
  [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8289]: https://gitlab.freede

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/index.html

--===============8836095665527556950==
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
<tr><td><b>Series:</b></td><td>Prepare intel_fbdev for Xe (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/126446/">https://patchwork.freedesktop.org/series/126446/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126446v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126446v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13881_full -&gt; Patchwork_126446v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126446v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_126446v2_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v=
2/index.html</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
126446v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-6/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126446v2/shard-rkl-4/igt@i915_module_load@reload-with-fault-injecti=
on.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_psr2_sf@cursor-plane-=
move-continuous-sf.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_psr@psr2_primary_rend=
er.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_dsc@dsc-fractional-bpp-with-bpc}:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_dc@dc6-psr}:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_pm_dc@dc6-psr.html">SK=
IP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_psr@psr_no_drrs}:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_psr@psr_no_drrs.html">=
SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>{igt@kms_psr@psr_sprite_render}:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_psr@psr_sprite_render=
.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid}:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-snb1/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdli=
ne_invalid.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_126446v2/shard-snb2/igt@kms_selftest@drm_cmdline_parser@=
drm_test_cmdline_invalid.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options}:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@kms_selftest@drm_cmdline_pa=
rser@drm_test_cmdline_tv_options.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format@drm_test_format_block_width_tiled}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-tglu-8/igt@kms_selftest@drm_format@drm_test_format_bloc=
k_width_tiled.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126446v2/shard-tglu-9/igt@kms_selftest@drm_format@drm=
_test_format_block_width_tiled.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_8bpp}:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_selftest@drm_format@drm_test_format_min_p=
itch_one_plane_8bpp.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_selftest@drm_forma=
t@drm_test_format_min_pitch_one_plane_8bpp.html">TIMEOUT</a> +3 other tests=
 timeout</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:<=
/p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-mtlp-2/igt@kms_selftest@drm_plane_helper@drm_test_check=
_invalid_plane_state.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_126446v2/shard-mtlp-8/igt@kms_selftest@drm_pla=
ne_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126446v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13881/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13881/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13881/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/sha=
rd-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13881/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13881/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13881/shard-glk5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13881/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-gl=
k4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3881/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13881/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shar=
d-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13881/shard-glk2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk9/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
446v2/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126446v2/shard-glk9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk9/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126446v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/sh=
ard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126446v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk6/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6446v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126446v2/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126446v2/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/sh=
ard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126446v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6446v2/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126446v2/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126446v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126446v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-glk2/boot.html"=
>PASS</a>) ([i915#8293])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@api_intel_bb@blit-reloc-p=
urge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@api_intel_bb@object-reloc-=
purge-cache.html">SKIP</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@drm_fdinfo@busy-hang@bcs0=
.html">SKIP</a> ([i915#8414]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@vcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@drm_fdinfo@busy-idle-chec=
k-all@vcs0.html">SKIP</a> ([i915#8414]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle@bcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@drm_fdinfo@busy-idle@bcs0=
.html">SKIP</a> ([i915#8414]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-=
check-all@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7742">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@drm_read@empty-block.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-r=
kl-5/igt@drm_read@empty-block.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +6 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@fbdev@read.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-dg1-14/igt@gem_ctx_isolation@preservation-s3@vecs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126446v2/shard-dg1-18/igt@gem_ctx_isolation@preservation-s3@vecs0.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-14/igt@gem_ctx_persistence@heart=
beat-close.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-snb5/igt@gem_ctx_persistence@legacy-=
engines-mixed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1099">i915#1099</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_eio@hibernate.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">i=
915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-mtlp-5/igt@gem_eio@in-flight-contexts-immediate.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_126446v2/shard-mtlp-5/igt@gem_eio@in-flight-contexts-immediate.html">ABORT=
</a> ([i915#9414])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_exec_balancer@bonded-=
pair.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_exec_balancer@bonded-=
semaphore.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_exec_balancer@bonded-t=
rue-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@gem_exec_balancer@fairslice.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/=
shard-rkl-5/igt@gem_exec_balancer@fairslice.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/xe/kernel/issues/874">Intel XE#874</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@gem_exec_balancer@noheart=
beat.html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_exec_balancer@parallel=
-keep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_exec_capture@many-4k-=
zero.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_exec_fair@basic-pace.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_exec_params@secure-no=
n-master.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26446v2/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_exec_reloc@basic-soft=
pin.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_exec_reloc@basic-wc.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/32=
81">i915#3281</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_exec_reloc@basic-write=
-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_exec_reloc@basic-writ=
e-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_exec_schedule@reorder-=
wide.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_fence_thrash@bo-write=
-verify-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_fenced_exec_thrash@2-s=
pare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4860">i915#4860</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4613">i915#4613</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_lmem_swapping@heavy-v=
erify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1264=
46v2/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@gem_lmem_swapping@verify.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@gem_media_fill@media-fill=
.html">SKIP</a> (<a href=3D"https://gitlab.freede">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#2=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read-distinct:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_mmap_gtt@basic-write-=
read-distinct.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_mmap_gtt@coherency.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1116=
56">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_mmap_gtt@cpuset-basic=
-small-copy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_mmap_gtt@cpuset-medium=
-copy-xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4077">i915#4077</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@coherency:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_mmap_wc@coherency.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083=
">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_mmap_wc@set-cache-leve=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1850">i915#1850</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_mmap_wc@write.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i=
915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_mmap_wc@write-cpu-rea=
d-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-display:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gem_partial_pwrite_pread@=
write-display.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_partial_pwrite_pread@=
writes-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gem_pxp@create-regular-bu=
ffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@gem_readwrite@beyond-eob.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_render_copy@y-tiled-m=
c-ccs-to-vebox-y-tiled.html">SKIP</a> ([i915#8428]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@gem_render_copy@y-tiled-to=
-vebox-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/768">i915#768</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_set_tiling_vs_blt@unti=
led-to-tiled.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/sha=
rd-rkl-7/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +2 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_softpin@evict-snoop-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4885">i915#4885</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@spin-all-new:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_spin_batch@spin-all-ne=
w.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5889">i915#5889</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_tiled_partial_pwrite_p=
read@writes-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_tiled_pread_pwrite.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3297">i915#3297</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@gem_userptr_blits@map-fixe=
d-invalidate-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-banned@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@gem_userptr_blits@mmap-of=
fset-banned@gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@sd-probe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@gem_userptr_blits@sd-probe=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4958">i915#4958</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gen7_exec_parse@basic-off=
set.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gen7_exec_parse@chained-ba=
tch.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
446v2/shard-rkl-4/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</a>=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@gen9_exec_parse@bb-chaine=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2856">i915#2856</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@gen9_exec_parse@bb-start-=
out.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@gen9_exec_parse@cmd-cross=
ing-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-error@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@i915_hangman@engine-engine=
-error@bcs0.html">SKIP</a> ([i915#9588])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@i915_module_load@reload-w=
ith-fault-injection.html">DMESG-WARN</a> ([i915#9559])</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@i915_pm_freq_mult@media-f=
req@gt1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/662=
1">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@i915_pm_rps@reset.html">F=
AIL</a> ([i915#8346])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@i915_pm_rps@thresholds@gt0=
.html">SKIP</a> ([i915#8925])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-tglu-9/igt@i915_suspend@forcewake.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shar=
d-tglu-6/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#8797])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_addfb_basic@framebuff=
er-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@kms_atomic_transition@plane=
-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-32bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126446v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#51=
38</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_big_fb@x-tiled-32bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5190">i915#5190</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126446v2/shard-tglu-2/igt@kms_big_fb@y-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other test fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-=
size-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +5 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_big_joiner@invalid-mod=
eset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_cdclk@plane-scaling@pi=
pe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_cdclk@plane-scaling@p=
ipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-red-to-blue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_chamelium_color@ctm-r=
ed-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_chamelium_color@degamm=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_chamelium_edid@hdmi-ed=
id-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-multiple:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_chamelium_frames@dp-c=
rc-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-50@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_color@ctm-0-50@pipe-b.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/sh=
ard-rkl-5/igt@kms_color@ctm-0-50@pipe-b.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3299">i915#3299</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_content_protection@leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-apl2/igt@kms_content_protection@srm@=
pipe-a-dp-1.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_content_protection@typ=
e1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@kms_content_protection@ue=
vent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_cursor_crc@cursor-offs=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a> / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_cursor_legacy@2x-nonb=
locking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) +24 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_cursor_legacy@cursora-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111825">fdo#111825</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_cursor_legacy@cursorb=
-vs-flipa-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111825">fdo#111825</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-=
vs-flipa-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@forked-move@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-mtlp-8/igt@kms_cursor_legacy@forked-move@all-pipes.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126446v2/shard-mtlp-4/igt@kms_cursor_legacy@forked-move@all-pipes.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2017">i915#2017</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@=
drrs-hdmi-a-2.html">SKIP</a> ([i915#9226] / [i915#9261]) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@=
fbc-hdmi-a-1.html">SKIP</a> ([i915#9227])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_dirtyfb@dirtyfb-ioctl@=
fbc-hdmi-a-2.html">SKIP</a> ([i915#9227])</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@=
psr-hdmi-a-1.html">SKIP</a> ([i915#9226] / [i915#9261]) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_draw_crc@draw-method-=
mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3555">i915#3555</a> / [i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> ([i915#8812])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@kms_dsc@dsc-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
840">i915#3840</a> / [i915#9159])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_dsc@dsc-with-bpc-forma=
ts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3469">i9=
15#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@kms_flip@2x-flip-vs-rmfb.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3637">i915#3637</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109274">fdo#109274</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-snb2/igt@kms_flip@2x-nonexisting-fb.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_flip@basic-flip-vs-dpm=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +5 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
[i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a=
-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_force_connector_basic@=
force-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_force_connector_basic=
@prune-stale-modes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5274">i915#5274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fb=
c-1p-offscren-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +26 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([i915#8708]) +16 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbc-farfromfence-mmap-gtt.html">SKIP</a> ([i915#8708])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbc-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5460">i915#5460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3458">i915#3458</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3023">i915#3023</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +15 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +18 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-apl7/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +119 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4098">i915#4098</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_frontbuffer_tracking@p=
sr-rgb101010-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3458">i915#3458</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_hdr@invalid-hdr.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_invalid_mode@bad-htota=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_invalid_mode@clock-to=
o-high@pipe-c-edp-1.html">SKIP</a> ([i915#9457]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_plane@plane-panning-bo=
ttom-right.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4098">i915#4098</a> / [i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> ([i915#8806])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-19/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-modifiers.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8152">i915#8152</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
[i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-=
hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-19/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-a-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-=
hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-1/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-=
edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-d-edp-1.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>)=
 +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_prime@d3hot.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6524">i915=
#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6805=
">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_psr@psr2_sprite_plane=
_move.html">SKIP</a> ([i915#9681]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_rotation_crc@bad-tilin=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4235">i915#4235</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13881/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-90.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26446v2/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-90.html">INCOMPLE=
TE</a> ([i915#8875] / [i915#9475] / [i915#9569])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_rotation_crc@primary-r=
otation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4235">i915#4235</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-snb5/igt@kms_setmode@basic@pipe-a-vg=
a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5465">i915#5465</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_tv_load_detect@load-d=
etect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109309">fdo#109309</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-vga-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126446v2/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a=
-vga-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126446v2/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-b-edp-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-apl1/igt@kms_vblank@ts-continuation-=
dpms-suspend@pipe-a-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/180">i915#180</a> / [i915#9159])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-forked-busy-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_vblank@wait-forked-bus=
y-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@perf@gen8-unprivileged-si=
ngle-ctx-counters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@perf@global-sseu-config-i=
nvalid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@perf@mi-rpc.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#24=
34</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@perf_pmu@busy-double-star=
t@ccs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4349">i915#4349</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
446v2/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)=
 +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/680=
6">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@perf_pmu@module-unload.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/579=
3">i915#5793</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126446v2/shard-dg2-2/igt@prime_vgem@basic-fence-read=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3708">i915#3708</a>)</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13881/shard-rkl-5/igt@prime_vgem@basic-fence-read.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/s=
hard-rkl-7/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</=
a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-3/igt@prime_vgem@basic-write.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/37=
08">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@prime_vgem@fence-write-ha=
ng.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_job_submission@array-job-submission:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@v3d/v3d_job_submission@arr=
ay-job-submission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2575">i915#2575</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-in-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@v3d/v3d_submit_cl@bad-in-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@valid-submission:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@v3d/v3d_submit_cl@valid-s=
ubmission.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2575">i915#2575</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-pad:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@v3d/v3d_submit_csd@bad-mul=
tisync-pad.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109315">fdo#109315</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_label_bo@set-bad-handle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@vc4/vc4_label_bo@set-bad-=
handle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bad-handle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg1-18/igt@vc4/vc4_mmap@mmap-bad-han=
dle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-get:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-dg2-1/igt@vc4/vc4_tiling@set-get.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/771=
1">i915#7711</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-1ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-rkl-2/igt@vc4/vc4_wait_seqno@bad-seq=
no-1ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7711">i915#7711</a>) +7 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-mtlp-7/igt@gem_ctx_isolation@preservation-s3@rcs0.html"=
>ABORT</a> ([i915#9414]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_126446v2/shard-mtlp-7/igt@gem_ctx_isolation@preservation-=
s3@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6252">i=
915#6252</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126446v2/shard-rkl-4/igt@gem_ctx_persistence@engines-hang@bcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html">SKIP</a>=
 ([i915#9591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126446v2/shard-rkl-7/igt@gem_exec_endless@dispatch@bcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26446v2/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +1 oth=
er test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126446v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-tglu-9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126446v2/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@gem_exec_reloc@basic-concurrent0.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3=
281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126446v2/shard-rkl-5/igt@gem_exec_reloc@basic-concurrent0.html">PASS</a> =
+1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@gem_partial_pwrite_pread@write-uncached.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282"=
>i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126446v2/shard-rkl-5/igt@gem_partial_pwrite_pread@write-uncached.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#252=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126446v2/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-snb6/igt@i915_module_load@reload-no-display.html">INCOM=
PLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_126446v2/shard-snb5/igt@i915_module_load@reload-no-display.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>{igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126446v2/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4387">i915#4387</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446=
v2/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126446v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rota=
te-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_126446v2/shard-tglu-10/igt@kms_big_fb@x-tiled=
-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> +1 other test pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_color@degamma@pipe-a.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446=
v2/shard-rkl-4/igt@kms_color@degamma@pipe-a.html">PASS</a> +2 other tests p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-tra=
nsitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-7/igt@kms_cursor_legacy@cur=
sora-vs-flipa-atomic-transitions.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126446v2/shard-glk3/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri=
-shrfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/6880">i915#6880</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-11/igt@kms_frontbuffer_tra=
cking@fbc-1p-primscrn-pri-shrfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_frontbuffer=
_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html">PASS</a> +2 other tests =
pass</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-=
1.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126446v2/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@=
pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-non-lpsp}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([i91=
5#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126446v2/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@drm-resources-equal}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109=
308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126446v2/shard-rkl-7/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@i2c}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL</a> ([i915#8717]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2=
/shard-dg2-6/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-lpsp-stress}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a=
> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126446v2/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html">PAS=
S</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_dec=
ode}:</p>
<ul>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13881/shard-dg2-6/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst=
_sideband_msg_req_decode.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg2-6/igt@kms_selftest@d=
rm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html">PASS</a></p>
</li>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13881/shard-dg1-13/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_ms=
t_sideband_msg_req_decode.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-dg1-13/igt@kms_selftest=
@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html">PASS</a></=
p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format@drm_test_format_block_width_tiled}:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-mtlp-2/igt@kms_selftest@drm_format@drm_test_format_bloc=
k_width_tiled.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126446v2/shard-mtlp-1/igt@kms_selftest@drm_format@=
drm_test_format_block_width_tiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:<=
/p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-snb7/igt@kms_selftest@drm_plane_helper@drm_test_check_i=
nvalid_plane_state.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_126446v2/shard-snb1/igt@kms_selftest@drm_plan=
e_helper@drm_test_check_invalid_plane_state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-ed=
p-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126446v2/shard-mtlp-5/igt@kms_universal_plane@cur=
sor-fb-leak@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957">i915#7957=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26446v2/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#409=
8</a> / [i915#9323]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126446v2/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7957"=
>i915#7957</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126446v2/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286">i=
915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286">i915#5=
286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126446v2/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915=
#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098=
">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126446v2/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614=
">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo=
#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126446v2/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">f=
do#110723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126446v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-=
max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126446v2/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915=
#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126446v2/shard-rkl-4/igt@kms_content_protection@type1.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512=
x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915=
#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126446v2/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098"=
>i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i91=
5#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/409=
8">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126446v2/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_curs=
or_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_126446v2/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) =
+1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9285">fdo#109285</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_126446v2/shard-rkl-6/igt@kms_force_connector_basic@for=
ce-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-=
indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_frontb=
uffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098<=
/a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-=
multidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_frontbuffer_trac=
king@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +10 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
hrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_frontbuffe=
r_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>)=
 +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledp=
rimary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3023">i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_126446v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcp=
sr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4098">i915#4098</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849=
">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_126446v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-ti=
ling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
446v2/shard-rkl-5/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1=
845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">=
i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126446v2/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6301">i91=
5#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13881/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126446v2/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-ref=
lect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============8836095665527556950==--
