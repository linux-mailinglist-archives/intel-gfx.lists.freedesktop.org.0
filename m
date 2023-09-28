Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C68E07B10DA
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 04:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FFC10E5D3;
	Thu, 28 Sep 2023 02:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C326D10E5D3;
 Thu, 28 Sep 2023 02:35:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0201AADE0;
 Thu, 28 Sep 2023 02:35:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3954519220488589459=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Thu, 28 Sep 2023 02:35:28 -0000
Message-ID: <169586852868.21267.4588398781680157194@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230927102237.30773-1-nirmoy.das@intel.com>
In-Reply-To: <20230927102237.30773-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_Introduce_intel=5Fgt=5F?=
 =?utf-8?q?mcr=5Flock=5Freset=28=29?=
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

--===============3954519220488589459==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: Introduce intel_gt_mcr_lock_reset()
URL   : https://patchwork.freedesktop.org/series/124325/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13685_full -> Patchwork_124325v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124325v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124325v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124325v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@gem_exec_suspend@basic-s0@lmem0.html

  * {igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3} (NEW):
    - shard-dg2:          NOTRUN -> [SKIP][2] +5 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3.html

  * {igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3} (NEW):
    - shard-dg1:          NOTRUN -> [SKIP][3] +3 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4}:
    - shard-dg1:          NOTRUN -> [SKIP][4] +7 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4.html

  * {igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2}:
    - shard-dg2:          NOTRUN -> [SKIP][5] +1 other test skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html
    - shard-rkl:          NOTRUN -> [SKIP][6] +1 other test skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13685_full and Patchwork_124325v1_full:

### New IGT tests (45) ###

  * igt@gem_mmap_offset@ptrace@smem0-gtt:
    - Statuses : 4 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-b-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-c-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-d-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@lease-unleased-crtc@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@lease-unleased-crtc@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@lease-unleased-crtc@pipe-b-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@lease-unleased-crtc@pipe-b-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@lease-unleased-crtc@pipe-c-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@lease-unleased-crtc@pipe-d-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@lessee-list@pipe-a-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@lessee-list@pipe-b-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@lessee-list@pipe-c-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@lessee-list@pipe-d-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-b-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-c-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-d-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-b-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d-dp-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_124325v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31]) -> ([PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [FAIL][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56]) ([i915#8293])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl2/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl2/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl1/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl3/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl3/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl3/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl3/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl3/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#8411])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][58] ([i915#5507])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-11/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@most-busy-check-all@bcs0:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#8414]) +9 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@drm_fdinfo@most-busy-check-all@bcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][60] -> [FAIL][61] ([i915#6268])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-tglu-10/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-mtlp:         [PASS][62] -> [ABORT][63] ([i915#9262])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-5/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([fdo#109314])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@engines-cleanup:
    - shard-snb:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#1099]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-snb5/igt@gem_ctx_persistence@engines-cleanup.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#4771])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@bonded-true-hang:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4812]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_balancer@bonded-true-hang.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#3539] / [i915#4852]) +2 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3539]) +1 other test skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([fdo#112283])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#3281]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#3281]) +9 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_schedule@preempt-engines@ccs0:
    - shard-mtlp:         [PASS][73] -> [FAIL][74] ([i915#9119]) +4 other tests fail
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-8/igt@gem_exec_schedule@preempt-engines@ccs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@ccs0.html

  * igt@gem_exec_schedule@preempt-engines@rcs0:
    - shard-mtlp:         [PASS][75] -> [DMESG-FAIL][76] ([i915#8962]) +1 other test dmesg-fail
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-8/igt@gem_exec_schedule@preempt-engines@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4537] / [i915#4812]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][78] ([i915#7975] / [i915#8213])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4860]) +1 other test skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#4613] / [i915#7582])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4083]) +3 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_mmap_wc@bad-size.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#3282]) +1 other test skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_pxp@create-protected-buffer:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4270]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_pxp@create-protected-buffer.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3282]) +6 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@gem_readwrite@beyond-eob.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#4079])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#8411]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4077]) +7 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3297]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#3297] / [i915#4880])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#3297])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][91] ([i915#2724])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-snb5/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-snb:          NOTRUN -> [DMESG-WARN][92] ([i915#8841])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-snb5/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([fdo#109289]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([fdo#109289])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@i915_fb_tiling:
    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4881])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@i915_fb_tiling.html

  * igt@i915_hangman@gt-error-state-capture@vecs0:
    - shard-mtlp:         [PASS][96] -> [ABORT][97] ([i915#9414]) +1 other test abort
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-3/igt@i915_hangman@gt-error-state-capture@vecs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-2/igt@i915_hangman@gt-error-state-capture@vecs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [PASS][98] -> [DMESG-WARN][99] ([i915#8617])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#7091])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#6590])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rpm@i2c:
    - shard-dg2:          NOTRUN -> [FAIL][102] ([i915#8717])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg1:          [PASS][103] -> [SKIP][104] ([i915#1397]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg1-12/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#6621])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg2:          NOTRUN -> [FAIL][106] ([fdo#103375])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#8502]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-4-rc_ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#8709]) +11 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-4-rc_ccs-cc.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#1769] / [i915#3555]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#1769] / [i915#3555])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([fdo#111614]) +3 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-11/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#5286])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [PASS][113] -> [FAIL][114] ([i915#3743]) +1 other test fail
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#5190]) +12 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([fdo#110723])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#4538] / [i915#5190]) +3 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#3689] / [i915#5354]) +11 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#5354] / [i915#6095]) +2 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#3689] / [i915#3886] / [i915#5354]) +11 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3886] / [i915#5354] / [i915#6095])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#5354]) +5 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#4087] / [i915#7213]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#7213])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([fdo#111827]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#7828]) +6 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@hdmi-hpd:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#7828])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_chamelium_hpd@hdmi-hpd.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#3299])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#7118])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-6/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3359])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3555])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3555]) +4 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4103] / [i915#4213] / [i915#5608])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([fdo#109274] / [i915#5354]) +2 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [PASS][136] -> [FAIL][137] ([i915#2346]) +1 other test fail
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][138] -> [FAIL][139] ([i915#2346])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#9227])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#9226] / [i915#9261]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][142] ([fdo#109271])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-glk9/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([fdo#109274]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-panning.html
    - shard-rkl:          NOTRUN -> [SKIP][144] ([fdo#111825]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#2672]) +5 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([fdo#109285])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_force_connector_basic@force-load-detect.html
    - shard-rkl:          NOTRUN -> [SKIP][147] ([fdo#109285] / [i915#4098])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
    - shard-dg2:          [PASS][148] -> [FAIL][149] ([i915#6880])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#5354]) +48 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
    - shard-rkl:          NOTRUN -> [SKIP][151] ([fdo#111825] / [i915#1825]) +7 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#8708]) +7 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#5439])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#3023]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#3458]) +11 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#3555] / [i915#8228]) +1 other test skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@kms_hdr@static-toggle.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#6301])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#6953])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-6/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#5235]) +3 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#5235]) +11 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#658]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@cursor_render:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#1072]) +1 other test skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_psr@cursor_render.html

  * igt@kms_psr@dpms:
    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#1072]) +4 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_psr@dpms.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-rkl:          [PASS][164] -> [INCOMPLETE][165] ([i915#8875])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-rkl-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#4235] / [i915#5190])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
    - shard-rkl:          NOTRUN -> [SKIP][167] ([fdo#111615] / [i915#5289])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
    - shard-dg1:          [PASS][168] -> [FAIL][169] ([i915#9196])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg1-18/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-d:
    - shard-mtlp:         [PASS][170] -> [FAIL][171] ([i915#9196])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html

  * igt@kms_vblank@pipe-c-query-busy-hang:
    - shard-snb:          NOTRUN -> [SKIP][172] ([fdo#109271]) +187 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-snb5/igt@kms_vblank@pipe-c-query-busy-hang.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#4070] / [i915#6768])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][174] -> [FAIL][175] ([i915#7484])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#5608] / [i915#8516])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#8516])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0.html
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#8516])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#3708] / [i915#4077])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#3708])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@prime_vgem@fence-write-hang.html

  * igt@v3d/v3d_submit_cl@simple-flush-cache:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#2575]) +10 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@v3d/v3d_submit_cl@simple-flush-cache.html

  * igt@v3d/v3d_submit_csd@bad-multisync-extension:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([fdo#109315]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@v3d/v3d_submit_csd@bad-multisync-extension.html

  * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#7711]) +5 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html

  * igt@vc4/vc4_tiling@set-bad-flags:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#7711]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@vc4/vc4_tiling@set-bad-flags.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [FAIL][185] ([i915#6268]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_endless@dispatch@bcs0:
    - shard-dg2:          [TIMEOUT][187] ([i915#3778] / [i915#7016]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][189] ([i915#2842]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [TIMEOUT][191] ([i915#5493]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][193] ([i915#1397]) -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg2-2/igt@i915_pm_rpm@modeset-lpsp.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@kms_atomic_interruptible@universal-setplane-primary@dp-1-pipe-a:
    - shard-apl:          [DMESG-WARN][195] ([i915#180] / [i915#7634]) -> [PASS][196] +30 other tests pass
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/igt@kms_atomic_interruptible@universal-setplane-primary@dp-1-pipe-a.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/igt@kms_atomic_interruptible@universal-setplane-primary@dp-1-pipe-a.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][197] ([i915#5138]) -> [PASS][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [FAIL][199] ([i915#3743]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [FAIL][201] ([fdo#103375]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-fences@a-dp1:
    - shard-apl:          [DMESG-WARN][203] ([i915#180] / [i915#1982] / [i915#7634]) -> [PASS][204] +1 other test pass
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/igt@kms_flip@flip-vs-fences@a-dp1.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/igt@kms_flip@flip-vs-fences@a-dp1.html

  * {igt@kms_lease@lease-unleased-connector@pipe-a-dp-1}:
    - shard-apl:          [DMESG-WARN][205] ([i915#7634]) -> [PASS][206] +11 other tests pass
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/igt@kms_lease@lease-unleased-connector@pipe-a-dp-1.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/igt@kms_lease@lease-unleased-connector@pipe-a-dp-1.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:
    - shard-rkl:          [INCOMPLETE][207] -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-mtlp:         [ABORT][209] ([i915#9262]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_lowres@tiling-none@pipe-b-dp-1:
    - shard-apl:          [SKIP][211] ([fdo#109271]) -> [PASS][212] +2 other tests pass
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/igt@kms_plane_lowres@tiling-none@pipe-b-dp-1.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/igt@kms_plane_lowres@tiling-none@pipe-b-dp-1.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
    - shard-mtlp:         [FAIL][213] ([i915#9196]) -> [PASS][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-c:
    - shard-tglu:         [FAIL][215] ([i915#9196]) -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html

  * igt@perf_pmu@busy-idle@vcs0:
    - shard-mtlp:         [FAIL][217] ([i915#4349]) -> [PASS][218] +1 other test pass
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-1/igt@perf_pmu@busy-idle@vcs0.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-6/igt@perf_pmu@busy-idle@vcs0.html

  * igt@syncobj_wait@wait-all-for-submit-delayed-submit:
    - shard-dg1:          [DMESG-WARN][219] ([i915#1982]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg1-17/igt@syncobj_wait@wait-all-for-submit-delayed-submit.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg1-14/igt@syncobj_wait@wait-all-for-submit-delayed-submit.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-mtlp:         [ABORT][221] ([i915#9262]) -> [DMESG-WARN][222] ([i915#9262])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-5/igt@gem_ctx_isolation@preservation-s3@vcs1.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-7/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-tglu:         [FAIL][223] ([i915#2681] / [i915#3591]) -> [WARN][224] ([i915#2681])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_pm_rps@waitboost:
    - shard-dg2:          [FAIL][225] -> [FAIL][226] ([i915#8229])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg2-6/igt@i915_pm_rps@waitboost.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@i915_pm_rps@waitboost.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-apl:          [SKIP][227] ([fdo#109271] / [i915#8585]) -> [SKIP][228] ([fdo#109271])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/igt@kms_chamelium_edid@dp-mode-timings.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][229] ([i915#3955]) -> [SKIP][230] ([fdo#110189] / [i915#3955])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-mtlp:         [DMESG-WARN][231] ([i915#9262]) -> [ABORT][232] ([i915#9262])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_psr@cursor_plane_move:
    - shard-dg1:          [SKIP][233] ([i915#1072] / [i915#4078]) -> [SKIP][234] ([i915#1072]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-dg1-18/igt@kms_psr@cursor_plane_move.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-dg1-17/igt@kms_psr@cursor_plane_move.html

  * igt@sysfs_preempt_timeout@timeout@vecs0:
    - shard-mtlp:         [TIMEOUT][235] ([i915#8521]) -> [ABORT][236] ([i915#8521] / [i915#8865])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-mtlp-7/igt@sysfs_preempt_timeout@timeout@vecs0.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-8/igt@sysfs_preempt_timeout@timeout@vecs0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5507]: https://gitlab.freedesktop.org/drm/intel/issues/5507
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7016]: https://gitlab.freedesktop.org/drm/intel/issues/7016
  [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
  [i915#7634]: https://gitlab.freedesktop.org/drm/intel/issues/7634
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8229]: https://gitlab.freedesktop.org/drm/intel/issues/8229
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8521]: https://gitlab.freedesktop.org/drm/intel/issues/8521
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8717]: https://gitlab.freedesktop.org/drm/intel/issues/8717
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9119]: https://gitlab.freedesktop.org/drm/intel/issues/9119
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_13685 -> Patchwork_124325v1

  CI-20190529: 20190529
  CI_DRM_13685: 1907f24fed1f58a8c7210aa4abaee56dd897936b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7506: 4fdf544bd0a38c5a100ef43c30171827e1c8c442 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124325v1: 1907f24fed1f58a8c7210aa4abaee56dd897936b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/index.html

--===============3954519220488589459==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: Introdu=
ce intel_gt_mcr_lock_reset()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/124325/">https://patchwork.freedesktop.org/series/124325/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124325v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13685_full -&gt; Patchwork_124325v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124325v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_124325v1_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
124325v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@gem_exec_suspend@basic-s0@=
lmem0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pip=
e-a-hdmi-a-3} (NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3.html">SKIP</a> +5 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-h=
dmi-a-3} (NEW):</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg1-12/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-c-hdmi-a-3.html">SKIP</a> +3 other t=
ests skip</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b=
-hdmi-a-4}:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg1-18/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-4.html">SKIP</a> +7 other=
 tests skip</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-=
hdmi-a-2}:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_plane_scaling@plane-dow=
nscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html">SKIP</a> +1 other te=
st skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_plane_scaling@plane-dow=
nscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html">SKIP</a> +1 other te=
st skip</p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13685_full and Patchwork_1=
24325v1_full:</p>
<h3>New IGT tests (45)</h3>
<ul>
<li>
<p>igt@gem_mmap_offset@ptrace@smem0-gtt:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-b-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-c-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-d-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-crtc@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-crtc@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-crtc@pipe-b-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-crtc@pipe-b-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-crtc@pipe-c-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-unleased-crtc@pipe-d-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lessee-list@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lessee-list@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lessee-list@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lessee-list@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-a-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-b-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-c-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-d-dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-h=
dmi-a-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-d-h=
dmi-a-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hd=
mi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b-hd=
mi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c-hd=
mi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d-hd=
mi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-a-=
dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-b-=
dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-c-=
dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d-=
dp-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-a-hdmi-=
a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-b-hdmi-=
a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-c-hdmi-=
a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d-hdmi-=
a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124325v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13685/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl6/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl6/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13685/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_13685/shard-apl4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/sha=
rd-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_13685/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl4/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13685/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13685/shard-apl3/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13685/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-ap=
l2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
3685/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_13685/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13685/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13685/shard-apl1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
325v1/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_124325v1/shard-apl4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124325v1/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/sh=
ard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_124325v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl6/boot.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4325v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_124325v1/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124325v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl1/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/sh=
ard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_124325v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4325v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_124325v1/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124325v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/sh=
ard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_124325v1/shard-apl3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl3/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@api_intel_bb@object-reloc-=
keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-11/igt@device_reset@unbind-reset=
-rebind.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5507">i915#5507</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@drm_fdinfo@most-busy-check=
-all@bcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8414">i915#8414</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12432=
5v1/shard-tglu-10/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-5/igt@gem_ctx_isolation@preservation-s3@rcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124325v1/shard-mtlp-7/igt@gem_ctx_isolation@preservation-s3@rcs0.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9262">=
i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_ctx_param@set-priority=
-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-snb5/igt@gem_ctx_persistence@engines=
-cleanup.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1099">i915#1099</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_balancer@bonded-p=
air.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-true-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_balancer@bonded-t=
rue-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_flush@basic-uc-pr=
w-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-r=
ead-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_reloc@basic-softp=
in.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3281">i915#3281</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-8/igt@gem_exec_schedule@preempt-engines@ccs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124325v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@ccs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9119">i=
915#9119</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-engines@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-8/igt@gem_exec_schedule@preempt-engines@rcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124325v1/shard-mtlp-4/igt@gem_exec_schedule@preempt-engines@rcs0.html">D=
MESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
962">i915#8962</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_exec_schedule@preempt-=
queue-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@gem_exec_suspend@basic-s4-=
devices@lmem0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_fenced_exec_thrash@no-=
spare-fences-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4613">i915#4613</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_mmap_wc@bad-size.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083"=
>i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gem_partial_pwrite_pread@r=
eads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-protected-buffer:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_pxp@create-protected-b=
uffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@gem_readwrite@beyond-eob.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@gem_set_tiling_vs_blt@until=
ed-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4079">i915#4079</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gem_set_tiling_vs_blt@until=
ed-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8411">i915#8411</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@gem_tiled_partial_pwrite_p=
read@reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4077">i915#4077</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gem_userptr_blits@readonly=
-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-snb5/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2724">i915#2724</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-snb5/igt@gem_workarounds@suspend-res=
ume-fd.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8841">i915#8841</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@gen7_exec_parse@cmd-crossi=
ng-page.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@gen7_exec_parse@oacontrol-=
tracking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_fb_tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@i915_fb_tiling.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i915#=
4881</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-error-state-capture@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-3/igt@i915_hangman@gt-error-state-capture@vecs0.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124325v1/shard-mtlp-2/igt@i915_hangman@gt-error-state-capture@vecs0.h=
tml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9414">i915#9414</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124325v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-injecti=
on.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8617">i915#8617</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@i915_pipe_stress@stress-xr=
gb8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7091">i915#7091</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6590">i915#6590</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@i915_pm_rpm@i2c.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8717">i915=
#8717</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124325v1/shard-dg1-12/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397"=
>i915#1397</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@i915_pm_rps@min-max-config=
-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@i915_suspend@basic-s3-with=
out-i915.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-2-y-r=
c_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-2-y-rc_ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-4-r=
c_ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-b-hdmi-a-2-4-rc_ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)=
 +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-11/igt@kms_big_fb@4-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111614">fdo#111614</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-tglu-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_124325v1/shard-tglu-2/igt@kms_big_fb@x-tiled-m=
ax-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 other =
test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +12 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +3 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_ccs@pipe-a-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_ccs@pipe-a-crc-sprite-=
planes-basic-4_tiled_mtl_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_ccs@pipe-a-random-ccs-=
data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +11 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_ccs@pipe-b-bad-aux-str=
ide-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_ccs@pipe-d-crc-sprite-=
planes-basic-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@kms_cdclk@mode-transition=
@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/7213">i915#7213</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@kms_cdclk@mode-transition=
@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7213">i915#7213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_chamelium_color@ctm-ne=
gative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_chamelium_hpd@common-h=
pd-after-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_chamelium_hpd@hdmi-hpd=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-6/igt@kms_content_protection@leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-11/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onsc=
reen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_124325v1/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124325v1/shard-apl3/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@kms_dirtyfb@dirtyfb-ioctl=
@fbc-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@kms_dirtyfb@dirtyfb-ioctl=
@psr-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-glk9/igt@kms_dither@fb-8bpc-vs-panel=
-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-panning=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109274">fdo#109274</a>) +1 other test skip</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_flip@2x-flip-vs-panning=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
111825">fdo#111825</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_force_connector_basic@f=
orce-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109285">fdo#109285</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_force_connector_basic@f=
orce-load-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109285">fdo#109285</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4098">i915#4098</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrf=
b-msflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-=
1p-primscrn-shrfb-msflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +48 other tests skip<=
/p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +7 other test=
s skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +7 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +11 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-10/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-6/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg1-15/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-6/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_psr@cursor_render.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072=
">i915#1072</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@kms_psr@dpms.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#10=
72</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-rkl-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-18=
0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124325v1/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect=
-x-180.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8875">i915#8875</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5190">i915#5190</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf=
-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5289">i915#5289</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-b:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg1-18/igt@kms_universal_plane@cursor-fb-leak-pipe-b.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124325v1/shard-dg1-12/igt@kms_universal_plane@cursor-fb-leak-pipe-b.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-d:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak-pipe-d.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124325v1/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak-pipe-d.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-query-busy-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-snb5/igt@kms_vblank@pipe-c-query-bus=
y-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +187 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_vblank@pipe-c-ts-conti=
nuation-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6768">i915#6768</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/=
shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5608"=
>i915#5608</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>
<p>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8516">i915#8516</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@perf_pmu@rc6@other-idle-gt0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8516">i915#8516</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@prime_vgem@basic-fence-mma=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@simple-flush-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-3/igt@v3d/v3d_submit_cl@simple-f=
lush-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2575">i915#2575</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-multisync-extension:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@v3d/v3d_submit_csd@bad-mul=
tisync-extension.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109315">fdo#109315</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg2-5/igt@vc4/vc4_perfmon@destroy-va=
lid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7711">i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@set-bad-flags:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@vc4/vc4_tiling@set-bad-fla=
gs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124325v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg2-6/igt@gem_exec_endless@dispatch@bcs0.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#=
3778</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7016"=
>i915#7016</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_124325v1/shard-dg2-2/igt@gem_exec_endless@dispatch@bcs0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124325v1/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i9=
15#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124325v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg2-2/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325=
v1/shard-dg2-10/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-primary@dp-1-pipe-a:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-apl4/igt@kms_atomic_interruptible@universal-setplane-pr=
imary@dp-1-pipe-a.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7634">i915#7634</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-apl2/igt@kms_atomi=
c_interruptible@universal-setplane-primary@dp-1-pipe-a.html">PASS</a> +30 o=
ther tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i9=
15#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124325v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-tglu-2/igt@kms_big_fb@y=
-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
325v1/shard-dg2-2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-apl4/igt@kms_flip@flip-vs-fences@a-dp1.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#=
180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">=
i915#1982</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
7634">i915#7634</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_124325v1/shard-apl2/igt@kms_flip@flip-vs-fences@a-dp1.html">P=
ASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>{igt@kms_lease@lease-unleased-connector@pipe-a-dp-1}:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-apl4/igt@kms_lease@lease-unleased-connector@pipe-a-dp-1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7634">i915#7634</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_124325v1/shard-apl2/igt@kms_lease@lease-unleased-conne=
ctor@pipe-a-dp-1.html">PASS</a> +11 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping@pipe-a=
-planes.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_124325v1/shard-rkl-2/igt@kms_plane@pixel-format-sourc=
e-clamping@pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-6/igt@kms_plane@plane-panning-bottom-right-suspend=
@pipe-a-planes.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9262">i915#9262</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-5/igt@kms_plane@plane-pan=
ning-bottom-right-suspend@pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-none@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-apl4/igt@kms_plane_lowres@tiling-none@pipe-b-dp-1.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_124325v1/shard-apl2/igt@kms_plane_lowres@tiling-none@pipe-b-dp-1=
.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-b:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak-pipe-b.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/91=
96">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_124325v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak-pi=
pe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-c:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak-pipe-c.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/91=
96">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_124325v1/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak-pi=
pe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-1/igt@perf_pmu@busy-idle@vcs0.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325=
v1/shard-mtlp-6/igt@perf_pmu@busy-idle@vcs0.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg1-17/igt@syncobj_wait@wait-all-for-submit-delayed-sub=
mit.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124325v1/shard-dg1-14/igt@syncobj_wait@wait-all-for=
-submit-delayed-submit.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-5/igt@gem_ctx_isolation@preservation-s3@vcs1.html"=
>ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9262=
">i915#9262</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124325v1/shard-mtlp-7/igt@gem_ctx_isolation@preservation-s3@vcs1.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i9=
15#2681</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/35=
91">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_124325v1/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.h=
tml">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@waitboost:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg2-6/igt@i915_pm_rps@waitboost.html">FAIL</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-=
dg2-2/igt@i915_pm_rps@waitboost.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/8229">i915#8229</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-apl4/igt@kms_chamelium_edid@dp-mode-timings.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/858=
5">i915#8585</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_124325v1/shard-apl2/igt@kms_chamelium_edid@dp-mode-timings.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12432=
5v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-6/igt@kms_plane@plane-panning-bottom-right-suspend=
@pipe-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/9262">i915#9262</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_124325v1/shard-mtlp-5/igt@kms_plane@plan=
e-panning-bottom-right-suspend@pipe-b-planes.html">ABORT</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-dg1-18/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4=
078</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124325v1/shard-dg1-17/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) =
+1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13685/shard-mtlp-7/igt@sysfs_preempt_timeout@timeout@vecs0.html">TI=
MEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8521"=
>i915#8521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_124325v1/shard-mtlp-8/igt@sysfs_preempt_timeout@timeout@vecs0.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/852=
1">i915#8521</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/8865">i915#8865</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13685 -&gt; Patchwork_124325v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13685: 1907f24fed1f58a8c7210aa4abaee56dd897936b @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7506: 4fdf544bd0a38c5a100ef43c30171827e1c8c442 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124325v1: 1907f24fed1f58a8c7210aa4abaee56dd897936b @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3954519220488589459==--
