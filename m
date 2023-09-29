Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C947B2AB0
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 05:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 797FA10E093;
	Fri, 29 Sep 2023 03:46:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 544C010E0D1;
 Fri, 29 Sep 2023 03:46:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3649BAADD8;
 Fri, 29 Sep 2023 03:46:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2886646122970779028=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 29 Sep 2023 03:46:41 -0000
Message-ID: <169595920116.19498.13428086911872037981@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230928153109.1976-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230928153109.1976-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/dsb=3A_Re-instate_DSB_for_?=
 =?utf-8?q?LUT_updates?=
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

--===============2886646122970779028==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915/dsb: Re-instate DSB for LUT updates
URL   : https://patchwork.freedesktop.org/series/124411/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13689_full -> Patchwork_124411v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124411v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124411v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124411v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:
    - shard-dg2:          [PASS][1] -> [INCOMPLETE][2] +4 other tests incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html

  * igt@kms_color@ctm-max@pipe-a:
    - shard-dg1:          [PASS][3] -> [INCOMPLETE][4] +8 other tests incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-14/igt@kms_color@ctm-max@pipe-a.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-19/igt@kms_color@ctm-max@pipe-a.html

  * igt@kms_color@degamma@pipe-a:
    - shard-dg2:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-5/igt@kms_color@degamma@pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_color@degamma@pipe-a.html

  * igt@kms_color@degamma@pipe-d:
    - shard-dg2:          [PASS][7] -> [DMESG-FAIL][8] +2 other tests dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-5/igt@kms_color@degamma@pipe-d.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_color@degamma@pipe-d.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:
    - shard-dg2:          NOTRUN -> [ABORT][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@kms_plane@pixel-format-source-clamping@pipe-a-planes.html

  * {igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3} (NEW):
    - shard-dg2:          NOTRUN -> [SKIP][10] +3 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3.html

  
#### Warnings ####

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg2:          [SKIP][11] ([fdo#111614]) -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-10/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-dg1:          [SKIP][13] ([i915#3638]) -> [INCOMPLETE][14] +3 other tests incomplete
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-18/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-15/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          [SKIP][15] ([fdo#111614]) -> [INCOMPLETE][16] +1 other test incomplete
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-11/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-2}:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-2.html

  
New tests
---------

  New tests have been introduced between CI_DRM_13689_full and Patchwork_124411v1_full:

### New IGT tests (53) ###

  * igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@cursor-implicit-plane@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-7efc@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-7efc@pipe-a-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-7efc@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-7efc@pipe-c-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-7efc@pipe-c-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-7efc@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:
    - Statuses : 1 fail(s) 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - Statuses : 1 fail(s) 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-c-dp-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-c-hdmi-a-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - Statuses : 1 fail(s) 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-hdmi-a-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:
    - Statuses : 1 fail(s) 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
    - Statuses : 1 fail(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-a-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-c-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-c-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-min@pipe-a-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-min@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@coverage-7efc@pipe-a-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@coverage-7efc@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@coverage-7efc@pipe-c-dp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_plane_alpha_blend@coverage-7efc@pipe-c-hdmi-a-1:
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

  Here are the changes found in Patchwork_124411v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@most-busy-check-all@vcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#8414]) +5 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@drm_fdinfo@most-busy-check-all@vcs0.html

  * igt@drm_fdinfo@virtual-busy-hang-all:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#8414])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@drm_fdinfo@virtual-busy-hang-all.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][20] ([i915#7297])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#7697])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [PASS][22] -> [FAIL][23] ([i915#6268])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-mtlp:         [PASS][24] -> [DMESG-WARN][25] ([i915#9262])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-mtlp:         NOTRUN -> [SKIP][26] ([fdo#109314])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-mtlp:         [PASS][27] -> [ABORT][28] ([i915#9414])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-6/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-4/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#1099])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-snb5/igt@gem_ctx_persistence@process.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#280])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@hibernate:
    - shard-tglu:         [PASS][31] -> [ABORT][32] ([i915#7975] / [i915#8213] / [i915#8398])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-tglu-6/igt@gem_eio@hibernate.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-tglu-10/igt@gem_eio@hibernate.html
    - shard-dg2:          [PASS][33] -> [ABORT][34] ([i915#7975] / [i915#8213])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-11/igt@gem_eio@hibernate.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@gem_eio@hibernate.html

  * igt@gem_eio@kms:
    - shard-dg1:          [PASS][35] -> [FAIL][36] ([i915#5784])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-12/igt@gem_eio@kms.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-16/igt@gem_eio@kms.html

  * igt@gem_eio@reset-stress:
    - shard-dg2:          [PASS][37] -> [FAIL][38] ([i915#5784])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-3/igt@gem_eio@reset-stress.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4771])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#4525])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#2842])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-glk6/igt@gem_exec_fair@basic-pace@vcs0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-glk4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3539] / [i915#4852]) +3 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_params@secure-non-root:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([fdo#112283])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_reloc@basic-concurrent0:
    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3281]) +3 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_exec_reloc@basic-concurrent0.html

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#3281]) +4 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-read-noreloc.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#4537] / [i915#4812])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_exec_schedule@preempt-queue-contexts-chain.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][48] ([i915#7975] / [i915#8213])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#4860])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#4860])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#2190])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#4613])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [PASS][53] -> [DMESG-WARN][54] ([i915#4936] / [i915#5493])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_mmap_gtt@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4077]) +6 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_mmap_gtt@bad-object.html

  * igt@gem_mmap_gtt@basic-write-read:
    - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#4077]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@gem_mmap_gtt@basic-write-read.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#4083]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#3282]) +1 other test skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4270]) +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3282]) +6 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#8428])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html

  * igt@gem_spin_batch@legacy@default:
    - shard-apl:          [PASS][62] -> [FAIL][63] ([i915#2898])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-apl4/igt@gem_spin_batch@legacy@default.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl2/igt@gem_spin_batch@legacy@default.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4079])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3297]) +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-snb:          NOTRUN -> [DMESG-WARN][66] ([i915#8841]) +3 other tests dmesg-warn
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-snb5/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen3_mixed_blits:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([fdo#109289]) +1 other test skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [PASS][68] -> [INCOMPLETE][69] ([i915#5566])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-apl4/igt@gen9_exec_parse@allowed-single.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#2856]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#2527]) +1 other test skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@gen9_exec_parse@bb-oversize.html

  * igt@i915_module_load@load:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#6227])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][73] -> [SKIP][74] ([i915#1397])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([fdo#109506])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#6621])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#6188])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@query-topology-unsupported:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([fdo#109302])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@i915_query@query-topology-unsupported.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [PASS][79] -> [DMESG-FAIL][80] ([i915#5334])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@mock@memory_region:
    - shard-rkl:          NOTRUN -> [DMESG-WARN][81] ([i915#9311])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@i915_selftest@mock@memory_region.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][82] ([i915#9311])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-snb2/igt@i915_selftest@mock@memory_region.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][83] -> [FAIL][84] ([fdo#103375])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [FAIL][85] ([i915#8247]) +3 other tests fail
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][86] ([fdo#111614]) +3 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][87] -> [FAIL][88] ([i915#5138])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#5286])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([fdo#111614])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([fdo#111615]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#5190]) +10 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          [PASS][93] -> [FAIL][94] ([i915#3743])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([fdo#110723])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4538] / [i915#5190]) +2 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([fdo#111615])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#2705])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#3689] / [i915#5354]) +12 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#3689] / [i915#3886] / [i915#5354]) +5 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#3886] / [i915#5354] / [i915#6095]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#3734] / [i915#5354] / [i915#6095]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#5354] / [i915#6095]) +4 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#3886]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#5354]) +41 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_mc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#5354] / [i915#6095]) +2 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#5354]) +5 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#4087] / [i915#7213]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([fdo#111827])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#7828])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#7828]) +5 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#7828]) +1 other test skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_color@ctm-0-75@pipe-d:
    - shard-dg1:          [PASS][113] -> [DMESG-WARN][114] ([i915#6020]) +8 other tests dmesg-warn
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-15/igt@kms_color@ctm-0-75@pipe-d.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-14/igt@kms_color@ctm-0-75@pipe-d.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#7118]) +1 other test skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#3299])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#3299])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#7118])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3555]) +4 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([fdo#111825]) +2 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#3546])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4103] / [i915#4213] / [i915#5608])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([fdo#109274] / [fdo#111767] / [i915#5354])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([fdo#109274] / [i915#5354]) +4 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#9227])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html

  * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#9226] / [i915#9261]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#8588])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#3555] / [i915#3840])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [fdo#111767]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([fdo#111767] / [fdo#111825])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
    - shard-snb:          NOTRUN -> [SKIP][131] ([fdo#109271] / [fdo#111767])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-snb2/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([fdo#109274]) +5 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#2672])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#2672]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#2672])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-dg1:          [PASS][136] -> [DMESG-FAIL][137] ([i915#6020]) +1 other test dmesg-fail
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#8708]) +12 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([fdo#111825] / [i915#1825]) +4 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - shard-dg2:          [PASS][140] -> [FAIL][141] ([i915#6880])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#3458]) +13 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [SKIP][143] ([fdo#109271]) +42 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#1825]) +4 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#3023]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][146] ([fdo#109271]) +174 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-snb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3555] / [i915#8228])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#3555] / [i915#8228]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#4816])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#6301])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-mtlp:         [PASS][151] -> [ABORT][152] ([i915#9262]) +1 other test abort
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#8806])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#5235]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#5235]) +7 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#5235]) +11 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-apl:          NOTRUN -> [SKIP][157] ([fdo#109271] / [i915#658])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#658]) +3 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@primary_mmap_cpu:
    - shard-glk:          NOTRUN -> [SKIP][159] ([fdo#109271]) +15 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-glk5/igt@kms_psr@primary_mmap_cpu.html

  * igt@kms_psr@sprite_blt:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#1072]) +4 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_psr@sprite_blt.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#5461] / [i915#658])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-rkl:          [PASS][162] -> [INCOMPLETE][163] ([i915#8875])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_vblank@pipe-d-wait-busy-hang:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#4070] / [i915#533] / [i915#6768]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_vblank@pipe-d-wait-busy-hang.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#2437])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_writeback@writeback-fb-id.html

  * igt@perf_pmu@busy-double-start@bcs0:
    - shard-mtlp:         [PASS][166] -> [FAIL][167] ([i915#4349])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#8850])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@perf_pmu@cpu-hotplug.html

  * igt@perf_pmu@faulting-read@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#8440])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@perf_pmu@faulting-read@gtt.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#5608] / [i915#8516])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#3708] / [i915#4077])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@fence-read-hang:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([fdo#109295] / [i915#3708])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@prime_vgem@fence-read-hang.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3708])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@prime_vgem@fence-write-hang.html

  * igt@v3d/v3d_get_param@get-bad-flags:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#2575]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@v3d/v3d_get_param@get-bad-flags.html

  * igt@v3d/v3d_submit_cl@simple-flush-cache:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#2575]) +11 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@v3d/v3d_submit_cl@simple-flush-cache.html

  * igt@v3d/v3d_submit_csd@bad-pad:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([fdo#109315]) +2 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-pad.html

  * igt@vc4/vc4_perfmon@destroy-valid-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#7711]) +4 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@vc4/vc4_perfmon@destroy-valid-perfmon.html

  * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#7711]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - shard-dg1:          [DMESG-WARN][179] ([i915#4423]) -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-18/igt@debugfs_test@read_all_entries.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-17/igt@debugfs_test@read_all_entries.html

  * igt@gem_barrier_race@remote-request@rcs0:
    - shard-glk:          [ABORT][181] ([i915#8190]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-glk5/igt@gem_barrier_race@remote-request@rcs0.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-glk5/igt@gem_barrier_race@remote-request@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][183] ([i915#2842]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [FAIL][185] ([i915#2842]) -> [PASS][186] +1 other test pass
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-mtlp:         [DMESG-FAIL][187] ([i915#8962]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_schedule@noreorder-corked@ccs0:
    - shard-mtlp:         [DMESG-WARN][189] ([i915#8962]) -> [PASS][190] +1 other test pass
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@ccs0.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-5/igt@gem_exec_schedule@noreorder-corked@ccs0.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [TIMEOUT][191] ([i915#5493]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_hangman@gt-error-state-capture@vecs0:
    - shard-mtlp:         [ABORT][193] ([i915#9414]) -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-5/igt@i915_hangman@gt-error-state-capture@vecs0.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@i915_hangman@gt-error-state-capture@vecs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg2:          [DMESG-WARN][195] ([i915#8617]) -> [PASS][196]
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-dg1:          [FAIL][197] ([i915#3591]) -> [PASS][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_pm_rpm@dpms-mode-unset-lpsp:
    - shard-rkl:          [SKIP][199] ([i915#1397]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg1:          [SKIP][201] ([i915#1397]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-15/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][203] ([i915#1397]) -> [PASS][204] +1 other test pass
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][205] ([i915#2346]) -> [PASS][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][207] ([i915#2346]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglu:         [FAIL][209] ([i915#4767]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-tglu-6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:
    - shard-apl:          [INCOMPLETE][211] ([i915#1982] / [i915#9392]) -> [PASS][212]
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1.html

  * {igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:
    - shard-dg1:          [SKIP][213] ([i915#1937]) -> [PASS][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-14/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-19/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [FAIL][215] ([IGT#2]) -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-6/igt@kms_sysfs_edid_timing.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-11/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-a:
    - shard-dg1:          [FAIL][217] ([i915#9196]) -> [PASS][218] +1 other test pass
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
    - shard-snb:          [FAIL][219] ([i915#9196]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-snb1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-snb1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-mtlp:         [ABORT][221] ([i915#9262]) -> [DMESG-WARN][222] ([i915#9262]) +1 other test dmesg-warn
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs1.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg1:          [SKIP][223] ([i915#4423] / [i915#4565]) -> [SKIP][224] ([i915#4565])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-18/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-17/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-dg1:          [SKIP][225] ([i915#3689] / [i915#3886] / [i915#4423] / [i915#5354] / [i915#6095]) -> [SKIP][226] ([i915#3689] / [i915#3886] / [i915#5354] / [i915#6095])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg1-12/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-14/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][227] ([i915#3955]) -> [SKIP][228] ([fdo#110189] / [i915#3955])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [CRASH][229] ([i915#9351]) -> [INCOMPLETE][230] ([i915#5493])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13689/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
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
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2898]: https://gitlab.freedesktop.org/drm/intel/issues/2898
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#6020]: https://gitlab.freedesktop.org/drm/intel/issues/6020
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8190]: https://gitlab.freedesktop.org/drm/intel/issues/8190
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8440]: https://gitlab.freedesktop.org/drm/intel/issues/8440
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
  [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
  [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
  [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9392]: https://gitlab.freedesktop.org/drm/intel/issues/9392
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423


Build changes
-------------

  * Linux: CI_DRM_13689 -> Patchwork_124411v1

  CI-20190529: 20190529
  CI_DRM_13689: 5933eb0a0717a28e668d33e01a707311d31cebbb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7506: 4fdf544bd0a38c5a100ef43c30171827e1c8c442 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124411v1: 5933eb0a0717a28e668d33e01a707311d31cebbb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/index.html

--===============2886646122970779028==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915/dsb: Re-=
instate DSB for LUT updates</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/124411/">https://patchwork.freedesktop.org/series/124411/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124411v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124411v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13689_full -&gt; Patchwork_124411v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124411v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_124411v1_full, please notify your bug team (lgci.=
bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
124411v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4411v1/shard-dg2-1/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">INCOMPLETE<=
/a> +4 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-max@pipe-a:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-14/igt@kms_color@ctm-max@pipe-a.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/sh=
ard-dg1-19/igt@kms_color@ctm-max@pipe-a.html">INCOMPLETE</a> +8 other tests=
 incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-5/igt@kms_color@degamma@pipe-a.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/sha=
rd-dg2-3/igt@kms_color@degamma@pipe-a.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@degamma@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-5/igt@kms_color@degamma@pipe-d.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/sha=
rd-dg2-3/igt@kms_color@degamma@pipe-d.html">DMESG-FAIL</a> +2 other tests d=
mesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@kms_plane@pixel-format-sou=
rce-clamping@pipe-a-planes.html">ABORT</a></li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pip=
e-a-hdmi-a-3} (NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-3.html">SKIP</a> +3 oth=
er tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-10/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo=
#111614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124411v1/shard-dg2-7/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">ABOR=
T</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-18/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3638">i915=
#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124411v1/shard-dg1-15/igt@kms_big_fb@linear-8bpp-rotate-270.html">INCOM=
PLETE</a> +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-11/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111614">fdo#=
111614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_124411v1/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html">INCOMP=
LETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b-=
hdmi-a-2}:<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_plane_scaling@plane-up=
scale-factor-0-25-with-modifiers@pipe-b-hdmi-a-2.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_13689_full and Patchwork_1=
24411v1_full:</p>
<h3>New IGT tests (53)</h3>
<ul>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-7efc@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 fail(s) 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 fail(s) 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 fail(s) 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 fail(s) 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 fail(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc@pipe-c-dp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@coverage-7efc@pipe-c-hdmi-a-1:</p>
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
<p>Here are the changes found in Patchwork_124411v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@most-busy-check-all@vcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@drm_fdinfo@most-busy-chec=
k-all@vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8414">i915#8414</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@drm_fdinfo@virtual-busy-ha=
ng-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@gem_ccs@suspend-resume@xma=
jor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12441=
1v1/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs0.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124411v1/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-6/igt@gem_ctx_persistence@legacy-engines-hang@blt.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124411v1/shard-mtlp-4/igt@gem_ctx_persistence@legacy-engines-hang@b=
lt.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9414">i915#9414</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-snb5/igt@gem_ctx_persistence@process=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/280=
">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13689/shard-tglu-6/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-tglu=
-10/igt@gem_eio@hibernate.html">ABORT</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8398">i915#8398</a>)</p>
</li>
<li>
<p>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13689/shard-dg2-11/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg2-=
3/igt@gem_eio@hibernate.html">ABORT</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/8213">i915#8213</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-12/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-16/ig=
t@gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-3/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-d=
g2-6/igt@gem_eio@reset-stress.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@gem_exec_balancer@bonded-p=
air.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@gem_exec_balancer@parallel=
-ordering.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-glk6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1=
/shard-glk4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-pr=
o-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4852">i915#4852</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@gem_exec_params@secure-non=
-root.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D112283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-concurrent0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_exec_reloc@basic-concu=
rrent0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-=
read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_exec_schedule@preempt-=
queue-contexts-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@gem_exec_suspend@basic-s4-=
devices@lmem0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@gem_fence_thrash@bo-write-=
verify-threaded-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@gem_fenced_exec_thrash@no=
-spare-fences-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190=
">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
411v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936">i915#49=
36</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i=
915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_mmap_gtt@bad-object.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
77">i915#4077</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@gem_mmap_gtt@basic-write-=
read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_mmap_wc@write-wc-read-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@gem_partial_pwrite_pread@r=
eads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@gem_pxp@verify-pxp-stale-c=
tx-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@gem_readwrite@beyond-eob.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
282">i915#3282</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-=
to-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@legacy@default:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-apl4/igt@gem_spin_batch@legacy@default.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1=
/shard-apl2/igt@gem_spin_batch@legacy@default.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2898">i915#2898</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gem_tiled_pread_pwrite.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/407=
9">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-snb5/igt@gem_workarounds@suspend-res=
ume-fd.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8841">i915#8841</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@gen3_mixed_blits.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fd=
o#109289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-apl4/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v=
1/shard-apl6/igt@gen9_exec_parse@allowed-single.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@gen9_exec_parse@bb-chained=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124411v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#13=
97</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@i915_pm_rpm@gem-execbuf-st=
ress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@i915_pm_rps@min-max-config=
-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@i915_query@query-topology-=
unsupported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109302">fdo#109302</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-apl6/igt@i915_selftest@live@gt_heartbeat.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411=
v1/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@memory_region:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@i915_selftest@mock@memory_r=
egion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9311">i915#9311</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124411v1/shard-snb2/igt@i915_selftest@mock@memory_re=
gion.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9311">i915#9311</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4411v1/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124411v1/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#51=
38</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-16bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111615">fdo#111615</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5190">i915#5190</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124411v1/shard-rkl-4/igt@kms_big_fb@y-tiled-max=
-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-32bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_big_joiner@2x-modeset.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_ccs@pipe-a-crc-primary=
-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@kms_ccs@pipe-a-missing-ccs=
-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +5 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_ccs@pipe-a-random-ccs=
-data-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_ccs@pipe-b-bad-aux-str=
ide-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3734">i915#3734</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-sprite-planes-basic-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_ccs@pipe-b-crc-sprite-=
planes-basic-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_ccs@pipe-c-crc-primary=
-basic-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_mc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_ccs@pipe-d-bad-rotati=
on-90-4_tiled_dg2_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-y_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_ccs@pipe-d-crc-primary=
-rotation-180-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5354">i915#5354</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_chamelium_color@ctm-ne=
gative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_chamelium_edid@hdmi-ed=
id-change-during-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-7/igt@kms_chamelium_edid@hdmi-ed=
id-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_chamelium_hpd@dp-hpd-=
storm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75@pipe-d:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-15/igt@kms_color@ctm-0-75@pipe-d.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/s=
hard-dg1-14/igt@kms_color@ctm-0-75@pipe-d.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/6020">i915#6020</a>) +8 oth=
er tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_content_protection@ato=
mic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_cursor_legacy@2x-curso=
r-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111825">fdo#111825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_cursor_legacy@2x-nonb=
locking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_cursor_legacy@basic-bu=
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
/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-=
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
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl=
@fbc-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9227">i915#9227</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg1-14/igt@kms_dirtyfb@dirtyfb-ioctl=
@psr-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9226">i915#9226</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/9261">i915#9261</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/8588">i915#8588</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/38=
40">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_flip@2x-flip-vs-blockin=
g-wf-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111767">fdo#111767</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_flip@2x-flip-vs-rmfb-in=
terruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111767">fdo#111767</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111825">fdo#111825</a>)</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124411v1/shard-snb2/igt@kms_flip@2x-flip-vs-rmfb-int=
erruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111767">fdo#111767</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_flip@2x-flip-vs-wf_vbl=
ank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109274">fdo#109274</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pip=
e-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a=
>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri=
-indfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124411v1/shard-dg1-14/igt@kms_frontbuffer_tracki=
ng@fbc-1p-primscrn-pri-indfb-draw-pwrite.html">DMESG-FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/6020">i915#6020</a>) +1 othe=
r test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +12 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprim=
ary.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_124411v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-shrfb-sca=
ledprimary.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +13 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +42 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +4 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3023">i915#3023</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-snb5/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +174 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_hdr@bpc-switch.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8=
228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-8/igt@kms_plane@plane-panning-bottom-right-suspend=
@pipe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_124411v1/shard-mtlp-8/igt@kms_plane@plane-panning-bo=
ttom-right-suspend@pipe-a-planes.html">ABORT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/9262">i915#9262</a>) +1 other test abort<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_plane_multiple@tiling-=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-6/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@p=
ipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg1-12/igt@kms_plane_scaling@planes-=
downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</=
a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a=
>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_psr2_sf@overlay-plane-m=
ove-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/658">i915#658</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-glk5/igt@kms_psr@primary_mmap_cpu.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_psr@sprite_blt.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i=
915#1072</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_psr_stress_test@invali=
date-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/5461">i915#5461</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-18=
0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124411v1/shard-rkl-6/igt@kms_rotation_crc@primary-y-tiled-reflect=
-x-180.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8875">i915#8875</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-busy-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@kms_vblank@pipe-d-wait-bus=
y-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/533">i915#533</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/6768">i915#6768</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-2/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@bcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1244=
11v1/shard-mtlp-7/igt@perf_pmu@busy-double-start@bcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@cpu-hotplug:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@perf_pmu@cpu-hotplug.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8850"=
>i915#8850</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@faulting-read@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@perf_pmu@faulting-read@gt=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8440">i915#8440</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5608"=
>i915#5608</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@prime_vgem@basic-fence-mma=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109295">fdo#109295</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@prime_vgem@fence-write-han=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@get-bad-flags:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-mtlp-7/igt@v3d/v3d_get_param@get-bad=
-flags.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@simple-flush-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@v3d/v3d_submit_cl@simple-f=
lush-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2575">i915#2575</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-pad:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-pad=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109315">fdo#109315</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@destroy-valid-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-dg2-3/igt@vc4/vc4_perfmon@destroy-va=
lid-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7711">i915#7711</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_wait_seqno@bad-seqno-0ns:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124411v1/shard-rkl-1/igt@vc4/vc4_wait_seqno@bad-seq=
no-0ns.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7711">i915#7711</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-18/igt@debugfs_test@read_all_entries.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i9=
15#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124411v1/shard-dg1-17/igt@debugfs_test@read_all_entries.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-glk5/igt@gem_barrier_race@remote-request@rcs0.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8190">i9=
15#8190</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124411v1/shard-glk5/igt@gem_barrier_race@remote-request@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124411v1/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124411v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-uc=
.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8962">i915#8962</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_124411v1/shard-mtlp-6/igt@gem_exec_flush@basic-batch-k=
ernel-default-uc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@noreorder-corked@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@ccs0.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8962">i915#8962</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_124411v1/shard-mtlp-5/igt@gem_exec_schedule@noreorder-corke=
d@ccs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i9=
15#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124411v1/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@gt-error-state-capture@vecs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-5/igt@i915_hangman@gt-error-state-capture@vecs0.ht=
ml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
414">i915#9414</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_124411v1/shard-mtlp-7/igt@i915_hangman@gt-error-state-capture@=
vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8617">i915#8617</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124411v1/shard-dg2-11/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i=
915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124411v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1=
397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_124411v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i9=
15#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_124411v1/shard-dg1-15/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1397">i915#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_124411v1/shard-dg2-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-=
no-wait.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124411v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_cursor_legacy@=
flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
411v1/shard-tglu-6/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-dp-=
1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9392">i915#9392</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124411v1/shard-apl4/igt@kms_pipe_crc_basic@susp=
end-read-crc@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-14/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1937">i=
915#1937</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_124411v1/shard-dg1-19/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-6/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1=
/shard-dg2-11/igt@kms_sysfs_edid_timing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-a:</p>
<ul>
<li>
<p>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13689/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak-pipe-a.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/919=
6">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_124411v1/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak-pip=
e-a.html">PASS</a> +1 other test pass</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13689/shard-snb1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9196"=
>i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_124411v1/shard-snb1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.=
html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs1.html"=
>ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9262=
">i915#9262</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124411v1/shard-mtlp-2/igt@gem_ctx_isolation@preservation-s3@vcs1.=
html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9262">i915#9262</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-18/igt@gem_lmem_swapping@parallel-random-verify-ccs=
@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4565">i915#4565</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124411v1/shard-dg1-17/igt@gem_lmem_swapping@para=
llel-random-verify-ccs@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg1-12/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen=
12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3886">i915#3886</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124411v1/shard-dg1-14/igt@k=
ms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354">i915=
#5354</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6095=
">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12441=
1v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13689/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">CRASH</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9351">i915#9351</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_124411v1/shard-dg2-1/igt@prime_mmap@test_aperture=
_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13689 -&gt; Patchwork_124411v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13689: 5933eb0a0717a28e668d33e01a707311d31cebbb @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7506: 4fdf544bd0a38c5a100ef43c30171827e1c8c442 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124411v1: 5933eb0a0717a28e668d33e01a707311d31cebbb @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============2886646122970779028==--
