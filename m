Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8648F7EA4E4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 21:34:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69BE10E030;
	Mon, 13 Nov 2023 20:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F196B10E030;
 Mon, 13 Nov 2023 20:34:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA3DFA7E03;
 Mon, 13 Nov 2023 20:34:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7771493610025236465=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Date: Mon, 13 Nov 2023 20:34:47 -0000
Message-ID: <169990768792.24210.16048007319764541602@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231113093737.358137-1-mika.kahola@intel.com>
In-Reply-To: <20231113093737.358137-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Use_int_for_entry_setup_frames?=
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

--===============7771493610025236465==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Use int for entry setup frames
URL   : https://patchwork.freedesktop.org/series/126325/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13868_full -> Patchwork_126325v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126325v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126325v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126325v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-rkl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-1/igt@gem_exec_whisper@basic-fds-forked-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-2/igt@gem_exec_whisper@basic-fds-forked-all.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic}:
    - shard-tglu:         [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-tglu-3/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-tglu-8/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic.html

  * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological}:
    - shard-snb:          NOTRUN -> [TIMEOUT][5] +1 other test timeout
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-snb5/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid}:
    - shard-snb:          [PASS][6] -> [TIMEOUT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-snb6/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-snb6/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html

  * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_res_bpp_refresh_force_on}:
    - shard-dg2:          [PASS][8] -> [TIMEOUT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg2-1/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_res_bpp_refresh_force_on.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_res_bpp_refresh_force_on.html

  * {igt@kms_selftest@drm_format@drm_test_format_block_height_one_plane}:
    - shard-mtlp:         [PASS][10] -> [TIMEOUT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-mtlp-8/igt@kms_selftest@drm_format@drm_test_format_block_height_one_plane.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-2/igt@kms_selftest@drm_format@drm_test_format_block_height_one_plane.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
    - shard-dg1:          [PASS][12] -> [TIMEOUT][13] +1 other test timeout
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg1-18/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-18/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
    - shard-apl:          NOTRUN -> [TIMEOUT][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html

  
Known issues
------------

  Here are the changes found in Patchwork_126325v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [FAIL][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38]) ([i915#8293]) -> ([PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl4/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl4/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl7/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#6230])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@api_intel_bb@crc32.html
    - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#6230])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@api_intel_bb@crc32.html

  * igt@drm_fdinfo@busy-hang@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#8414]) +11 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@drm_fdinfo@busy-hang@rcs0.html

  * igt@drm_fdinfo@busy@ccs0:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#8414]) +9 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@drm_fdinfo@busy@ccs0.html

  * igt@fbdev@pan:
    - shard-rkl:          [PASS][67] -> [SKIP][68] ([i915#2582])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@fbdev@pan.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@fbdev@pan.html

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#7697])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_basic@multigpu-create-close.html
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#7697])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_basic@multigpu-create-close.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#6335])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [PASS][72] -> [FAIL][73] ([i915#9561])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-10/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_persistence@engines-hang@bcs0:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#6252])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_ctx_persistence@engines-hang@bcs0.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#280])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#280])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][77] -> [ABORT][78] ([i915#7975] / [i915#8213] / [i915#8398])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-tglu-3/igt@gem_eio@hibernate.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-tglu-10/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4812])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#4771])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#8555]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#4525]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_capture@many-4k-incremental:
    - shard-rkl:          NOTRUN -> [FAIL][83] ([i915#9606])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@gem_exec_capture@many-4k-incremental.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][84] ([i915#3778] / [i915#7016])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][85] ([i915#2842])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][86] -> [FAIL][87] ([i915#2842])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#4473] / [i915#4771])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#3539])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          NOTRUN -> [FAIL][90] ([i915#2842])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-tglu:         [PASS][91] -> [FAIL][92] ([i915#2842]) +1 other test fail
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-tglu-6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-tglu-4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@submit67:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#4812]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_flush@basic-wb-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#3539] / [i915#4852])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_exec_flush@basic-wb-pro-default.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#3539] / [i915#4852]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_gttfill@multigpu-basic:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#7697])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_exec_gttfill@multigpu-basic.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#3281]) +5 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [PASS][98] -> [SKIP][99] ([i915#3281]) +6 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-scanout@bcs0:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#3639]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_exec_reloc@basic-scanout@bcs0.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3281]) +5 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#3281]) +5 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_schedule@deep@rcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#4537])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_exec_schedule@deep@rcs0.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#4537] / [i915#4812])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4537] / [i915#4812])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][106] ([i915#7975] / [i915#8213])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-rkl:          NOTRUN -> [ABORT][107] ([i915#7975] / [i915#8213])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#4860])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2190])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#4613]) +2 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-glk:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#4613])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#4565])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html

  * igt@gem_lmem_swapping@random:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#4613]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify:
    - shard-apl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#4613])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/igt@gem_lmem_swapping@verify.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#3282])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_media_vme:
    - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#284])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_media_vme.html

  * igt@gem_mmap@short-mmap:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#4083]) +2 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#4077]) +10 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#4077]) +3 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#4077]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#4083]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@read-write:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#4083]) +3 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_mmap_wc@read-write.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#3282]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3282]) +4 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pxp@create-regular-buffer:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#4270]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_pxp@create-regular-buffer.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#4270]) +2 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_pxp@regular-baseline-src-copy-readible.html
    - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#4270]) +1 other test skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#4270]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@new-obj:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3282])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_readwrite@new-obj.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#8428]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#768]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#4079])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#4079])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          [PASS][134] -> [SKIP][135] ([i915#8411])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [PASS][136] -> [SKIP][137] ([i915#3282]) +1 other test skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#3297]) +4 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3297])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_userptr_blits@readonly-unsync.html
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#3297])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3281]) +9 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#3297]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][143] ([i915#3318])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_userptr_blits@vma-merge.html
    - shard-mtlp:         NOTRUN -> [FAIL][144] ([i915#3318])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([fdo#109289])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@gen7_exec_parse@basic-offset.html

  * igt@gen7_exec_parse@load-register-reg:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([fdo#109289]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gen7_exec_parse@load-register-reg.html
    - shard-dg2:          NOTRUN -> [SKIP][147] ([fdo#109289]) +1 other test skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gen7_exec_parse@load-register-reg.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#2856]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@gen9_exec_parse@allowed-all.html
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#2527])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-rkl:          [PASS][150] -> [SKIP][151] ([i915#2527]) +1 other test skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#2527])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#2856])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@load:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#6227])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@i915_module_load@load.html
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#6227])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][156] -> [ABORT][157] ([i915#8489] / [i915#8668])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_freq_mult@media-freq@gt1:
    - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#6590]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@i915_pm_freq_mult@media-freq@gt1.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#6621])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][160] -> [INCOMPLETE][161] ([i915#7790])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-snb7/igt@i915_pm_rps@reset.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-snb2/igt@i915_pm_rps@reset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#8437])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][163] -> [SKIP][164] ([i915#7984])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-mtlp-7/igt@i915_power@sanity.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-8/igt@i915_power@sanity.html
    - shard-rkl:          [PASS][165] -> [SKIP][166] ([i915#7984])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@i915_power@sanity.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@i915_power@sanity.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([fdo#109303])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_query@query-topology-unsupported:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([fdo#109302])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@i915_query@query-topology-unsupported.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#5723])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@i915_query@test-query-geometry-subslices.html
    - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#5723])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@mock@memory_region:
    - shard-glk:          NOTRUN -> [DMESG-WARN][171] ([i915#9311])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@i915_selftest@mock@memory_region.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#4212]) +1 other test skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#5190])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#4212])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#4212])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#4538] / [i915#5286]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> [FAIL][177] ([i915#5138])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#5286]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([fdo#111614])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#3638])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([fdo#111614])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-rkl:          [PASS][182] -> [SKIP][183] ([i915#1845] / [i915#4098]) +9 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#5190]) +8 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][185] -> [FAIL][186] ([i915#3743]) +1 other test fail
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#4538]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#4538] / [i915#5190]) +4 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
    - shard-rkl:          NOTRUN -> [SKIP][189] ([fdo#110723]) +2 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([fdo#111615]) +5 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#4087] / [i915#7213])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#3742])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#4087]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([fdo#111827])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_chamelium_color@ctm-limited-range.html
    - shard-rkl:          NOTRUN -> [SKIP][195] ([fdo#111827])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#7828]) +2 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#7828]) +4 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#7828]) +4 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#7828]) +6 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@ctm-blue-to-red@pipe-b:
    - shard-rkl:          [PASS][200] -> [SKIP][201] ([i915#4098]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-4/igt@kms_color@ctm-blue-to-red@pipe-b.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_color@ctm-blue-to-red@pipe-b.html

  * igt@kms_content_protection@atomic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [TIMEOUT][202] ([i915#7173])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/igt@kms_content_protection@atomic@pipe-a-dp-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#3299])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-18/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#3116])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@lic:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#6944])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#7118]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_content_protection@type1.html
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#7118])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#3555] / [i915#8814])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#3359]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-128x128:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#1845] / [i915#4098]) +33 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#3555])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#3359])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_edge_walk@256x256-top-bottom:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#4098]) +10 other tests skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_edge_walk@256x256-top-bottom.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#4103])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([fdo#109274] / [i915#5354]) +3 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#3546]) +1 other test skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][217] -> [FAIL][218] ([i915#2346]) +1 other test fail
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
    - shard-apl:          NOTRUN -> [FAIL][219] ([i915#2346])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][220] -> [FAIL][221] ([i915#2346])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#3555]) +4 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg1:          NOTRUN -> [SKIP][223] ([i915#3555] / [i915#3840])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_dsc@dsc-basic.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#3469])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][225] ([fdo#110189] / [i915#3955])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
    - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#3469])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([fdo#109274]) +4 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-snb:          NOTRUN -> [SKIP][228] ([fdo#109271]) +10 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-snb7/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#3637]) +2 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-apl:          NOTRUN -> [SKIP][230] ([fdo#109271]) +74 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([fdo#111825]) +8 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([fdo#111825]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#3637] / [i915#4098]) +10 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#2672]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][235] ([i915#2587] / [i915#2672])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#3555] / [i915#8810])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#2672]) +3 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#2672]) +3 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#5274])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#8708]) +13 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          [PASS][241] -> [SKIP][242] ([i915#1849] / [i915#4098]) +10 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          [PASS][243] -> [FAIL][244] ([i915#6880])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff:
    - shard-dg2:          NOTRUN -> [FAIL][245] ([i915#6880])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#5354]) +14 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][247] ([fdo#111825] / [i915#1825]) +18 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#3458]) +8 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#8708]) +3 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#1825]) +11 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#1849] / [i915#4098]) +15 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
    - shard-dg1:          NOTRUN -> [SKIP][252] ([i915#8708]) +4 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][253] ([fdo#109271]) +37 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#3458]) +7 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#3023]) +7 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_invalid_mode@bad-vsync-end:
    - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#3555] / [i915#4098]) +2 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_invalid_mode@bad-vsync-end.html

  * igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][257] ([i915#9457]) +2 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#4816])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-edp-1:
    - shard-mtlp:         [PASS][259] -> [ABORT][260] ([i915#9414]) +1 other test abort
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-mtlp-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-edp-1.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-edp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
    - shard-apl:          [PASS][261] -> [INCOMPLETE][262] ([i915#180] / [i915#9392])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

  * igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#3582]) +3 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#8821])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_plane_lowres@tiling-y.html
    - shard-mtlp:         NOTRUN -> [SKIP][265] ([i915#3555] / [i915#8821])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#3555]) +10 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#6953] / [i915#8152])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [FAIL][268] ([i915#8292])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#4098] / [i915#6953] / [i915#8152])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#5235]) +19 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#3555] / [i915#4098] / [i915#8152]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#5235]) +10 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#5235]) +1 other test skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#5235]) +19 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][276] ([i915#3555] / [i915#5235])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-apl:          NOTRUN -> [SKIP][277] ([fdo#109271] / [i915#658]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][278] ([fdo#109271] / [i915#658])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][279] ([fdo#111068] / [i915#658]) +2 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
    - shard-dg1:          NOTRUN -> [SKIP][280] ([fdo#111068] / [i915#658])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-rkl:          NOTRUN -> [SKIP][281] ([i915#658])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#658]) +2 other tests skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@primary_mmap_cpu:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#1072]) +3 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_psr@primary_mmap_cpu.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-dg1:          NOTRUN -> [SKIP][284] ([i915#1072] / [i915#4078]) +1 other test skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#1072]) +2 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#5461] / [i915#658])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][287] ([i915#4235] / [i915#5190])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
    - shard-rkl:          NOTRUN -> [SKIP][288] ([fdo#111615] / [i915#5289])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [PASS][289] -> [FAIL][290] ([i915#9196])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  * igt@kms_writeback@writeback-check-output:
    - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#2437])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-rkl:          NOTRUN -> [SKIP][292] ([i915#2437])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_writeback@writeback-fb-id.html
    - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#2437])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][294] ([fdo#109271] / [i915#2437])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@enable-disable@0-rcs0:
    - shard-dg2:          [PASS][295] -> [FAIL][296] ([i915#8724])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg2-6/igt@perf@enable-disable@0-rcs0.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html

  * igt@perf@gen12-group-exclusive-stream-ctx-handle:
    - shard-rkl:          [PASS][297] -> [SKIP][298] ([fdo#109289])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-4/igt@perf@gen12-group-exclusive-stream-ctx-handle.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.html

  * igt@perf@mi-rpc:
    - shard-dg1:          NOTRUN -> [SKIP][299] ([i915#2434])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@perf@mi-rpc.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][300] -> [FAIL][301] ([i915#7484])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-idle@rcs0:
    - shard-mtlp:         [PASS][302] -> [FAIL][303] ([i915#4349]) +1 other test fail
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-mtlp-2/igt@perf_pmu@busy-idle@rcs0.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-7/igt@perf_pmu@busy-idle@rcs0.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][304] ([fdo#112283])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@perf_pmu@event-wait@rcs0.html
    - shard-rkl:          NOTRUN -> [SKIP][305] ([fdo#112283])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][306] ([i915#6806])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@perf_pmu@frequency@gt0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg2:          NOTRUN -> [SKIP][307] ([i915#3291] / [i915#3708]) +1 other test skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@prime_vgem@basic-fence-read.html
    - shard-rkl:          NOTRUN -> [SKIP][308] ([fdo#109295] / [i915#3291] / [i915#3708]) +1 other test skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [PASS][309] -> [SKIP][310] ([fdo#109295] / [fdo#111656] / [i915#3708])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@prime_vgem@coherency-gtt.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][311] ([fdo#109295] / [i915#3708])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][312] ([i915#3708])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@prime_vgem@fence-read-hang.html

  * igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
    - shard-glk:          NOTRUN -> [FAIL][313] ([i915#9583])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
    - shard-apl:          NOTRUN -> [FAIL][314] ([i915#9583])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled:
    - shard-dg2:          NOTRUN -> [FAIL][315] ([i915#9583])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html
    - shard-rkl:          NOTRUN -> [FAIL][316] ([i915#9583])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-signaled.html

  * igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:
    - shard-dg2:          NOTRUN -> [FAIL][317] ([i915#9582])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@syncobj_timeline@invalid-single-wait-available-unsubmitted.html
    - shard-mtlp:         NOTRUN -> [FAIL][318] ([i915#9582])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@syncobj_timeline@invalid-single-wait-available-unsubmitted.html

  * igt@v3d/v3d_get_param@get-bad-param:
    - shard-dg1:          NOTRUN -> [SKIP][319] ([i915#2575]) +4 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-18/igt@v3d/v3d_get_param@get-bad-param.html

  * igt@v3d/v3d_perfmon@destroy-valid-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][320] ([i915#2575]) +5 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@v3d/v3d_perfmon@destroy-valid-perfmon.html

  * igt@v3d/v3d_submit_cl@job-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][321] ([fdo#109315]) +6 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@v3d/v3d_submit_cl@job-perfmon.html

  * igt@v3d/v3d_submit_csd@bad-flag:
    - shard-dg2:          NOTRUN -> [SKIP][322] ([i915#2575]) +6 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@v3d/v3d_submit_csd@bad-flag.html

  * igt@vc4/vc4_create_bo@create-bo-0:
    - shard-dg1:          NOTRUN -> [SKIP][323] ([i915#7711]) +2 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@vc4/vc4_create_bo@create-bo-0.html

  * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
    - shard-rkl:          NOTRUN -> [SKIP][324] ([i915#7711]) +2 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html

  * igt@vc4/vc4_wait_bo@bad-pad:
    - shard-dg2:          NOTRUN -> [SKIP][325] ([i915#7711]) +4 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@vc4/vc4_wait_bo@bad-pad.html

  * igt@vc4/vc4_wait_bo@used-bo-0ns:
    - shard-mtlp:         NOTRUN -> [SKIP][326] ([i915#7711]) +2 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@vc4/vc4_wait_bo@used-bo-0ns.html

  
#### Possible fixes ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [SKIP][327] ([i915#8411]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-4/igt@api_intel_bb@blit-reloc-purge-cache.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [FAIL][329] ([i915#7742]) -> [PASS][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@fbdev@eof:
    - shard-rkl:          [SKIP][331] ([i915#2582]) -> [PASS][332] +1 other test pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@fbdev@eof.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@fbdev@eof.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][333] ([i915#6268]) -> [PASS][334]
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [FAIL][335] ([i915#2842]) -> [PASS][336] +3 other tests pass
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-rkl:          [SKIP][337] ([i915#3281]) -> [PASS][338] +4 other tests pass
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-read-active.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][339] ([i915#5493]) -> [PASS][340]
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          [SKIP][341] ([i915#2527]) -> [PASS][342] +1 other test pass
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@gen9_exec_parse@batch-invalid-length.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][343] ([i915#3743]) -> [PASS][344]
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][345] ([i915#1845] / [i915#4098]) -> [PASS][346] +9 other tests pass
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * {igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs}:
    - shard-rkl:          [SKIP][347] ([i915#4098]) -> [PASS][348] +3 other tests pass
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-dg1:          [INCOMPLETE][349] -> [PASS][350]
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg1-14/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [FAIL][351] ([i915#6880]) -> [PASS][352]
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-rkl:          [SKIP][353] ([i915#1849] / [i915#4098]) -> [PASS][354] +4 other tests pass
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * {igt@kms_pm_rpm@dpms-mode-unset-non-lpsp}:
    - shard-dg2:          [SKIP][355] ([i915#9519]) -> [PASS][356]
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * {igt@kms_pm_rpm@i2c}:
    - shard-rkl:          [SKIP][357] ([fdo#109308]) -> [PASS][358] +1 other test pass
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_pm_rpm@i2c.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_pm_rpm@i2c.html

  * {igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait}:
    - shard-dg1:          [SKIP][359] ([i915#9519]) -> [PASS][360] +2 other tests pass
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_rotation_crc@cursor-rotation-180:
    - shard-dg1:          [DMESG-WARN][361] ([i915#1982]) -> [PASS][362]
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg1-19/igt@kms_rotation_crc@cursor-rotation-180.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_rotation_crc@cursor-rotation-180.html

  * {igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_24bpp}:
    - shard-snb:          [TIMEOUT][363] -> [PASS][364] +1 other test pass
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-snb7/igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_24bpp.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-snb2/igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_24bpp.html

  * {igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state}:
    - shard-apl:          [TIMEOUT][365] -> [PASS][366]
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl4/igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][367] ([IGT#2]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg2-6/igt@kms_sysfs_edid_timing.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][369] ([i915#9196]) -> [PASS][370]
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][371] ([i915#4349]) -> [PASS][372] +3 other tests pass
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [SKIP][373] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][374]
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@prime_vgem@basic-read.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@prime_vgem@basic-read.html

  
#### Warnings ####

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][375] ([i915#7957]) -> [SKIP][376] ([i915#3555])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][377] ([i915#9323]) -> [SKIP][378] ([i915#7957])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][379] ([i915#3555]) -> [SKIP][380] ([i915#7957])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@gem_ccs@block-multicopy-inplace.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][381] ([i915#2842]) -> [SKIP][382] ([i915#9591])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][383] ([i915#3282]) -> [WARN][384] ([i915#2658])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          [SKIP][385] ([i915#2527]) -> [SKIP][386] ([i915#2532])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-4/igt@gen9_exec_parse@bb-oversize.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-rkl:          [SKIP][387] ([i915#1845] / [i915#4098]) -> [SKIP][388] ([i915#5286]) +2 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][389] ([i915#5286]) -> [SKIP][390] ([i915#1845] / [i915#4098]) +3 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][391] ([i915#1845] / [i915#4098]) -> [SKIP][392] ([fdo#111614] / [i915#3638])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][393] ([fdo#111614] / [i915#3638]) -> [SKIP][394] ([i915#1845] / [i915#4098]) +1 other test skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          [SKIP][395] ([fdo#110723]) -> [SKIP][396] ([i915#1845] / [i915#4098]) +3 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-rkl:          [SKIP][397] ([i915#1845] / [i915#4098]) -> [SKIP][398] ([fdo#110723]) +1 other test skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          [SKIP][399] ([fdo#111615]) -> [SKIP][400] ([i915#1845] / [i915#4098])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][401] ([i915#9608]) -> [SKIP][402] ([i915#3555])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_color@deep-color.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][403] ([i915#1845] / [i915#4098]) -> [SKIP][404] ([i915#3116])
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          [SKIP][405] ([i915#7118]) -> [SKIP][406] ([i915#1845] / [i915#4098])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_content_protection@legacy.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][407] ([i915#1845] / [i915#4098]) -> [SKIP][408] ([i915#3555]) +2 other tests skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][409] ([i915#3359]) -> [SKIP][410] ([i915#1845] / [i915#4098])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x170.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          [SKIP][411] ([i915#1845] / [i915#4098]) -> [SKIP][412] ([i915#3359])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][413] ([i915#3555]) -> [SKIP][414] ([i915#1845] / [i915#4098]) +1 other test skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-rkl:          [SKIP][415] ([fdo#111767] / [fdo#111825]) -> [SKIP][416] ([i915#1845] / [i915#4098])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          [SKIP][417] ([fdo#111825]) -> [SKIP][418] ([i915#1845] / [i915#4098]) +3 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - shard-rkl:          [SKIP][419] ([i915#1845] / [i915#4098]) -> [SKIP][420] ([fdo#111825]) +2 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-rkl:          [SKIP][421] ([i915#1845] / [i915#4098]) -> [SKIP][422] ([fdo#111767] / [fdo#111825])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          [SKIP][423] ([i915#1845] / [i915#4098]) -> [SKIP][424] ([i915#4103])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-rkl:          [SKIP][425] ([i915#4103]) -> [SKIP][426] ([i915#1845] / [i915#4098])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          [SKIP][427] ([i915#3555] / [i915#3840]) -> [SKIP][428] ([i915#1845] / [i915#4098])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_dsc@dsc-with-bpc.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][429] ([i915#4098]) -> [SKIP][430] ([i915#3555] / [i915#3840])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][431] ([i915#3955]) -> [SKIP][432] ([fdo#110189] / [i915#3955])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][433] ([fdo#111825]) -> [SKIP][434] ([i915#1849] / [i915#4098])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][435] ([i915#1849] / [i915#4098]) -> [SKIP][436] ([fdo#111825])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          [SKIP][437] ([i915#3023]) -> [SKIP][438] ([i915#1849] / [i915#4098]) +15 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-rkl:          [SKIP][439] ([i915#1849] / [i915#4098]) -> [SKIP][440] ([fdo#111825] / [i915#1825]) +17 other tests skip
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-rkl:          [SKIP][441] ([i915#1849] / [i915#4098]) -> [SKIP][442] ([i915#3023]) +9 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][443] ([i915#5439]) -> [SKIP][444] ([i915#1849] / [i915#4098])
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          [SKIP][445] ([fdo#111825] / [i915#1825]) -> [SKIP][446] ([i915#1849] / [i915#4098]) +25 other tests skip
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          [SKIP][447] ([i915#3555] / [i915#8228]) -> [SKIP][448] ([i915#1845] / [i915#4098])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-2/igt@kms_hdr@bpc-switch-suspend.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [SKIP][449] ([i915#1845] / [i915#4098]) -> [SKIP][450] ([i915#3555] / [i915#8228]) +1 other test skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-rkl-5/igt@kms_hdr@static-toggle.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_hdr@static-toggle.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
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
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
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
  [i915#3582]: https://gitlab.freedesktop.org/drm/intel/issues/3582
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3639]: https://gitlab.freedesktop.org/drm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/index.html

--===============7771493610025236465==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Use int for entry setup frames=
</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/126325/">https://patchwork.freedesktop.org/series/126325/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126325v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13868_full -&gt; Patchwork_126325v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126325v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_126325v1_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
126325v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_whisper@basic-fds-forked-all:<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-1/igt@gem_exec_whisper@basic-fds-forked-all.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_126325v1/shard-rkl-2/igt@gem_exec_whisper@basic-fds-forked-all.html">INCOM=
PLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic}:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-tglu-3/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_opt=
imistic.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_126325v1/shard-tglu-8/igt@drm_buddy@drm_buddy@drm_test_budd=
y_alloc_optimistic.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pathological}:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-snb5/igt@drm_buddy@drm_buddy@drm_tes=
t_buddy_alloc_pathological.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid}:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-snb6/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdli=
ne_invalid.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_126325v1/shard-snb6/igt@kms_selftest@drm_cmdline_parser@=
drm_test_cmdline_invalid.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_res_bpp_refresh_fo=
rce_on}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg2-1/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdl=
ine_res_bpp_refresh_force_on.html">PASS</a> -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_selftest@=
drm_cmdline_parser@drm_test_cmdline_res_bpp_refresh_force_on.html">TIMEOUT<=
/a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format@drm_test_format_block_height_one_plane}:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-mtlp-8/igt@kms_selftest@drm_format@drm_test_format_bloc=
k_height_one_plane.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_126325v1/shard-mtlp-2/igt@kms_selftest@drm_forma=
t@drm_test_format_block_height_one_plane.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:<=
/p>
<ul>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13868/shard-dg1-18/igt@kms_selftest@drm_plane_helper@drm_test_check_=
invalid_plane_state.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-18/igt@kms_selftest@drm_plan=
e_helper@drm_test_check_invalid_plane_state.html">TIMEOUT</a> +1 other test=
 timeout</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-apl2/igt@kms_selftest@drm_plane_helpe=
r@drm_test_check_invalid_plane_state.html">TIMEOUT</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126325v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13868/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13868/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13868/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/sha=
rd-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13868/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl1/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl1/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13868/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13868/shard-apl1/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868=
/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13868/shard-apl2/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-ap=
l2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl3/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3868/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13868/shard-apl4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shard-apl4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13868/shar=
d-apl4/boot.html">PASS</a>) ([i915#8293]) -&gt; (<a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/sh=
ard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126325v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6325v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126325v1/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126325v1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/sh=
ard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126325v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6325v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126325v1/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126325v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/sh=
ard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126325v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6325v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126325v1/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126325v1/shard-apl1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@api_intel_bb@crc32.html">SK=
IP</a> ([i915#6230])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@api_intel_bb@crc32.html">S=
KIP</a> ([i915#6230])</p>
</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-hang@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@drm_fdinfo@busy-hang@rcs0=
.html">SKIP</a> ([i915#8414]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@ccs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@drm_fdinfo@busy@ccs0.html"=
>SKIP</a> ([i915#8414]) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@pan:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@fbdev@pan.html">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@fb=
dev@pan.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_basic@multigpu-create-c=
lose.html">SKIP</a> ([i915#7697])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> ([i915#7697])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> ([i915#6335])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard=
-dg2-10/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> ([i915#9561])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_ctx_persistence@engine=
s-hang@bcs0.html">SKIP</a> ([i915#6252])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_ctx_sseu@invalid-sseu.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
80">i915#280</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
280">i915#280</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-tglu-3/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-tgl=
u-10/igt@gem_eio@hibernate.html">ABORT</a> ([i915#7975] / [i915#8213] / [i9=
15#8398])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_exec_balancer@bonded-f=
alse-hang.html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_exec_balancer@bonded-=
sync.html">SKIP</a> ([i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_exec_balancer@noheartb=
eat.html">SKIP</a> ([i915#8555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_exec_balancer@parallel=
-out-fence.html">SKIP</a> ([i915#4525]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-incremental:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@gem_exec_capture@many-4k-i=
ncremental.html">FAIL</a> ([i915#9606])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_exec_endless@dispatch@=
rcs0.html">TIMEOUT</a> ([i915#3778] / [i915#7016])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@gem_exec_fair@basic-none-so=
lo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6325v1/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_exec_fair@basic-sync.=
html">SKIP</a> ([i915#4473] / [i915#4771])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_exec_fair@basic-throt=
tle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_exec_fair@basic-throttl=
e@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13868/shard-tglu-6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
325v1/shard-tglu-4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>) +1 other test fail</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_exec_fence@submit67.h=
tml">SKIP</a> ([i915#4812]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_exec_flush@basic-wb-p=
ro-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3539">i915#3539</a> / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_exec_flush@basic-wb-ro=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3539">i915#3539</a> / [i915#4852]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@multigpu-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_exec_gttfill@multigpu-=
basic.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_exec_reloc@basic-cpu-=
read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26325v1/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281=
</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@bcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_exec_reloc@basic-scano=
ut@bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm">i915=
#3639</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_exec_reloc@basic-writ=
e-read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@rcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_exec_schedule@deep@rc=
s0.html">SKIP</a> ([i915#4537])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_exec_schedule@preempt=
-queue.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@gem_exec_schedule@preempt-=
queue-chain.html">SKIP</a> ([i915#4537] / [i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-=
devices@lmem0.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@gem_exec_suspend@basic-s4-=
devices@smem.html">ABORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no=
-spare-fences.html">SKIP</a> ([i915#4860])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-apl7/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_lmem_swapping@basic.h=
tml">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@gem_lmem_swapping@random.h=
tml">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-apl1/igt@gem_lmem_swapping@verify.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_madvise@dontneed-befo=
re-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/284">i915#2=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@gem_mmap@short-mmap.html"=
>SKIP</a> ([i915#4083]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_mmap_gtt@cpuset-big-co=
py.html">SKIP</a> ([i915#4077]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_mmap_gtt@fault-concur=
rent.html">SKIP</a> ([i915#4077]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_mmap_gtt@medium-copy-=
xy.html">SKIP</a> ([i915#4077]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_mmap_wc@bad-object.htm=
l">SKIP</a> ([i915#4083]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_mmap_wc@read-write.ht=
ml">SKIP</a> ([i915#4083]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_partial_pwrite_pread@=
reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@gem_partial_pwrite_pread@w=
rites-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3282">i915#3282</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-buffer:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_pxp@create-regular-bu=
ffer.html">SKIP</a> ([i915#4270]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_pxp@regular-baseline-sr=
c-copy-readible.html">SKIP</a> ([i915#4270]) +2 other tests skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> ([i915#4270]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_pxp@verify-pxp-stale-c=
tx-execution.html">SKIP</a> ([i915#4270]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@gem_readwrite@new-obj.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282=
">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-c=
cs-to-y-tiled-mc-ccs.html">SKIP</a> ([i915#8428]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_render_copy@yf-tiled-t=
o-vebox-x-tiled.html">SKIP</a> ([i915#768]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_set_tiling_vs_blt@tiled=
-to-untiled.html">SKIP</a> ([i915#4079])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#4079])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126325v1/shard-rkl-1/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKI=
P</a> ([i915#8411])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes-after-r=
eads.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126325v1/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@writes=
-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@gem_userptr_blits@readonly-=
unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gem_userptr_blits@readonly=
-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3297">i915#3297</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3281">i915#3281</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gem_userptr_blits@vma-merg=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3318">i915#3318</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@gen7_exec_parse@basic-offs=
et.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@load-register-reg:</p>
<ul>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@gen7_exec_parse@load-regis=
ter-reg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>) +1 other test skip</p>
</li>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@gen7_exec_parse@load-regist=
er-reg.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109289">fdo#109289</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@gen9_exec_parse@allowed-all=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2856">i915#2856</a>) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@gen9_exec_parse@allowed-all=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2527">i915#2527</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126325v1/shard-rkl-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527"=
>i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@gen9_exec_parse@bb-secure=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@gen9_exec_parse@secure-ba=
tches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@i915_module_load@load.html"=
>SKIP</a> ([i915#6227])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126325v1/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> ([i915#8489] / [i915#8668])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@i915_pm_freq_mult@media-f=
req@gt1.html">SKIP</a> ([i915#6590]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@i915_pm_rps@min-max-config=
-loaded.html">SKIP</a> ([i915#6621])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-snb7/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-snb2/=
igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#7790])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> ([i915#8437])</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>
<p>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13868/shard-mtlp-7/igt@i915_power@sanity.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-mtlp=
-8/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</p>
</li>
<li>
<p>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13868/shard-rkl-5/igt@i915_power@sanity.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1=
/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@i915_query@test-query-geome=
try-subslices.html">SKIP</a> ([i915#5723])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> ([i915#5723])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> ([i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_addfb_basic@addfb25-fr=
amebuffer-vs-set-tiling.html">SKIP</a> ([i915#4212]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_addfb_basic@addfb25-y=
-tiled-small-legacy.html">SKIP</a> ([i915#5190])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_addfb_basic@basic-x-t=
iled-legacy.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_addfb_basic@framebuff=
er-vs-set-tiling.html">SKIP</a> ([i915#4212])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_big_fb@4-tiled-16bpp-=
rotate-90.html">SKIP</a> ([i915#4538] / [i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-180.html">SKIP</a> ([i915#5286]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_big_fb@linear-8bpp-rot=
ate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_big_fb@x-tiled-16bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_big_fb@x-tiled-64bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-0-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-st=
ride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098]) +9 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-180.html">SKIP</a> ([i915#5190]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126325v1/shard-tglu-9/igt@kms_big_fb@y-tiled=
-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3743=
]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-90.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-r=
otate-90.html">SKIP</a> ([i915#4538] / [i915#5190]) +4 other tests skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_big_fb@yf-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110723">fdo#110723</a>) +2 other tests skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_cdclk@mode-transition-a=
ll-outputs.html">SKIP</a> ([i915#4087] / [i915#7213])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_cdclk@mode-transition-a=
ll-outputs.html">SKIP</a> ([i915#3742])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@p=
ipe-d-hdmi-a-1.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_chamelium_color@ctm-lim=
ited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_chamelium_color@ctm-lim=
ited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_chamelium_edid@hdmi-e=
did-read.html">SKIP</a> ([i915#7828]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_chamelium_hpd@dp-hpd-s=
torm.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd=
.html">SKIP</a> ([i915#7828]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> ([i915#7828]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-blue-to-red@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-4/igt@kms_color@ctm-blue-to-red@pipe-b.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1263=
25v1/shard-rkl-5/igt@kms_color@ctm-blue-to-red@pipe-b.html">SKIP</a> ([i915=
#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-apl7/igt@kms_content_protection@atom=
ic@pipe-a-dp-1.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-18/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_content_protection@li=
c.html">SKIP</a> ([i915#6944])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_content_protection@type=
1.html">SKIP</a> ([i915#7118]) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_content_protection@type=
1.html">SKIP</a> ([i915#7118])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-ons=
creen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3555">i915#3555</a> / [i915#8814])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-128x128:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapi=
d-movement-128x128.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1845">i915#1845</a> / [i915#4098]) +33 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_cursor_crc@cursor-sli=
ding-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-top-bottom:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_edge_walk@256x2=
56-top-bottom.html">SKIP</a> ([i915#4098]) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-v=
s-flipa-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109274">fdo#109274</a> / [i915#5354]) +3 other tests sk=
ip</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-=
vs-flipa-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3546">i915#3546</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13868/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126325v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2346">i915#2346</a>) +1 other test fail</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-apl1/igt@kms_cursor_legacy@flip-vs-cu=
rsor-atomic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2346">i915#2346</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-apl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_126325v1/shard-apl1/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_dsc@dsc-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3469">i9=
15#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
0189">fdo#110189</a> / [i915#3955])</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3469">i915#3469</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109274">fdo#109274</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-snb7/igt@kms_flip@2x-flip-vs-panning=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_flip@2x-flip-vs-wf_vb=
lank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-apl7/igt@kms_flip@2x-plain-flip-fb-r=
ecreate.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +74 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_flip@2x-plain-flip-int=
erruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111825">fdo#111825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_flip@flip-vs-expired-v=
blank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3637">i915#3637</a> / [i915#4098]) +10 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#267=
2</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#25=
87</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / [i915#8810])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) =
+3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_force_connector_basic=
@prune-stale-modes.html">SKIP</a> ([i915#5274])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +13 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracking=
@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / [i915#4098]) +=
10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-=
indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-spr-indfb-onoff.html">FAIL</a> ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bc-2p-pri-indfb-multidraw.html">SKIP</a> ([i915#5354]) +14 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +18 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +8 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +11 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fb=
cpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/1849">i915#1849</a> / [i915#4098]) +15 other test=
s skip</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> ([i915#8708]) +4 other tests skip=
</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +37 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3458">i915#3458</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3023">i915#3023</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_invalid_mode@bad-vsync=
-end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3555">i915#3555</a> / [i915#4098]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_invalid_mode@clock-to=
o-high@pipe-c-edp-1.html">SKIP</a> ([i915#9457]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> ([i915#4816])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-mtlp-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-edp-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126325v1/shard-mtlp-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a=
-edp-1.html">ABORT</a> ([i915#9414]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126325v1/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-=
c-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/180">i915#180</a> / [i915#9392])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_plane_lowres@tiling-n=
one@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3582">i915#3582</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_plane_lowres@tiling-y.h=
tml">SKIP</a> ([i915#8821])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_plane_lowres@tiling-y.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3555">i915#3555</a> / [i915#8821])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_plane_multiple@tiling-=
yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3555">i915#3555</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> ([i915#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-17/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-hdmi-a-4.html">FAIL</a> ([i915#8292])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25.html">SKIP</a> ([i915#4098] / [i915#6953] / [i915#8152=
])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-=
hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html">SKIP</a> ([i915#5=
235]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_plane_scaling@planes-s=
caler-unity-scaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3555">i915#3555</a> / [i915#4098] / [i915#8152]) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-e=
dp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html">SKIP</a> ([i915#5235]=
) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-75.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / [i915#4098] / [i91=
5#6953] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html">SKIP</a> ([i=
915#5235]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> ([i=
915#5235]) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@p=
ipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-5/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> =
/ [i915#5235])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-apl1/igt@kms_psr2_sf@cursor-plane-up=
date-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / [i915#658]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111068">fdo#111068</a> / [i915#658]) +2 other tests skip=
</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111068">fdo#111068</a> / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_psr2_sf@primary-plane-=
update-sf-dmg-area-big-fb.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> ([i915#658]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@kms_psr@primary_mmap_cpu.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_psr@psr2_cursor_rende=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/1072">i915#1072</a> / [i915#4078]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_psr@psr2_sprite_plane_=
onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1072">i915#1072</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> ([i915#5461] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-90.html">SKIP</a> ([i915#4235] / [i915#5190])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / [i915#5289])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126325v1/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak=
@pipe-d-hdmi-a-1.html">FAIL</a> ([i915#9196])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_writeback@writeback-fb-=
id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2437">i915#2437</a>)</p>
</li>
<li>
<p>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-apl7/igt@kms_writeback@writeback-inv=
alid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg2-6/igt@perf@enable-disable@0-rcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/s=
hard-dg2-11/igt@perf@enable-disable@0-rcs0.html">FAIL</a> ([i915#8724])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-exclusive-stream-ctx-handle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-4/igt@perf@gen12-group-exclusive-stream-ctx-handle.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126325v1/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-hand=
le.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@perf@mi-rpc.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#24=
34</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1=
/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> ([i915#7484])<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-mtlp-2/igt@perf_pmu@busy-idle@rcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/sha=
rd-mtlp-7/igt@perf_pmu@busy-idle@rcs0.html">FAIL</a> ([i915#4349]) +1 other=
 test fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@perf_pmu@event-wait@rcs0.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D112=
283">fdo#112283</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@perf_pmu@event-wait@rcs0.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D112=
283">fdo#112283</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> ([i915#6806])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@prime_vgem@basic-fence-read=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3291">i915#3291</a> / [i915#3708]) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@prime_vgem@basic-fence-read=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3291">i915#3291</a> / [i915#3708]) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/sha=
rd-rkl-1/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> / <a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D111656">fdo#111656</a> / [i915=
#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a> / [i915#3708])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signal=
ed:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-glk4/igt@syncobj_timeline@invalid-mu=
lti-wait-all-available-unsubmitted-signaled.html">FAIL</a> ([i915#9583])</l=
i>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-apl7/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted.html">FAIL</a> ([i915#9583])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted-=
signaled:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-6/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i915#958=
3])</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-rkl-7/igt@syncobj_timeline@invalid-mu=
lti-wait-available-unsubmitted-submitted-signaled.html">FAIL</a> ([i915#958=
3])</p>
</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@syncobj_timeline@invalid-si=
ngle-wait-available-unsubmitted.html">FAIL</a> ([i915#9582])</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@syncobj_timeline@invalid-s=
ingle-wait-available-unsubmitted.html">FAIL</a> ([i915#9582])</p>
</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@get-bad-param:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-18/igt@v3d/v3d_get_param@get-bad=
-param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@v3d/v3d_perfmon@destroy-v=
alid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2575">i915#2575</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@job-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-4/igt@v3d/v3d_submit_cl@job-perf=
mon.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-flag:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@v3d/v3d_submit_csd@bad-fla=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_create_bo@create-bo-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@vc4/vc4_create_bo@create-=
bo-0.html">SKIP</a> ([i915#7711]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-invalid-perfmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@vc4/vc4_perfmon@destroy-in=
valid-perfmon.html">SKIP</a> ([i915#7711]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@bad-pad:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-dg2-7/igt@vc4/vc4_wait_bo@bad-pad.ht=
ml">SKIP</a> ([i915#7711]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_bo@used-bo-0ns:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-mtlp-3/igt@vc4/vc4_wait_bo@used-bo-0=
ns.html">SKIP</a> ([i915#7711]) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-4/igt@api_intel_bb@blit-reloc-purge-cache.html">SKI=
P</a> ([i915#8411]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126325v1/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">FAIL</a> ([i915#7742]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_126325v1/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-=
all@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@fbdev@eof.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1=
/igt@fbdev@eof.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 ([i915#6268]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126325v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126325v1/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +3 o=
ther tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-read-active.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i9=
15#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126325v1/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-read-active.html">P=
ASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> ([i915#5493]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126325v1/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@gen9_exec_parse@batch-invalid-length.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i9=
15#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126325v1/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html">P=
ASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> ([i915#3743]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-tglu-4/igt@kms_bi=
g_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-0=
.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y-tile=
d-gen12-rc-ccs.html">SKIP</a> ([i915#4098]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_ccs@pipe-=
a-crc-sprite-planes-basic-y-tiled-gen12-rc-ccs.html">PASS</a> +3 other test=
s pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg1-14/igt@kms_cursor_legacy@cursor-vs-flip-atomic-tran=
sitions-varying-size.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg1-16/igt@kms_cursor_leg=
acy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
indfb-draw-mmap-cpu.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-dg2-1/igt@kms_fron=
tbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-suspend.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i9=
15#1849</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-s=
uspend.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@dpms-mode-unset-non-lpsp}:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SK=
IP</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126325v1/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@i2c}:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_pm_rpm@i2c.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard=
-rkl-6/igt@kms_pm_rpm@i2c.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg1-19/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">SKIP</a> ([i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_126325v1/shard-dg1-13/igt@kms_pm_rpm@modeset-non-lpsp-=
stress-no-wait.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@cursor-rotation-180:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg1-19/igt@kms_rotation_crc@cursor-rotation-180.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126325v1/shard-dg1-16/igt@kms_rotation_crc@cursor-rotation-180=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_format@drm_test_format_min_pitch_one_plane_24bpp}:=
</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-snb7/igt@kms_selftest@drm_format@drm_test_format_min_pi=
tch_one_plane_24bpp.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126325v1/shard-snb2/igt@kms_selftest@drm_for=
mat@drm_test_format_min_pitch_one_plane_24bpp.html">PASS</a> +1 other test =
pass</li>
</ul>
</li>
<li>
<p>{igt@kms_selftest@drm_plane_helper@drm_test_check_plane_state}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-apl4/igt@kms_selftest@drm_plane_helper@drm_test_check_p=
lane_state.html">TIMEOUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126325v1/shard-apl2/igt@kms_selftest@drm_plane_helper=
@drm_test_check_plane_state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg2-6/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1=
/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hd=
mi-a-1.html">FAIL</a> ([i915#9196]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_126325v1/shard-tglu-8/igt@kms_universal_plane@=
cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html">FAIL<=
/a> ([i915#4349]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126325v1/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">=
PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291=
</a> / [i915#3708]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126325v1/shard-rkl-5/igt@prime_vgem@basic-read.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
([i915#7957]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126325v1/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#35=
55</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html">SKIP=
</a> ([i915#9323]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126325v1/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.htm=
l">SKIP</a> ([i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#35=
55</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_126325v1/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> ([=
i915#7957])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26325v1/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> ([i915=
#9591])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
325v1/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#2658</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-4/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
325v1/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2532">i915#2532</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">=
i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb-siz=
e-overflow.html">SKIP</a> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-hflip.html">SKIP</a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_big_fb@4-tiled-=
max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098]) +3 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo=
#111614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126325v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110723">f=
do#110723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126325v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845"=
>i915#1845</a> / [i915#4098]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#=
1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-8bpp-rotate-0=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
110723">fdo#110723</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflo=
w.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111615">fdo#111615</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size=
-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_color@deep-color.html">SKIP</a> ([i915#96=
08]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
6325v1/shard-rkl-6/igt@kms_color@deep-color.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845=
">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_content_protection@legacy.html">SKIP</a> =
([i915#7118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_126325v1/shard-rkl-5/igt@kms_content_protection@legacy.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#18=
45</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i=
915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscre=
en-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3359">i9=
15#3359</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126325v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i=
915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i9=
15#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-5=
12x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
55">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-3=
2x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845">i915#1845</a> / [i915#4098]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111=
767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs=
-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1118=
25">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1845">i915#1845</a> / [i915#4098]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_cursor_legacy@cursorb=
-vs-flipa-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111825">fdo#111825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@kms_cursor_legacy@cursorb=
-vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-1/igt@=
kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SK=
IP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-toggle.html">SKIP</a> ([i915#4103]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_cursor_legacy@=
short-busy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / [=
i915#3840]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126325v1/shard-rkl-5/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [=
i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a=
> ([i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126325v1/shard-rkl-1/igt@kms_dsc@dsc-with-output-formats.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a> / [i915#3840])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> ([i915#3955]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12632=
5v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / [i915#3955])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptra=
ck-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracki=
ng@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptra=
ck-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1849">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3023">=
i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / [i915#4098]) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1849">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_=
frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#11182=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i9=
15#1825</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-m=
map-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1849">i915#1849</a> / [i915#4098]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-6/igt@kms_frontbuffe=
r_tracking@fbcpsr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +9 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html=
">SKIP</a> ([i915#5439]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-=
tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1849">i915#1849</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indf=
b-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126325v1/shard-rkl-5/igt@kms_frontbuffer=
_tracking@psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / [i915#4098=
]) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-2/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a=
> / [i915#8228]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_126325v1/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#18=
45</a> / [i915#4098])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13868/shard-rkl-5/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / [=
i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126325v1/shard-rkl-1/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / [=
i915#8228]) +1 other test skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============7771493610025236465==--
