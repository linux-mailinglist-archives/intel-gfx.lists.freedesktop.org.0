Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE777995DEC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 04:50:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0EF310E247;
	Wed,  9 Oct 2024 02:50:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A069E10E071;
 Wed,  9 Oct 2024 02:50:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1547698787489771048=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/display=3A_Fuse_bi?=
 =?utf-8?q?t_for_power_management_disable_removed?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 09 Oct 2024 02:50:24 -0000
Message-ID: <172844222464.1206870.11708468648518567451@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241004203540.3884792-1-clinton.a.taylor@intel.com>
In-Reply-To: <20241004203540.3884792-1-clinton.a.taylor@intel.com>
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

--===============1547698787489771048==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fuse bit for power management disable removed
URL   : https://patchwork.freedesktop.org/series/139583/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15488_full -> Patchwork_139583v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139583v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139583v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  Additional (1): shard-dg2-set2 
  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139583v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][1] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-14/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-7/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@kms_flip@modeset-vs-vblank-race:
    - shard-dg1:          [PASS][3] -> [FAIL][4] +1 other test fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-14/igt@kms_flip@modeset-vs-vblank-race.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_flip@modeset-vs-vblank-race.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15488_full and Patchwork_139583v1_full:

### New IGT tests (71) ###

  * igt@kms_universal_plane@cursor-fb-leak:
    - Statuses : 7 pass(s)
    - Exec time: [0.33, 4.40] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.10, 0.52] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.44] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.47] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.38] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.23, 0.37] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.48, 0.50] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.42] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.40] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.38, 0.50] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.45] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.42] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.34] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.39] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.44] s

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.43] s

  * igt@kms_universal_plane@disable-primary-vs-flip:
    - Statuses : 6 pass(s)
    - Exec time: [0.61, 8.50] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.58] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.36, 1.00] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.51] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.31] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.25, 0.38] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.42, 0.72] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.30] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.26, 0.72] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.42] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.31] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.26] s

  * igt@kms_universal_plane@disable-primary-vs-flip@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.42] s

  * igt@kms_universal_plane@universal-plane-functional:
    - Statuses : 4 pass(s)
    - Exec time: [3.80, 17.35] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.87] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-a-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [1.89, 2.71] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.07] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [4.61] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.91] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.46] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [1.87] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [4.43] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-c-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.49] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [1.95] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [4.43] s

  * igt@kms_universal_plane@universal-plane-functional@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [1.92] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.40] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.56] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.26, 0.78] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.55] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.29] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.24, 0.41] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.59] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.35] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.27] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-c-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.24, 0.52] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.41] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.28] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-d-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.23, 0.36] s

  * igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.42] s

  * igt@kms_universal_plane@universal-plane-sanity:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 4.44] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.57] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.28, 0.78] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.58] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.32] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.23, 0.36] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.50] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.36] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.27] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.23, 0.50] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.38] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.28] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.25] s

  * igt@kms_universal_plane@universal-plane-sanity@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.38] s

  

Known issues
------------

  Here are the changes found in Patchwork_139583v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#9318])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.html

  * igt@drm_fdinfo@busy-check-all@bcs0:
    - shard-dg1:          NOTRUN -> [SKIP][6] ([i915#8414]) +11 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@drm_fdinfo@busy-check-all@bcs0.html

  * igt@fbdev@nullptr:
    - shard-dg2:          [PASS][7] -> [SKIP][8] ([i915#2582])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@fbdev@nullptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@fbdev@nullptr.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][9] -> [INCOMPLETE][10] ([i915#7297])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#7697])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#8562])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#8555])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#280])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_capture@capture-invisible@smem0:
    - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#6334]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@gem_exec_capture@capture-invisible@smem0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#2842]) +1 other test fail
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-rkl:          [PASS][18] -> [FAIL][19] ([i915#2842]) +1 other test fail
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg1:          NOTRUN -> [SKIP][20] ([i915#3539])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-18/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_reloc@basic-wc-read:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#3281]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@gem_exec_reloc@basic-wc-read.html

  * igt@gem_exec_reloc@basic-wc-read-active:
    - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#3281]) +3 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_exec_reloc@basic-wc-read-active.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#4860])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#4613]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@verify:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#4613])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@gem_lmem_swapping@verify.html

  * igt@gem_mmap@basic:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#4083])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@gem_mmap@basic.html
    - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#4083]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@gem_mmap@basic.html
    - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4083])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#4077])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_mmap_gtt@basic.html

  * igt@gem_pread@self:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#3282])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@gem_pread@self.html

  * igt@gem_pread@snoop:
    - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#3282]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_pread@snoop.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#4270]) +2 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@reject-modify-context-protection-off-1:
    - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#4270])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_pxp@reject-modify-context-protection-off-1.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4270])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
    - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#4270])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4270])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-glk:          NOTRUN -> [SKIP][37] +19 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk2/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][38] ([i915#3297]) +2 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#3297]) +1 other test skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#3297] / [i915#4880])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#2527])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#2527] / [i915#2856]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][43] -> [ABORT][44] ([i915#9820])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglu:         NOTRUN -> [ABORT][45] ([i915#10887] / [i915#9820])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html
    - shard-mtlp:         [PASS][46] -> [ABORT][47] ([i915#10131] / [i915#10887] / [i915#9820])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#7091])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
    - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#8436])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [PASS][50] -> [INCOMPLETE][51] ([i915#7790])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-snb4/igt@i915_pm_rps@reset.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-snb1/igt@i915_pm_rps@reset.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#7707])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#3826])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#8709]) +3 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg2:          [PASS][55] -> [FAIL][56] ([i915#5956])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][57] ([i915#5956])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#4538] / [i915#5286]) +2 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][59] -> [FAIL][60] ([i915#5138])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#5286])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#5286]) +3 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#3638])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-dg2:          [PASS][64] -> [SKIP][65] ([i915#9197]) +16 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][66]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#4538]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#12313])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#6095]) +149 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#10307] / [i915#6095]) +147 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#6095]) +36 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#6095]) +44 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#12313]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition@pipe-b-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#11616] / [i915#7213]) +3 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#3742])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#7828])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-3/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#7828]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#7828])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#7828]) +5 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_color@deep-color:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#3555] / [i915#9979])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][81] ([i915#7173]) +2 other tests timeout
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#6944] / [i915#9424])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#11453])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#3555]) +2 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#3555]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#3555] / [i915#8814])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3555])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#3555]) +4 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#2346])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#9723])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#8588])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_draw_crc@draw-method-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#8812])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_draw_crc@draw-method-mmap-gtt.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#3840])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-14/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#3555] / [i915#3840]) +1 other test skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#3469])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][97] -> [FAIL][98] ([i915#2122]) +1 other test fail
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-snb4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#3637]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#3637] / [i915#3966])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#9934]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-rkl:          NOTRUN -> [SKIP][102] +6 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@blocking-wf_vblank:
    - shard-rkl:          [PASS][103] -> [FAIL][104] ([i915#11961] / [i915#2122])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-5/igt@kms_flip@blocking-wf_vblank.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank.html

  * igt@kms_flip@blocking-wf_vblank@a-hdmi-a2:
    - shard-rkl:          [PASS][105] -> [FAIL][106] ([i915#11961])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-5/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a3:
    - shard-dg2:          [PASS][107] -> [FAIL][108] ([i915#79]) +1 other test fail
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a3.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-dg2:          [PASS][109] -> [SKIP][110] ([i915#5354]) +8 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_flip@flip-vs-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#2672] / [i915#3555])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#2672]) +3 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#2587] / [i915#2672] / [i915#3555])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#2587] / [i915#2672]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#2672] / [i915#3555])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#2672])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
    - shard-dg2:          [PASS][117] -> [SKIP][118] ([i915#3555]) +1 other test skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#2672] / [i915#3555]) +2 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#2587] / [i915#2672]) +2 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][121] +15 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
    - shard-dg2:          [PASS][122] -> [FAIL][123] ([i915#6880])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3458]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#1825]) +9 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#3023]) +5 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][127] +59 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#3458]) +6 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#8708]) +8 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#5354])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff.html
    - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#1825])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_hdr@static-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#3555] / [i915#8228]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#10656])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@kms_joiner@invalid-modeset-big-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#10656])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-big-joiner.html
    - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#10656])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#6301])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-14/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][137] ([i915#8292])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#12247]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#12247] / [i915#6953]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#12247]) +7 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
    - shard-dg2:          [PASS][141] -> [SKIP][142] ([i915#12247] / [i915#8152] / [i915#9423])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d:
    - shard-dg2:          [PASS][143] -> [SKIP][144] ([i915#12247] / [i915#8152]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#6953])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
    - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#12247]) +3 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#12247] / [i915#3555] / [i915#6953])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [PASS][148] -> [SKIP][149] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#12247] / [i915#6953])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:
    - shard-dg2:          [PASS][151] -> [SKIP][152] ([i915#12247]) +5 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#12247]) +17 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html

  * igt@kms_pm_backlight@fade:
    - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#5354])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-14/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#3361])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#9685])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [PASS][157] -> [SKIP][158] ([i915#9340])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][159] -> [SKIP][160] ([i915#9519]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#9519])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_properties@plane-properties-legacy:
    - shard-dg2:          [PASS][162] -> [SKIP][163] ([i915#11521])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_properties@plane-properties-legacy.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][164] ([i915#11520])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#11520])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#11520]) +6 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#11520]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#9683]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@fbc-psr-primary-blt:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#1072] / [i915#9732]) +3 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@kms_psr@fbc-psr-primary-blt.html
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#1072] / [i915#9732]) +4 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_psr@fbc-psr-primary-blt.html

  * igt@kms_psr@fbc-psr2-primary-render:
    - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#9688]) +4 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_psr@fbc-psr2-primary-render.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#9732]) +11 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#1072] / [i915#9732]) +7 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#5289])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#5289])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu:         NOTRUN -> [ABORT][176] ([i915#12231]) +1 other test abort
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@basic:
    - shard-tglu:         NOTRUN -> [FAIL][177] ([i915#5465]) +2 other tests fail
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_setmode@basic.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#8623])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#9906])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#9906])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#2437] / [i915#9412])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#2437])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#2435])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#8850])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@perf_pmu@cpu-hotplug.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#3708])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#9917])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#9917])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@syncobj_eventfd@binary-wait:
    - shard-dg2:          [PASS][188] -> [INCOMPLETE][189] ([i915#2295])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-11/igt@syncobj_eventfd@binary-wait.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@syncobj_eventfd@binary-wait.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - shard-dg2:          [SKIP][190] ([i915#2582]) -> [PASS][191]
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@fbdev@unaligned-write.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@fbdev@unaligned-write.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [FAIL][192] ([i915#12027]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html
    - shard-tglu:         [FAIL][194] ([i915#12027]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-tglu-7/igt@gem_ctx_engines@invalid-engines.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-dg1:          [DMESG-WARN][196] ([i915#4423]) -> [PASS][197] +6 other tests pass
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-18/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-17/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@hostile:
    - shard-mtlp:         [FAIL][198] ([i915#11980]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-mtlp-7/igt@gem_ctx_persistence@hostile.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-4/igt@gem_ctx_persistence@hostile.html

  * igt@gem_eio@hibernate:
    - shard-dg1:          [ABORT][200] ([i915#7975] / [i915#8213]) -> [PASS][201]
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-14/igt@gem_eio@hibernate.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_eio@hibernate.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglu:         [FAIL][202] ([i915#2842]) -> [PASS][203] +1 other test pass
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [INCOMPLETE][204] ([i915#11441]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          ([ABORT][206], [PASS][207]) ([i915#12375] / [i915#5566]) -> [PASS][208]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk4/igt@gen9_exec_parse@allowed-single.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk6/igt@gen9_exec_parse@allowed-single.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [FAIL][209] ([i915#3591]) -> [PASS][210] +2 other tests pass
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          ([PASS][211], [FAIL][212]) ([i915#12308]) -> [PASS][213]
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk8/igt@i915_pm_rps@engine-order.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk5/igt@i915_pm_rps@engine-order.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk9/igt@i915_pm_rps@engine-order.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [SKIP][214] ([i915#7984]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-mtlp-8/igt@i915_power@sanity.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-2/igt@i915_power@sanity.html

  * igt@kms_atomic_transition@modeset-transition:
    - shard-glk:          ([PASS][216], [FAIL][217]) ([i915#12238]) -> [PASS][218]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk6/igt@kms_atomic_transition@modeset-transition.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk8/igt@kms_atomic_transition@modeset-transition.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk3/igt@kms_atomic_transition@modeset-transition.html

  * igt@kms_atomic_transition@modeset-transition@2x-outputs:
    - shard-glk:          ([PASS][219], [FAIL][220]) ([i915#11859]) -> [PASS][221]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk6/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk3/igt@kms_atomic_transition@modeset-transition@2x-outputs.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          ([PASS][222], [FAIL][223]) ([i915#2346]) -> [PASS][224]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][225] -> [PASS][226] +1 other test pass
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk1/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk7/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank:
    - shard-rkl:          [FAIL][227] ([i915#2122]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:
    - shard-rkl:          [FAIL][229] ([i915#11961]) -> [PASS][230] +1 other test pass
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html

  * igt@kms_flip@modeset-vs-vblank-race:
    - shard-rkl:          [FAIL][231] ([i915#10826]) -> [PASS][232] +1 other test pass
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-1/igt@kms_flip@modeset-vs-vblank-race.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-1/igt@kms_flip@modeset-vs-vblank-race.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-dg2:          [SKIP][233] ([i915#3555]) -> [PASS][234] +2 other tests pass
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-snb:          [SKIP][235] -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
    - shard-dg2:          [SKIP][237] ([i915#5354]) -> [PASS][238] +18 other tests pass
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [SKIP][239] ([i915#3555] / [i915#8228]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-5/igt@kms_hdr@static-swap.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_hdr@static-swap.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-dg2:          [SKIP][241] ([i915#9581]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane_alpha_blend@coverage-7efc:
    - shard-dg2:          [SKIP][243] ([i915#7294]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-7efc.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_plane_alpha_blend@coverage-7efc.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [FAIL][245] ([i915#8292]) -> [PASS][246]
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@invalid-parameters:
    - shard-dg2:          [SKIP][247] ([i915#8152] / [i915#9423]) -> [PASS][248] +1 other test pass
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_plane_scaling@invalid-parameters.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation:
    - shard-dg2:          [SKIP][249] ([i915#12247] / [i915#8152] / [i915#9423]) -> [PASS][250] +1 other test pass
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
    - shard-dg2:          [SKIP][251] ([i915#12247]) -> [PASS][252] +14 other tests pass
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:
    - shard-dg2:          [SKIP][253] ([i915#12247] / [i915#8152]) -> [PASS][254] +3 other tests pass
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d:
    - shard-dg2:          [SKIP][255] ([i915#8152]) -> [PASS][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
    - shard-dg2:          [SKIP][257] ([i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
    - shard-dg2:          [SKIP][259] ([i915#12247] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][261] ([i915#4281]) -> [PASS][262]
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][263] ([i915#9519]) -> [PASS][264]
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-rkl:          [SKIP][265] ([i915#9519]) -> [PASS][266] +2 other tests pass
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][267] ([i915#5465]) -> [PASS][268] +2 other tests pass
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-mtlp-7/igt@kms_setmode@basic@pipe-b-edp-1.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          [SKIP][269] ([i915#9197]) -> [PASS][270] +41 other tests pass
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_vblank@ts-continuation-modeset.html

  
#### Warnings ####

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          [SKIP][271] ([i915#9197]) -> [SKIP][272] +5 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          [SKIP][273] -> [SKIP][274] ([i915#9197]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][275] ([i915#5190] / [i915#9197]) -> [SKIP][276] ([i915#4538] / [i915#5190]) +6 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-dg2:          [SKIP][277] ([i915#5190]) -> [SKIP][278] ([i915#5190] / [i915#9197])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          [SKIP][279] ([i915#5190] / [i915#9197]) -> [SKIP][280] ([i915#5190])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          [SKIP][281] ([i915#4538] / [i915#5190]) -> [SKIP][282] ([i915#5190] / [i915#9197])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][283] ([i915#10307] / [i915#6095]) -> [SKIP][284] ([i915#9197]) +3 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][285] ([i915#9197]) -> [SKIP][286] ([i915#12313]) +1 other test skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:
    - shard-dg2:          [SKIP][287] ([i915#9197]) -> [SKIP][288] ([i915#10307] / [i915#6095]) +5 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][289] ([i915#9197]) -> [SKIP][290] ([i915#11616] / [i915#7213])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          [SKIP][291] ([i915#7118] / [i915#9424]) -> [TIMEOUT][292] ([i915#7173]) +1 other test timeout
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-3/igt@kms_content_protection@atomic-dpms.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-dg2:          [SKIP][293] ([i915#9197]) -> [SKIP][294] ([i915#3299])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic-type-0:
    - shard-dg2:          [SKIP][295] ([i915#9424]) -> [TIMEOUT][296] ([i915#7173])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-5/igt@kms_content_protection@lic-type-0.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          [SKIP][297] ([i915#9197]) -> [SKIP][298] ([i915#11453]) +1 other test skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-dg2:          [SKIP][299] ([i915#9197]) -> [SKIP][300] ([i915#3555]) +5 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          [SKIP][301] ([i915#9197]) -> [SKIP][302] ([i915#5354]) +1 other test skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-dg2:          [SKIP][303] ([i915#5354]) -> [SKIP][304] ([i915#9197])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][305] ([i915#9197]) -> [SKIP][306] ([i915#9833])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg2:          [SKIP][307] ([i915#3555] / [i915#3840]) -> [SKIP][308] ([i915#9197])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_dsc@dsc-with-bpc.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          [SKIP][309] ([i915#9197]) -> [SKIP][310] ([i915#3555] / [i915#3840])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-formats.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-dg2:          [SKIP][311] ([i915#2672] / [i915#3555]) -> [SKIP][312] ([i915#3555])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-dg2:          [SKIP][313] ([i915#3555] / [i915#5190]) -> [SKIP][314] ([i915#2672] / [i915#3555] / [i915#5190])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          [SKIP][315] ([i915#3555]) -> [SKIP][316] ([i915#2672] / [i915#3555]) +2 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][317] ([i915#4423] / [i915#8708]) -> [SKIP][318] ([i915#8708])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][319] ([i915#8708]) -> [SKIP][320] ([i915#5354]) +4 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
    - shard-dg2:          [SKIP][321] ([i915#3458]) -> [SKIP][322] ([i915#5354]) +4 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-dg2:          [SKIP][323] ([i915#5354]) -> [SKIP][324] ([i915#8708]) +12 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][325] ([i915#3458]) -> [SKIP][326] ([i915#10433] / [i915#3458]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [SKIP][327] ([i915#5354]) -> [SKIP][328] ([i915#3458]) +6 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
    - shard-dg1:          [SKIP][329] ([i915#4423]) -> [SKIP][330]
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][331] ([i915#10433] / [i915#3458]) -> [SKIP][332] ([i915#3458]) +3 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][333] ([i915#9197]) -> [SKIP][334] ([i915#3555] / [i915#8228]) +1 other test skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          [SKIP][335] ([i915#3555] / [i915#8806]) -> [SKIP][336] ([i915#9197])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_plane_multiple@tiling-yf.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
    - shard-dg2:          [SKIP][337] ([i915#12247] / [i915#8152] / [i915#9423]) -> [SKIP][338] ([i915#12247] / [i915#9423])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:
    - shard-dg2:          [SKIP][339] ([i915#12247] / [i915#8152]) -> [SKIP][340] ([i915#12247])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
    - shard-dg2:          [SKIP][341] ([i915#11131] / [i915#5190]) -> [SKIP][342] ([i915#5190] / [i915#9197])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          [SKIP][343] ([i915#9197]) -> [SKIP][344] ([i915#11131])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_vrr@flip-suspend:
    - shard-dg2:          [SKIP][345] ([i915#3555]) -> [SKIP][346] ([i915#9197])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_vrr@flip-suspend.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@lobf:
    - shard-dg2:          [SKIP][347] ([i915#9197]) -> [SKIP][348] ([i915#11920])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_vrr@lobf.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_vrr@lobf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
  [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
  [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#11961]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961
  [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
  [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
  [i915#12231]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12231
  [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
  [i915#12296]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12296
  [i915#12308]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12308
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12375]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12375
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
  [i915#2295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295
  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3826
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5465]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465
  [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7091]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
  [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7790
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#79]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/79
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
  [i915#8436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8436
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
  [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
  [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
  [i915#9979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979


Build changes
-------------

  * Linux: CI_DRM_15488 -> Patchwork_139583v1

  CI-20190529: 20190529
  CI_DRM_15488: e11d55841ddeeb378c8850fca72eb6a270aafd79 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8054: 3f627b7fd48c6ab324ceaa80dd8cf0131292bf63 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_139583v1: e11d55841ddeeb378c8850fca72eb6a270aafd79 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/index.html

--===============1547698787489771048==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fuse bit for power management disable removed</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139583/">https://patchwork.freedesktop.org/series/139583/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15488_full -&gt; Patchwork_139583v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139583v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139583v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>Additional (1): shard-dg2-set2 <br />
  Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139583v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-14/igt@gem_ctx_persistence@legacy-engines-persistence.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-7/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-14/igt@kms_flip@modeset-vs-vblank-race.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_flip@modeset-vs-vblank-race.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15488_full and Patchwork_139583v1_full:</p>
<h3>New IGT tests (71)</h3>
<ul>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.33, 4.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.10, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.23, 0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.48, 0.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.38, 0.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.61, 8.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.36, 1.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.25, 0.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.42, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.26, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [3.80, 17.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.87] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.89, 2.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.91] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.87] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.95] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-functional@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 4.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.26, 0.78] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.29] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.24, 0.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.24, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.23, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-pageflip-windowed@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 4.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.28, 0.78] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.23, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.23, 0.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@universal-plane-sanity@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.38] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139583v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@busy-check-all@bcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@drm_fdinfo@busy-check-all@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@gem_close_race@multigpu-basic-threads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-18/igt@gem_exec_fair@basic-throttle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@gem_exec_reloc@basic-wc-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_exec_reloc@basic-wc-read-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@gem_fence_thrash@bo-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@gem_lmem_swapping@heavy-verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@gem_lmem_swapping@verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@gem_pread@self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_pxp@reject-modify-context-protection-off-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk2/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-busy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7091">i915#7091</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8436">i915#8436</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-snb1/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7790">i915#7790</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3826">i915#3826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915#8709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-3/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +149 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +147 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616">i915#11616</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-3/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_chamelium_frames@vga-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979">i915#9979</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_display_modes@mst-extended-mode-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-14/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-snb4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966">i915#3966</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-5/igt@kms_flip@blocking-wf_vblank.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961">i915#11961</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-5/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-3/igt@kms_flip@blocking-wf_vblank@a-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961">i915#11961</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-1/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/79">i915#79</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_flip@flip-vs-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html">SKIP</a> +59 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-14/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-14/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361">i915#3361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_properties@plane-properties-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521">i915#11521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-5/igt@kms_psr@fbc-psr-primary-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_psr@fbc-psr-primary-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-render:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-8/igt@kms_psr@fbc-psr2-primary-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_psr@psr2-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12231">i915#12231</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-4/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-3/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@perf_pmu@cpu-hotplug.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850">i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-7/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-19/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_eventfd@binary-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-11/igt@syncobj_eventfd@binary-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@syncobj_eventfd@binary-wait.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295">i915#2295</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@fbdev@unaligned-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-5/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-tglu-7/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027">i915#12027</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-18/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-17/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> +6 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-mtlp-7/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980">i915#11980</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-4/igt@gem_ctx_persistence@hostile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-14/igt@gem_eio@hibernate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-15/igt@gem_eio@hibernate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441">i915#11441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-7/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk4/igt@gen9_exec_parse@allowed-single.html">ABORT</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk6/igt@gen9_exec_parse@allowed-single.html">PASS</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12375">i915#12375</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566">i915#5566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk2/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk8/igt@i915_pm_rps@engine-order.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk5/igt@i915_pm_rps@engine-order.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12308">i915#12308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk9/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-mtlp-8/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-2/igt@i915_power@sanity.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk6/igt@kms_atomic_transition@modeset-transition.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk8/igt@kms_atomic_transition@modeset-transition.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238">i915#12238</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk3/igt@kms_atomic_transition@modeset-transition.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk6/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk8/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859">i915#11859</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk3/igt@kms_atomic_transition@modeset-transition@2x-outputs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a>) (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-glk1/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-glk7/igt@kms_flip@2x-flip-vs-wf_vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961">i915#11961</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-3/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-1/igt@kms_flip@modeset-vs-vblank-race.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826">i915#10826</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-1/igt@kms_flip@modeset-vs-vblank-race.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html">PASS</a> +18 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-5/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_hdr@static-swap.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581">i915#9581</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_plane@planar-pixel-format-settings.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_alpha_blend@coverage-7efc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294">i915#7294</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_plane_alpha_blend@coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-parameters:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_plane_scaling@invalid-parameters.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html">PASS</a> +14 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a></li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-mtlp-7/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465">i915#5465</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_vblank@ts-continuation-modeset.html">PASS</a> +41 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616">i915#11616</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-3/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-5/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453">i915#11453</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833">i915#9833</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806">i915#8806</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152">i915#8152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131">i915#11131</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-10/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-2/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15488/shard-dg2-2/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139583v1/shard-dg2-10/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15488 -&gt; Patchwork_139583v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15488: e11d55841ddeeb378c8850fca72eb6a270aafd79 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8054: 3f627b7fd48c6ab324ceaa80dd8cf0131292bf63 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_139583v1: e11d55841ddeeb378c8850fca72eb6a270aafd79 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1547698787489771048==--
