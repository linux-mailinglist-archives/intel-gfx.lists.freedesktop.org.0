Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0185862252
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Feb 2024 03:31:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5623610ED0E;
	Sat, 24 Feb 2024 02:31:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5332210ED09;
 Sat, 24 Feb 2024 02:31:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9220013310766082910=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Enable_Adaptive_Sync_SDP_Su?=
 =?utf-8?q?pport_for_DP_=28rev10=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mitul Golani" <mitulkumar.ajitkumar.golani@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 24 Feb 2024 02:31:35 -0000
Message-ID: <170874189532.264278.14833804976734292695@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240222121223.2257958-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240222121223.2257958-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============9220013310766082910==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable Adaptive Sync SDP Support for DP (rev10)
URL   : https://patchwork.freedesktop.org/series/126829/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14319_full -> Patchwork_126829v10_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126829v10_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126829v10_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (8 -> 8)
------------------------------

  Additional (1): shard-snb-0 
  Missing    (1): shard-snb 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126829v10_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_mmap_gtt@close-race:
    - shard-rkl:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-7/igt@gem_mmap_gtt@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-2/igt@gem_mmap_gtt@close-race.html

  
New tests
---------

  New tests have been introduced between CI_DRM_14319_full and Patchwork_126829v10_full:

### New IGT tests (56) ###

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - Statuses : 4 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - Statuses : 6 pass(s)
    - Exec time: [0.56, 1.47] s

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - Statuses : 6 pass(s)
    - Exec time: [0.55, 1.31] s

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - Statuses : 5 pass(s)
    - Exec time: [0.52, 1.33] s

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - Statuses : 3 pass(s)
    - Exec time: [0.53, 1.36] s

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - Statuses : 6 pass(s)
    - Exec time: [0.58, 1.48] s

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - Statuses : 6 pass(s)
    - Exec time: [0.50, 1.38] s

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
    - Statuses : 6 pass(s)
    - Exec time: [28.64, 37.73] s

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
    - Statuses : 6 pass(s)
    - Exec time: [29.10, 39.01] s

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - Statuses : 6 pass(s)
    - Exec time: [29.54, 41.55] s

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - Statuses : 6 pass(s)
    - Exec time: [28.62, 37.62] s

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - Statuses : 5 pass(s)
    - Exec time: [29.36, 40.49] s

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - Statuses : 6 pass(s)
    - Exec time: [29.05, 40.70] s

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic:
    - Statuses : 6 pass(s)
    - Exec time: [10.84, 11.30] s

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
    - Statuses : 6 pass(s)
    - Exec time: [10.84, 11.38] s

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:
    - Statuses : 5 pass(s)
    - Exec time: [10.86, 11.21] s

  * igt@kms_cursor_legacy@cursora-vs-flipa-legacy:
    - Statuses : 6 pass(s)
    - Exec time: [10.84, 11.27] s

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - Statuses : 6 pass(s)
    - Exec time: [10.84, 11.32] s

  * igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:
    - Statuses : 4 pass(s)
    - Exec time: [10.86, 11.39] s

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.31] s

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.46] s

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.39] s

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.32] s

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.27] s

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.57] s

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.36] s

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.27] s

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.32] s

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.29] s

  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.30] s

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - Statuses : 1 pass(s) 3 skip(s)
    - Exec time: [0.00, 11.52] s

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.31] s

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - Statuses : 1 pass(s) 3 skip(s)
    - Exec time: [0.00, 11.33] s

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.35] s

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.47] s

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.44] s

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.00, 11.30] s

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - Statuses : 6 pass(s)
    - Exec time: [5.75, 15.96] s

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - Statuses : 6 pass(s)
    - Exec time: [6.03, 16.78] s

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - Statuses : 1 fail(s) 5 pass(s)
    - Exec time: [6.77, 14.47] s

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - Statuses : 6 pass(s)
    - Exec time: [5.70, 16.39] s

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - Statuses : 6 pass(s)
    - Exec time: [6.43, 18.41] s

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - Statuses : 5 pass(s)
    - Exec time: [6.44, 19.34] s

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - Statuses : 5 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - Statuses : 4 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - Statuses : 6 pass(s)
    - Exec time: [0.53, 1.38] s

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
    - Statuses : 6 pass(s)
    - Exec time: [0.53, 1.40] s

  * igt@kms_cursor_legacy@short-flip-after-cursor-toggle:
    - Statuses : 4 pass(s)
    - Exec time: [0.56, 1.35] s

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:
    - Statuses : 4 pass(s)
    - Exec time: [0.53, 1.37] s

  * igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:
    - Statuses : 5 pass(s)
    - Exec time: [0.52, 1.37] s

  * igt@kms_cursor_legacy@short-flip-before-cursor-toggle:
    - Statuses : 6 pass(s)
    - Exec time: [0.53, 1.32] s

  * igt@kms_hdr@invalid-hdr:
    - Statuses : 5 skip(s)
    - Exec time: [0.0, 27.27] s

  * igt@kms_hdr@invalid-metadata-sizes:
    - Statuses : 6 skip(s)
    - Exec time: [0.0, 0.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_126829v10_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-glk:          ([PASS][3], [FAIL][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [FAIL][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) ([i915#8293]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk1/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk1/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk2/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk3/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk3/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk3/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk8/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk8/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk8/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk9/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk9/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk9/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk9/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk9/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk9/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk8/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk5/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk5/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk4/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk4/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk2/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk2/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk2/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk1/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#8411])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@drm_fdinfo@busy-idle-check-all@ccs3:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#8414]) +10 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@drm_fdinfo@busy-idle-check-all@ccs3.html

  * igt@drm_fdinfo@busy@bcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#8414]) +6 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@drm_fdinfo@busy@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][52] -> [FAIL][53] ([i915#7742])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][54] ([i915#3555] / [i915#9323])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][55] ([i915#10137] / [i915#7297])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#7697])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#8562])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([fdo#109314])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#8555])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-stop.html
    - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#8555])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_exec_balancer@bonded-false-hang:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4812])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_exec_balancer@bonded-false-hang.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#4771])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#4771])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#8555])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_capture@many-4k-zero:
    - shard-glk:          NOTRUN -> [FAIL][65] ([i915#9606])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk9/igt@gem_exec_capture@many-4k-zero.html

  * igt@gem_exec_fair@basic-none:
    - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#3539] / [i915#4852])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@gem_exec_fair@basic-none.html
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4473] / [i915#4771])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@gem_exec_fair@basic-none.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3539] / [i915#4852]) +4 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][69] ([i915#2842]) +1 other test fail
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-tglu:         NOTRUN -> [FAIL][70] ([i915#2842]) +5 other tests fail
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-rkl:          [PASS][71] -> [FAIL][72] ([i915#2842])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-sync:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3539]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_exec_fair@basic-sync.html

  * igt@gem_exec_fence@submit67:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4812])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_exec_fence@submit67.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#5107])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#3281]) +3 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_exec_reloc@basic-write-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3281]) +10 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@gem_exec_reloc@basic-write-gtt.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4537] / [i915#4812])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@gem_exec_schedule@preempt-queue-chain.html
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#4812])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4860])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4613])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#4613]) +4 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk5/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][83] -> [TIMEOUT][84] ([i915#5493])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap@short-mmap:
    - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#4083]) +1 other test skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_mmap@short-mmap.html

  * igt@gem_mmap_gtt@flink-race:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4077]) +4 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_mmap_gtt@flink-race.html

  * igt@gem_mmap_gtt@hang:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4077]) +7 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@gem_mmap_gtt@hang.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4083]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_mmap_wc@bad-size.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][89] ([i915#3282])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3282]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pxp@display-protected-crc:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#4270])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4270]) +3 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#5190]) +5 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#8428]) +3 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_gtt:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4079]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_set_tiling_vs_gtt.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3297]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-glk:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3323])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gen7_exec_parse@basic-allocation:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([fdo#109289]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gen7_exec_parse@basic-allocation.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#2527] / [i915#2856])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#2856])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#2856]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#4881])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@i915_fb_tiling.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][103] -> [INCOMPLETE][104] ([i915#9407])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
    - shard-tglu:         NOTRUN -> [WARN][105] ([i915#2681]) +2 other tests warn
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-tglu:         NOTRUN -> [FAIL][106] ([i915#3591])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#6621])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4387])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([fdo#109302])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@i915_query@query-topology-unsupported.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#4212])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#8709]) +7 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#1769] / [i915#3555])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][113] ([fdo#111615] / [i915#5286]) +2 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][114] -> [FAIL][115] ([i915#5138])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([fdo#111614]) +2 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         [PASS][117] -> [FAIL][118] ([i915#3743]) +1 other test fail
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4538] / [i915#5190]) +7 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#4538])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
    - shard-tglu:         NOTRUN -> [SKIP][121] ([fdo#111615]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([fdo#111615]) +3 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#2705])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#2705])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#3742])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#7213]) +3 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html

  * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4087]) +3 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([fdo#111827])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#7828]) +7 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#7828]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_chamelium_hpd@dp-hpd-fast.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#7828]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#3116] / [i915#3299])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#9424]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#8063] / [i915#9433])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#7118])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][136] ([i915#3359])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#3359]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3555]) +2 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([fdo#109274] / [i915#5354]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions (NEW):
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([fdo#111767])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
    - shard-dg1:          NOTRUN -> [SKIP][141] ([fdo#111767] / [fdo#111825])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
    - shard-tglu:         NOTRUN -> [SKIP][142] ([fdo#109274] / [fdo#111767])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size (NEW):
    - shard-glk:          NOTRUN -> [FAIL][143] ([i915#2346])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions (NEW):
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#4103] / [i915#4213])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][145] ([fdo#110189] / [i915#9723])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#9833])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3804])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#1257])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_dp_aux_dev.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#3840])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#3555] / [i915#3840])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#3555] / [i915#3840])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_feature_discovery@display-2x:
    - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#1839])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#1839])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_feature_discovery@display-4x.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([fdo#109274] / [i915#3637]) +2 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#3637]) +3 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
    - shard-dg1:          NOTRUN -> [SKIP][156] ([fdo#111825] / [i915#9934])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_flip@2x-blocking-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([fdo#109274] / [fdo#111767])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([fdo#109274]) +4 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#2672])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#2672]) +2 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#2587] / [i915#2672]) +2 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#2672] / [i915#3555])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render:
    - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#1825]) +8 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render.html
    - shard-dg1:          NOTRUN -> [SKIP][164] ([fdo#111825])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#5354]) +15 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#8708]) +10 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][167] ([fdo#109280]) +12 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#3458]) +16 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#3458])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([fdo#110189]) +13 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][171] ([fdo#109280] / [fdo#111767]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#8708]) +5 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#3555] / [i915#8228]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@invalid-metadata-sizes (NEW):
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#3555] / [i915#8228]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#6953] / [i915#9423])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#9423]) +27 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#9423]) +9 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#5176] / [i915#9423]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#5176] / [i915#9423]) +3 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#5235]) +9 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#5235]) +3 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#5235]) +19 other tests skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#5235] / [i915#9423]) +7 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#9685])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#4281])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#9519])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#9519]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][188] -> [SKIP][189] ([i915#9519]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#6524] / [i915#6805]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-cursor-plane-update-sf@psr2-pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#9808]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_psr2_sf@fbc-cursor-plane-update-sf@psr2-pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][192] ([fdo#110189]) +4 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][193] ([fdo#109271] / [fdo#110189]) +5 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#9732]) +13 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@pr-cursor-plane-move:
    - shard-mtlp:         NOTRUN -> [SKIP][195] ([i915#9688]) +3 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_psr@pr-cursor-plane-move.html

  * igt@kms_psr@psr2-primary-render:
    - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#9732]) +8 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_psr@psr2-primary-render.html

  * igt@kms_psr@psr2-sprite-plane-onoff:
    - shard-glk:          NOTRUN -> [SKIP][197] ([fdo#109271]) +218 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk5/igt@kms_psr@psr2-sprite-plane-onoff.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#4235])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#4235])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#3555]) +4 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@kms_scaling_modes@scaling-mode-full.html
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#3555])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - shard-tglu:         [PASS][202] -> [FAIL][203] ([i915#9196])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][204] ([i915#9196])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#2437] / [i915#9412])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
    - shard-glk:          NOTRUN -> [SKIP][206] ([fdo#109271] / [i915#2437]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk1/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf_pmu@busy-double-start@ccs0:
    - shard-mtlp:         [PASS][207] -> [FAIL][208] ([i915#4349])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html

  * igt@perf_pmu@frequency@gt0:
    - shard-dg2:          NOTRUN -> [FAIL][209] ([i915#6806])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@perf_pmu@frequency@gt0.html

  * igt@perf_pmu@module-unload:
    - shard-dg2:          NOTRUN -> [FAIL][210] ([i915#5793])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@perf_pmu@module-unload.html

  * igt@prime_udl:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([fdo#109291])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@prime_udl.html

  * igt@prime_vgem@basic-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#3708] / [i915#4077])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@coherency-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#3708] / [i915#4077])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-read-hang:
    - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#3708]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#9917])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@v3d/v3d_perfmon@create-two-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#2575]) +6 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@v3d/v3d_perfmon@create-two-perfmon.html

  * igt@v3d/v3d_wait_bo@map-bo-0ns:
    - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#2575]) +4 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@v3d/v3d_wait_bo@map-bo-0ns.html

  * igt@v3d/v3d_wait_bo@used-bo-0ns:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([fdo#109315] / [i915#2575]) +6 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@v3d/v3d_wait_bo@used-bo-0ns.html
    - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#2575])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@v3d/v3d_wait_bo@used-bo-0ns.html

  * igt@vc4/vc4_mmap@mmap-bad-handle:
    - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#7711])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@vc4/vc4_mmap@mmap-bad-handle.html
    - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#2575]) +1 other test skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@vc4/vc4_mmap@mmap-bad-handle.html

  * igt@vc4/vc4_purgeable_bo@free-purged-bo:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#7711]) +2 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@vc4/vc4_purgeable_bo@free-purged-bo.html

  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
    - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#7711]) +5 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@most-busy-check-all@rcs0:
    - shard-rkl:          [FAIL][224] ([i915#7742]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][226] ([i915#7297]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][228] ([i915#6268]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglu:         [FAIL][230] ([i915#2842]) -> [PASS][231] +1 other test pass
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-rkl:          [FAIL][232] ([i915#2842]) -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][234] ([i915#2842]) -> [PASS][235] +2 other tests pass
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_hangman@gt-engine-error@rcs0:
    - shard-tglu:         [TIMEOUT][236] -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-tglu-7/igt@i915_hangman@gt-engine-error@rcs0.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@i915_hangman@gt-engine-error@rcs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [ABORT][238] ([i915#9820]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         [INCOMPLETE][240] ([i915#10137] / [i915#9200]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [ABORT][242] ([i915#10131] / [i915#9697]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-tglu:         [SKIP][244] -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-tglu-7/igt@i915_pm_rpm@gem-idle.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@i915_pm_rpm@gem-idle.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][246] ([i915#5138]) -> [PASS][247]
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][248] ([i915#3743]) -> [PASS][249] +1 other test pass
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions (NEW):
    - shard-glk:          [FAIL][250] ([i915#2346]) -> [PASS][251]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][252] ([i915#9295]) -> [PASS][253]
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][254] ([i915#9519]) -> [PASS][255] +1 other test pass
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][256] ([i915#9519]) -> [PASS][257] +1 other test pass
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][258] ([i915#9196]) -> [PASS][259]
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html

  
#### Warnings ####

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [DMESG-WARN][260] ([i915#4936] / [i915#5493]) -> [TIMEOUT][261] ([i915#5493])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [ABORT][262] ([i915#9820]) -> [INCOMPLETE][263] ([i915#10137] / [i915#9820] / [i915#9849])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-tglu:         [TIMEOUT][264] -> [SKIP][265] ([fdo#111614])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-tglu-7/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][266] ([fdo#110189] / [i915#3955]) -> [SKIP][267] ([i915#3955])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][268] ([i915#4070] / [i915#4816]) -> [SKIP][269] ([i915#4816])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [SKIP][270] ([i915#3361]) -> [FAIL][271] ([i915#9295])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-rkl-6/igt@kms_pm_dc@dc6-dpms.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][272] ([i915#9351]) -> [INCOMPLETE][273] ([i915#5493])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
  [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5107]: https://gitlab.freedesktop.org/drm/intel/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8063]: https://gitlab.freedesktop.org/drm/intel/issues/8063
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9407]: https://gitlab.freedesktop.org/drm/intel/issues/9407
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/intel/issues/9433
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
  [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9697]: https://gitlab.freedesktop.org/drm/intel/issues/9697
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9833]: https://gitlab.freedesktop.org/drm/intel/issues/9833
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934


Build changes
-------------

  * Linux: CI_DRM_14319 -> Patchwork_126829v10

  CI-20190529: 20190529
  CI_DRM_14319: 5dfa3c2da4803652582408bfb3c529970735f594 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7724: a7c03f7521f88f74fdf17c744fd847a775f9951f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126829v10: 5dfa3c2da4803652582408bfb3c529970735f594 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/index.html

--===============9220013310766082910==
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
<tr><td><b>Series:</b></td><td>Enable Adaptive Sync SDP Support for DP (rev=
10)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/126829/">https://patchwork.freedesktop.org/series/126829/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126829v10/index.html">https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_126829v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14319_full -&gt; Patchwork_126829v=
10_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126829v10_full absolutely =
need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_126829v10_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>Additional (1): shard-snb-0 <br />
  Missing    (1): shard-snb </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
126829v10_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_mmap_gtt@close-race:<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-7/igt@gem_mmap_gtt@close-race.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/sha=
rd-rkl-2/igt@gem_mmap_gtt@close-race.html">INCOMPLETE</a> +1 other test inc=
omplete</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_14319_full and Patchwork_1=
26829v10_full:</p>
<h3>New IGT tests (56)</h3>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.56, 1.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.55, 1.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.52, 1.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.53, 1.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.58, 1.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.50, 1.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [28.64, 37.73] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [29.10, 39.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [29.54, 41.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [28.62, 37.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [29.36, 40.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [29.05, 40.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [10.84, 11.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [10.84, 11.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [10.86, 11.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-legacy:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [10.84, 11.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-toggle:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [10.84, 11.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-varying-size:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [10.86, 11.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.29] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>Statuses : 1 pass(s) 3 skip(s)</li>
<li>Exec time: [0.00, 11.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>Statuses : 1 pass(s) 3 skip(s)</li>
<li>Exec time: [0.00, 11.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 11.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.75, 15.96] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [6.03, 16.78] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>Statuses : 1 fail(s) 5 pass(s)</li>
<li>Exec time: [6.77, 14.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.70, 16.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [6.43, 18.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [6.44, 19.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>Statuses : 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.53, 1.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying=
-size:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.53, 1.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-toggle:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.56, 1.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.53, 1.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varyin=
g-size:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.52, 1.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-toggle:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.53, 1.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0, 27.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126829v10_full that come from kn=
own issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14319/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk1/boot.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14319/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14319/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/sha=
rd-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14319/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14319/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14319/shard-glk4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14319/shard-glk5/boot.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-gl=
k8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14319/shard-glk9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4319/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14319/shard-glk9/boot.html">PASS</a>) (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; (<a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-=
glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_126829v10/shard-glk9/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk9/boot.html">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1268=
29v10/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126829v10/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk8=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_126829v10/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk7/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v1=
0/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_126829v10/shard-glk5/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk5/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126829v10/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk4/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/sha=
rd-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_126829v10/shard-glk4/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26829v10/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_126829v10/shard-glk3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-gl=
k2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_126829v10/shard-glk2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829=
v10/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_126829v10/shard-glk1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-glk1/bo=
ot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@api_intel_bb@blit-reloc-k=
eep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-idle-check-all@ccs3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@drm_fdinfo@busy-idle-chec=
k-all@ccs3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8414">i915#8414</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy@bcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@drm_fdinfo@busy@bcs0.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/841=
4">i915#8414</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126829v10/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742=
">i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@gem_ccs@block-copy-compr=
essed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-1/igt@gem_ccs@suspend-resume@xm=
ajor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@gem_create@create-ext-se=
t-pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@gem_ctx_persistence@hear=
tbeat-stop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8555">i915#8555</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@gem_ctx_persistence@hear=
tbeat-stop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-false-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_exec_balancer@bonded-=
false-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_exec_balancer@bonded=
-pair.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_exec_balancer@bonded-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_exec_balancer@noheart=
beat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@many-4k-zero:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-glk9/igt@gem_exec_capture@many-4k-z=
ero.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9606">i915#9606</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@gem_exec_fair@basic-none=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4852">i915#4852</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@gem_exec_fair@basic-none=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4473">i915#4473</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_exec_fair@basic-none-=
share.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4852">i915#4852</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-glk2/igt@gem_exec_fair@basic-none-s=
hare@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@gem_exec_fair@basic-none=
@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2842">i915#2842</a>) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
26829v10/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_exec_fair@basic-sync.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit67:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_exec_fence@submit67.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_exec_params@rsvd2-di=
rt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_exec_reloc@basic-wc-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@gem_exec_reloc@basic-writ=
e-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3281">i915#3281</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@gem_exec_schedule@preemp=
t-queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4812">i915#4812</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@gem_exec_schedule@preemp=
t-queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@gem_fenced_exec_thrash@2-=
spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_lmem_swapping@heavy-=
verify-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-glk5/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
829v10/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_mmap@short-mmap.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083=
">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_mmap_gtt@flink-race.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@gem_mmap_gtt@hang.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077">i=
915#4077</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_mmap_wc@bad-size.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083=
">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_partial_pwrite_pread=
@write-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_partial_pwrite_pread@=
writes-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_pxp@display-protecte=
d-crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_pxp@reject-modify-con=
text-protection-off-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4270">i915#4270</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_render_copy@yf-tiled-=
mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5190">i915#5190</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gem_render_copy@yf-tiled=
-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8428">i915#8428</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gem_set_tiling_vs_gtt.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-glk1/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allocation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gen7_exec_parse@basic-all=
ocation.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@gen9_exec_parse@allowed-=
single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@gen9_exec_parse@basic-re=
jected-ctx-param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@gen9_exec_parse@bb-start-=
param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@i915_fb_tiling.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i915=
#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-dg2-2/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
829v10/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9407">i915#9=
407</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@i915_pm_rc6_residency@rc=
6-idle@gt0-bcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2681">i915#2681</a>) +2 other tests warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@i915_pm_rc6_residency@rc=
6-idle@gt0-vcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3591">i915#3591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@i915_pm_rps@basic-api.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/662=
1">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@i915_query@query-topology=
-unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-r=
c-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_async_flips@async-fl=
ip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +7=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_atomic_transition@pl=
ane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_big_fb@4-tiled-max-h=
w-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +2 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_126829v10/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_big_fb@x-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111614">fdo#111614</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-tglu-4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_126829v10/shard-tglu-10/igt@kms_big_fb@x-tiled-max=
-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other test f=
ail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5190">i915#5190</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-=
hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@kms_big_fb@yf-tiled-max-=
hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-=
hw-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_big_joiner@2x-modese=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_big_joiner@invalid-mo=
deset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_cdclk@mode-transitio=
n-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-2/igt@kms_cdclk@mode-transition=
@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-10/igt@kms_cdclk@plane-scaling@=
pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4087">i915#4087</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_chamelium_color@ctm-=
max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_chamelium_frames@hdmi=
-crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_chamelium_hpd@dp-hpd=
-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_chamelium_hpd@hdmi-h=
pd-with-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_content_protection@d=
p-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_content_protection@li=
c-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_content_protection@m=
ei-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8063">i915#8063</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9433">i915#9433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_content_protection@sr=
m.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_cursor_crc@cursor-ra=
ndom-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_cursor_crc@cursor-rap=
id-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3359">i915#3359</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_cursor_legacy@2x-long=
-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions (NEW):</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@kms_cursor_legacy@cursor=
b-vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_cursor_legacy@cursor=
b-vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@kms_cursor_legacy@cursor=
b-vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size (NE=
W):</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-glk9/igt@kms_cursor_legacy@flip-vs-=
cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions (=
NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-=
ioctl@a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_dp_aux_dev.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1257">i91=
5#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_dsc@dsc-with-output-=
formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_feature_discovery@di=
splay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_feature_discovery@di=
splay-4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@kms_flip@2x-blocking-abs=
olute-wf_vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3637">i915#3637</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@kms_flip@2x-blocking-abs=
olute-wf_vblank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3637">i915#3637</a>) +3 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_flip@2x-blocking-abs=
olute-wf_vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_flip@2x-flip-vs-block=
ing-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111767">fdo#111767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_flip@2x-flip-vs-modes=
et-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109274">fdo#109274</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_flip_scaled_crc@flip=
-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i9=
15#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_flip_scaled_crc@flip=
-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@kms_flip_scaled_crc@flip=
-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i=
915#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +8 other tests =
skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +15 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +10 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_frontbuffer_tracking=
@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +12 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3458">i915#3458</a>) +16 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_frontbuffer_tracking=
@psr-1p-primscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_frontbuffer_tracking=
@psr-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +13 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_frontbuffer_tracking=
@psr-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111767">fdo#111767</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_frontbuffer_tracking=
@psr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8708">i915#8708</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_hdr@bpc-switch-dpms.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes (NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_plane_scaling@intel-m=
ax-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-h=
dmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-12/igt@kms_plane_scaling@plane-=
downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +2=
7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hd=
mi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-rkl-1/igt@kms_plane_scaling@plane-s=
caler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +9=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-rkl-7/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_plane_scaling@plane-=
scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#942=
3</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-rkl-1/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +9=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-=
hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_plane_scaling@planes=
-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-1.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +=
3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_plane_scaling@planes=
-downscale-factor-0-25@pipe-c-hdmi-a-4.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +19 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-2/igt@kms_plane_scaling@planes-=
unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</=
a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_pm_dc@dc6-psr.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9685">=
i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281"=
>i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-s=
tress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_pm_rpm@modeset-non-l=
psp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9519">i915#9519</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126829v10/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9519">i915#9519</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6805">i915#6805</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-cursor-plane-update-sf@psr2-pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_psr2_sf@fbc-cursor-p=
lane-update-sf@psr2-pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/9808">i915#9808</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_psr2_sf@fbc-overlay-p=
lane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-glk1/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D110189">fdo#110189</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_psr@pr-cursor-mmap-cp=
u.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_psr@pr-cursor-plane-=
move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/9688">i915#9688</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-7/igt@kms_psr@psr2-primary-ren=
der.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-plane-onoff:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-glk5/igt@kms_psr@psr2-sprite-plane-=
onoff.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +218 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@kms_rotation_crc@primary=
-rotation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@kms_rotation_crc@sprite-r=
otation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@kms_scaling_modes@scalin=
g-mode-full.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@kms_scaling_modes@scalin=
g-mode-full.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126829v10/shard-tglu-3/igt@kms_universal_plane@cursor-fb-lea=
k@pipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-rkl-6/igt@kms_universal_plane@curso=
r-fb-leak@pipe-b-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@kms_writeback@writeback-=
fb-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/9412">i915#9412</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-glk1/igt@kms_writeback@writeback-fb=
-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/2437">i915#2437</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-mtlp-5/igt@perf_pmu@busy-double-start@ccs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1268=
29v10/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)=
</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@perf_pmu@frequency@gt0.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/68=
06">i915#6806</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@perf_pmu@module-unload.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/57=
93">i915#5793</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_udl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-6/igt@prime_udl.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109291">fdo#109=
291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@prime_vgem@basic-gtt.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/370=
8">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-5/igt@prime_vgem@coherency-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@prime_vgem@fence-read-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-two-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@v3d/v3d_perfmon@create-tw=
o-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@map-bo-0ns:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@v3d/v3d_wait_bo@map-bo-0=
ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@used-bo-0ns:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@v3d/v3d_wait_bo@used-bo-=
0ns.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2575">i915#2575</a>) +6 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@v3d/v3d_wait_bo@used-bo-=
0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_mmap@mmap-bad-handle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg1-18/igt@vc4/vc4_mmap@mmap-bad-ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@vc4/vc4_mmap@mmap-bad-ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@free-purged-bo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-1/igt@vc4/vc4_purgeable_bo@fre=
e-purged-bo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-dg2-6/igt@vc4/vc4_purgeable_bo@mark=
-unpurgeable-check-retained.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7711">i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i91=
5#7742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_126829v10/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7297">i915#7297</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-dg2-1/igt@gem_ccs@suspe=
nd-resume@xmajor-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
126829v10/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_126829v10/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html">=
PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_126829v10/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_126829v10/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a>=
 +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-engine-error@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-tglu-7/igt@i915_hangman@gt-engine-error@rcs0.html">TIME=
OUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_126829v10/shard-tglu-6/igt@i915_hangman@gt-engine-error@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9820">i915#9820</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_126829v10/shard-dg1-18/igt@i915_module_load@reload-with-fau=
lt-injection.html">PASS</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-tglu-10/igt@i915_module_load@reload-with-fault-injectio=
n.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/10137">i915#10137</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9200">i915#9200</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-4/igt@i915_module_load@r=
eload-with-fault-injection.html">PASS</a></li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/10131">i915#10131</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9697">i915#9697</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_126829v10/shard-mtlp-6/igt@i915_module_load@reload-=
with-fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-idle:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-tglu-7/igt@i915_pm_rpm@gem-idle.html">SKIP</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard=
-tglu-6/igt@i915_pm_rpm@gem-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_126829v10/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stri=
de-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_126829v10/shard-tglu-2/igt@kms_big_fb@y-=
tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">PASS</a> +1 other=
 test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions (NEW):</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_126829v10/shard-glk3/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9295">i915#9295</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10=
/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">=
i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_126829v10/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126=
829v10/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +1 other =
test pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hd=
mi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_126829v10/shard-tglu-3/igt@kms_universal_plane@cursor-=
fb-leak@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936">=
i915#4936</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_126829v10/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.ht=
ml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.=
html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9820">i915#9820</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_126829v10/shard-dg2-6/igt@i915_module_load@reload-with-fault=
-injection.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/10137">i915#10137</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/9820">i915#9820</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-tglu-7/igt@kms_big_fb@linear-16bpp-rotate-90.html">TIME=
OUT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_126829v10/shard-tglu-6/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo#11=
1614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_126829v10/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_126829v10/shard-rkl-4/igt@kms_multipipe_modeset@basic=
-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-rkl-6/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126829v10/sh=
ard-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/9295">i915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14319/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">CRASH</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9351">i915#9351</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_126829v10/shard-dg2-10/igt@prime_mmap@test_apertu=
re_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14319 -&gt; Patchwork_126829v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14319: 5dfa3c2da4803652582408bfb3c529970735f594 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7724: a7c03f7521f88f74fdf17c744fd847a775f9951f @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126829v10: 5dfa3c2da4803652582408bfb3c529970735f594 @ git://ano=
ngit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============9220013310766082910==--
