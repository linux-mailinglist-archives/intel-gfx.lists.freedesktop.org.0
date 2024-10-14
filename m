Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE16E99C21F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 09:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE4D410E257;
	Mon, 14 Oct 2024 07:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F2D10E257;
 Mon, 14 Oct 2024 07:54:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2697086657510014527=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_Vrr_refactoring_and_panel_r?=
 =?utf-8?q?eplay_workaround_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2024 07:54:41 -0000
Message-ID: <172889248125.1246782.8401220279982253845@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20241010040503.1795399-1-mitulkumar.ajitkumar.golani@intel.com>
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

--===============2697086657510014527==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Vrr refactoring and panel replay workaround (rev5)
URL   : https://patchwork.freedesktop.org/series/138232/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15510_full -> Patchwork_138232v5_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (8 -> 8)
------------------------------

  No changes in participating hosts

New tests
---------

  New tests have been introduced between CI_DRM_15510_full and Patchwork_138232v5_full:

### New IGT tests (1109) ###

  * igt@kms_atomic@atomic-invalid-params@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.38] s

  * igt@kms_atomic@atomic-invalid-params@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.15, 0.55] s

  * igt@kms_atomic@atomic-invalid-params@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_atomic@atomic-invalid-params@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.37] s

  * igt@kms_atomic@atomic-plane-damage@pipe-a-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_atomic@atomic-plane-damage@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_atomic@atomic-plane-damage@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.94] s

  * igt@kms_atomic@atomic-plane-damage@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.65] s

  * igt@kms_atomic@crtc-invalid-params-fence@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.41] s

  * igt@kms_atomic@crtc-invalid-params-fence@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.18, 0.59] s

  * igt@kms_atomic@crtc-invalid-params-fence@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.51] s

  * igt@kms_atomic@crtc-invalid-params@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.35] s

  * igt@kms_atomic@crtc-invalid-params@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.12, 0.52] s

  * igt@kms_atomic@crtc-invalid-params@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.48] s

  * igt@kms_atomic@crtc-invalid-params@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.30] s

  * igt@kms_atomic@plane-cursor-legacy@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.37] s

  * igt@kms_atomic@plane-cursor-legacy@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.13, 0.52] s

  * igt@kms_atomic@plane-cursor-legacy@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_atomic@plane-cursor-legacy@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.32] s

  * igt@kms_atomic@plane-immutable-zpos@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.60] s

  * igt@kms_atomic@plane-immutable-zpos@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.30, 0.76] s

  * igt@kms_atomic@plane-immutable-zpos@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.44] s

  * igt@kms_atomic@plane-immutable-zpos@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.72] s

  * igt@kms_atomic@plane-invalid-params-fence@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.37] s

  * igt@kms_atomic@plane-invalid-params-fence@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.13, 0.47] s

  * igt@kms_atomic@plane-invalid-params-fence@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_atomic@plane-invalid-params-fence@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.31] s

  * igt@kms_atomic@plane-invalid-params@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.40] s

  * igt@kms_atomic@plane-invalid-params@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.16, 0.57] s

  * igt@kms_atomic@plane-invalid-params@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.81] s

  * igt@kms_atomic@plane-invalid-params@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.54] s

  * igt@kms_atomic@plane-overlay-legacy@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.42] s

  * igt@kms_atomic@plane-overlay-legacy@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.15, 0.53] s

  * igt@kms_atomic@plane-overlay-legacy@pipe-a-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.46, 0.61] s

  * igt@kms_atomic@plane-primary-legacy@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.43] s

  * igt@kms_atomic@plane-primary-legacy@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.20, 0.68] s

  * igt@kms_atomic@plane-primary-legacy@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.80] s

  * igt@kms_atomic@plane-primary-legacy@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.58] s

  * igt@kms_atomic@test-only@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.59] s

  * igt@kms_atomic@test-only@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.34, 1.02] s

  * igt@kms_atomic@test-only@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_atomic@test-only@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.47] s

  * igt@kms_atomic_interruptible@atomic-setmode@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [6.84] s

  * igt@kms_atomic_interruptible@atomic-setmode@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [6.22, 6.87] s

  * igt@kms_atomic_interruptible@atomic-setmode@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [6.17] s

  * igt@kms_atomic_interruptible@atomic-setmode@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [6.20] s

  * igt@kms_atomic_interruptible@legacy-cursor@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [7.48] s

  * igt@kms_atomic_interruptible@legacy-cursor@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [6.17, 6.76] s

  * igt@kms_atomic_interruptible@legacy-cursor@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [6.18] s

  * igt@kms_atomic_interruptible@legacy-cursor@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [6.26] s

  * igt@kms_atomic_interruptible@legacy-dpms@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [7.46] s

  * igt@kms_atomic_interruptible@legacy-dpms@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [6.22, 6.81] s

  * igt@kms_atomic_interruptible@legacy-dpms@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [6.16] s

  * igt@kms_atomic_interruptible@legacy-dpms@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [6.19] s

  * igt@kms_atomic_interruptible@legacy-pageflip@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [7.62] s

  * igt@kms_atomic_interruptible@legacy-pageflip@pipe-a-hdmi-a-1:
    - Statuses : 5 pass(s)
    - Exec time: [6.17, 6.75] s

  * igt@kms_atomic_interruptible@legacy-pageflip@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [6.15] s

  * igt@kms_atomic_interruptible@legacy-setmode@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [6.86] s

  * igt@kms_atomic_interruptible@legacy-setmode@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [6.19, 6.81] s

  * igt@kms_atomic_interruptible@legacy-setmode@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [6.19] s

  * igt@kms_atomic_interruptible@legacy-setmode@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [6.15] s

  * igt@kms_atomic_interruptible@universal-setplane-cursor@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [7.45] s

  * igt@kms_atomic_interruptible@universal-setplane-cursor@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [6.19, 6.85] s

  * igt@kms_atomic_interruptible@universal-setplane-cursor@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [6.18] s

  * igt@kms_atomic_interruptible@universal-setplane-cursor@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [6.15] s

  * igt@kms_atomic_interruptible@universal-setplane-primary@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [7.55] s

  * igt@kms_atomic_interruptible@universal-setplane-primary@pipe-a-hdmi-a-1:
    - Statuses : 5 pass(s)
    - Exec time: [6.17, 6.81] s

  * igt@kms_atomic_interruptible@universal-setplane-primary@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [6.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-linear-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-linear-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-x-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-x-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.11, 0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.12, 0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.12, 0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.13, 0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.48] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.16, 0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.16, 0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-cc-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-cc-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.17, 0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.19, 0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.15, 0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.45] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.19] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-linear-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-linear-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-x-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-x-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.24] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.25] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.21] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [1.33] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-linear-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-linear-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-x-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-x-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.11, 0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.11, 0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-linear:
    - Statuses : 3 pass(s)
    - Exec time: [0.10, 0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-x:
    - Statuses : 3 pass(s)
    - Exec time: [0.11, 0.34] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.25] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.48] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-cc-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-cc-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.25] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.13, 0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.46] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-y-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-yf-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-linear-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-linear-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-x-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-x-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.25] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [1.29] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-linear-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-linear-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-x-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-x-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.25] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-linear:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-x:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-y:
    - Statuses : 2 pass(s)
    - Exec time: [0.11, 0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.49] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-linear-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.14] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-x-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-y-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.18] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-yf-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-yf-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-yf-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-yf-to-yf:
    - Statuses : 1 pass(s)
    - Exec time: [0.45] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-linear-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-linear-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-x-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-x-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.24] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [1.31] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-4-mc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-4-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-4-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-linear-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-linear-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-x-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-x-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.25] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-linear-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-linear-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-linear-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-linear-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-linear-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-x-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-x-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-x-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-x-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-x-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-cc-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-cc-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-cc-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.24] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.13] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-to-linear:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-to-x:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-to-y:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-to-y-rc-ccs:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-to-y-rc-ccs-cc:
    - Statuses : 1 pass(s)
    - Exec time: [0.15] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-a-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.04, 0.07] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.05] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-b-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-c-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-end@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.45] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-b-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-c-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-d-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-hsync-start@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_invalid_mode@bad-htotal@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.05, 0.42] s

  * igt@kms_invalid_mode@bad-htotal@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@kms_invalid_mode@bad-htotal@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@kms_invalid_mode@bad-htotal@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-htotal@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.41] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.05] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.03] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-b-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-end@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.29] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.05, 0.43] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vsync-start@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.05, 0.43] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.03] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@bad-vtotal@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@clock-too-high@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.06, 0.40] s

  * igt@kms_invalid_mode@clock-too-high@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@clock-too-high@pipe-b-edp-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@clock-too-high@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_invalid_mode@clock-too-high@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@clock-too-high@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@kms_invalid_mode@clock-too-high@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@clock-too-high@pipe-d-edp-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@clock-too-high@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.01] s

  * igt@kms_invalid_mode@int-max-clock@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_invalid_mode@int-max-clock@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.04, 0.44] s

  * igt@kms_invalid_mode@int-max-clock@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@kms_invalid_mode@int-max-clock@pipe-a-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.05] s

  * igt@kms_invalid_mode@int-max-clock@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@kms_invalid_mode@int-max-clock@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-b-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@int-max-clock@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-c-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@int-max-clock@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-d-hdmi-a-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@int-max-clock@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.08] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.04, 0.42] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.03] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-b-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-b-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-c-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-d-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@uint-max-clock@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-a-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.08] s

  * igt@kms_invalid_mode@zero-clock@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_invalid_mode@zero-clock@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.05, 0.41] s

  * igt@kms_invalid_mode@zero-clock@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@kms_invalid_mode@zero-clock@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.05] s

  * igt@kms_invalid_mode@zero-clock@pipe-b-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@zero-clock@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-c-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-d-dp-3:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-clock@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.05, 0.40] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-b-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-b-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-c-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.28] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.05, 0.41] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-a-hdmi-a-2:
    - Statuses : 3 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.04] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-b-hdmi-a-2:
    - Statuses : 3 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-c-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.0] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-vdisplay@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_scaling_modes@scaling-mode-center@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_scaling_modes@scaling-mode-center@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.26] s

  * igt@kms_scaling_modes@scaling-mode-center@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.20] s

  * igt@kms_scaling_modes@scaling-mode-center@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.22] s

  * igt@kms_scaling_modes@scaling-mode-full-aspect@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.10] s

  * igt@kms_scaling_modes@scaling-mode-full-aspect@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.21] s

  * igt@kms_scaling_modes@scaling-mode-full-aspect@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.20] s

  * igt@kms_scaling_modes@scaling-mode-full-aspect@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.21] s

  * igt@kms_scaling_modes@scaling-mode-full@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.09] s

  * igt@kms_scaling_modes@scaling-mode-full@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.25] s

  * igt@kms_scaling_modes@scaling-mode-full@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.19] s

  * igt@kms_scaling_modes@scaling-mode-full@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.21] s

  * igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.10] s

  * igt@kms_scaling_modes@scaling-mode-none@pipe-b-edp-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.03] s

  * igt@kms_scaling_modes@scaling-mode-none@pipe-c-edp-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.03] s

  * igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.03] s

  * igt@kms_sequence@get-busy@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.91] s

  * igt@kms_sequence@get-busy@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [1.27, 2.85] s

  * igt@kms_sequence@get-busy@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.63] s

  * igt@kms_sequence@get-busy@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.68] s

  * igt@kms_sequence@get-busy@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [1.25, 2.58] s

  * igt@kms_sequence@get-busy@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.60] s

  * igt@kms_sequence@get-busy@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.67] s

  * igt@kms_sequence@get-busy@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [1.24, 2.59] s

  * igt@kms_sequence@get-busy@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.58] s

  * igt@kms_sequence@get-busy@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.69] s

  * igt@kms_sequence@get-busy@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.26] s

  * igt@kms_sequence@get-forked-busy@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.90] s

  * igt@kms_sequence@get-forked-busy@pipe-a-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [2.38, 2.83] s

  * igt@kms_sequence@get-forked-busy@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.60] s

  * igt@kms_sequence@get-forked-busy@pipe-a-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [2.55, 2.59] s

  * igt@kms_sequence@get-forked-busy@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.70] s

  * igt@kms_sequence@get-forked-busy@pipe-b-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [2.43, 2.60] s

  * igt@kms_sequence@get-forked-busy@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.58] s

  * igt@kms_sequence@get-forked-busy@pipe-b-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [2.48, 2.54] s

  * igt@kms_sequence@get-forked-busy@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.68] s

  * igt@kms_sequence@get-forked-busy@pipe-c-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.60] s

  * igt@kms_sequence@get-forked-busy@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.58] s

  * igt@kms_sequence@get-forked-busy@pipe-c-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [2.47, 2.52] s

  * igt@kms_sequence@get-forked-busy@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.69] s

  * igt@kms_sequence@get-forked-busy@pipe-d-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [2.50, 2.52] s

  * igt@kms_sequence@get-forked@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.81] s

  * igt@kms_sequence@get-forked@pipe-a-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [1.21, 2.67] s

  * igt@kms_sequence@get-forked@pipe-a-hdmi-a-2:
    - Statuses : 3 pass(s)
    - Exec time: [2.35, 2.59] s

  * igt@kms_sequence@get-forked@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.40] s

  * igt@kms_sequence@get-forked@pipe-b-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.54] s

  * igt@kms_sequence@get-forked@pipe-b-hdmi-a-1:
    - Statuses : 3 pass(s)
    - Exec time: [1.19, 2.41] s

  * igt@kms_sequence@get-forked@pipe-b-hdmi-a-2:
    - Statuses : 3 pass(s)
    - Exec time: [2.26, 2.54] s

  * igt@kms_sequence@get-forked@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.21] s

  * igt@kms_sequence@get-forked@pipe-c-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.55] s

  * igt@kms_sequence@get-forked@pipe-c-hdmi-a-1:
    - Statuses : 2 pass(s)
    - Exec time: [1.21, 2.42] s

  * igt@kms_sequence@get-forked@pipe-c-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [2.22, 2.42] s

  * igt@kms_sequence@get-forked@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.24] s

  * igt@kms_sequence@get-forked@pipe-d-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.57] s

  * igt@kms_sequence@get-forked@pipe-d-hdmi-a-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.20] s

  * igt@kms_sequence@get-forked@pipe-d-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [2.22] s

  * igt@kms_sequence@get-forked@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.23] s

  * igt@kms_sequence@get-idle@pipe-a-edp-1:
    - Statuses : 1 pass(s)
    - Exec time: [1.80] s

  * igt@kms_sequence@get-idle@pipe-a-hdmi-a-1:
    - Statuses : 4 pass(s)
    - Exec time: [1.21, 2.72] s

  * igt@kms_sequence@get-idle@pipe-a-hdmi-a-2:
    - Statuses : 2 pass(s)
    - Exec time: [2.31, 2.44] s

  * igt@kms_sequence@get-idle@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.42] s

  * igt@

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138232v5/index.html

--===============2697086657510014527==
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
<tr><td><b>Series:</b></td><td>Vrr refactoring and panel replay workaround (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138232/">https://patchwork.freedesktop.org/series/138232/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138232v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138232v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15510_full -&gt; Patchwork_138232v5_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (8 -&gt; 8)</h2>
<p>No changes in participating hosts</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15510_full and Patchwork_138232v5_full:</p>
<h3>New IGT tests (1109)</h3>
<ul>
<li>
<p>igt@kms_atomic@atomic-invalid-params@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.38] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic-invalid-params@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.15, 0.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic-invalid-params@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic-invalid-params@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic-plane-damage@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic-plane-damage@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic-plane-damage@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.94] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic-plane-damage@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params-fence@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params-fence@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.18, 0.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params-fence@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.35] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.12, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.30] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-cursor-legacy@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-cursor-legacy@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.13, 0.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-cursor-legacy@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-cursor-legacy@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-immutable-zpos@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-immutable-zpos@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.30, 0.76] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-immutable-zpos@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-immutable-zpos@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.72] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params-fence@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params-fence@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.13, 0.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params-fence@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params-fence@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.16, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-overlay-legacy@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-overlay-legacy@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.15, 0.53] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-overlay-legacy@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.46, 0.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-legacy@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-legacy@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.20, 0.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-legacy@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.80] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-legacy@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@test-only@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@test-only@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.34, 1.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@test-only@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@test-only@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.47] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.84] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [6.22, 6.87] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@atomic-setmode@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-cursor@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-cursor@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [6.17, 6.76] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-cursor@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-cursor@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [6.22, 6.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-dpms@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-pageflip@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-pageflip@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [6.17, 6.75] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-pageflip@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.86] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [6.19, 6.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-cursor@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-cursor@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [6.19, 6.85] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-cursor@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-cursor@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-primary@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [7.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-primary@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [6.17, 6.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-primary@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-mc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-rc-ccs-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-4-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-linear-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-linear-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-x-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-x-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-edp-1-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.11, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.12, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-linear-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.12, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.13, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-rc-ccs-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-1-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.16, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-linear-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.16, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-cc-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-cc-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-rc-ccs-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.17, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.19, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.15, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-2-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-linear-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-linear-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-x-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-x-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-rc-ccs-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-a-hdmi-a-4-y-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-mc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-rc-ccs-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-4-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-linear-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-linear-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-x-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-x-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-edp-1-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.11, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.11, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-linear-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-linear:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.10, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-x:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.11, 0.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-rc-ccs-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.48] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-1-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-linear-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-x-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-cc-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-cc-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-rc-ccs-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.13, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-y-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-ccs-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-y-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-2-yf-to-yf-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-linear-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-linear-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-x-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-x-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-rc-ccs-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-b-hdmi-a-4-y-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.29] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-mc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-rc-ccs-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-4-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-linear-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-linear-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-x-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-x-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-edp-1-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-rc-ccs-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-linear:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-x:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-y:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.11, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-1-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.49] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-linear-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.14] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-x-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-y-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-yf-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-yf-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-yf-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-2-yf-to-yf:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-linear-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-linear-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-x-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-x-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-rc-ccs-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-c-hdmi-a-4-y-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-mc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-4-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-4-mc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-4-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-4-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-edp-1-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-linear-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-linear-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-x-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-x-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-cc-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-rc-ccs-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-1-y-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-linear-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-linear-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-linear-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-linear-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-linear-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-x-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-x-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-x-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-x-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-x-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-cc-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-cc-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-cc-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-cc-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-rc-ccs-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-to-linear:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-to-x:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-to-y:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-to-y-rc-ccs:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@pipe-d-hdmi-a-4-y-to-y-rc-ccs-cc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.04, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-end@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.45] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-hsync-start@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.05, 0.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-htotal@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-end@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.29] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.05, 0.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.05, 0.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vtotal@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.06, 0.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.04, 0.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.04, 0.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@uint-max-clock@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.08] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.05, 0.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-clock@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.05, 0.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.28] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.05, 0.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.04] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-vdisplay@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.09] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.10] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.91] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.27, 2.85] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.63] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.25, 2.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.24, 2.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.26] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.38, 2.83] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.55, 2.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.70] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.43, 2.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.48, 2.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.68] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.60] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.58] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.47, 2.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked-busy@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.50, 2.52] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.21, 2.67] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [2.35, 2.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.40] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-b-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [1.19, 2.41] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 3 pass(s)</li>
<li>Exec time: [2.26, 2.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-c-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.55] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.21, 2.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.22, 2.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.24] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-d-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.57] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-d-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.22] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-forked@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-idle@pipe-a-edp-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.80] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-idle@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [1.21, 2.72] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-idle@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.31, 2.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-idle@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.42] s</li>
</ul>
</li>
<li>
<p>igt@</p>
</li>
</ul>

</body>
</html>

--===============2697086657510014527==--
