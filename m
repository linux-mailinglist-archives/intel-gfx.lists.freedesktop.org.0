Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C400916ACE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2024 16:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBDF10E688;
	Tue, 25 Jun 2024 14:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A432F10E688;
 Tue, 25 Jun 2024 14:42:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dsb=3A_Use_?=
 =?utf-8?q?chained_DSBs_for_LUT_programming_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2024 14:42:20 -0000
Message-ID: <171932654066.153309.2032435995984546769@a6498e030952>
X-Patchwork-Hint: ignore
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

== Series Details ==

Series: drm/i915/dsb: Use chained DSBs for LUT programming (rev2)
URL   : https://patchwork.freedesktop.org/series/135316/
State : warning

== Summary ==

Error: dim checkpatch failed
1b4e1fa4926a drm/i915: Calculate vblank delay more accurately
807da0774682 drm/i915: Make vrr_{enabling, disabling}() usable outside intel_display.c
ff275c63d286 drm/i915/dsb: Hook up DSB error interrupts
9365828dadb1 drm/i915/dsb: Convert dewake_scanline to a hw scanline number earlier
c120ce8f82f7 drm/i915/dsb: Shuffle code around
f7744f0481c5 drm/i915/dsb: Fix dewake scanline
b5e8bc5c4e3c drm/i915/dsb: Account for VRR properly in DSB scanline stuff
d31ee51ab7cc drm/i915/dsb: Precompute DSB_CHICKEN
10ec621a8750 drm/i915/dsb: Introduce intel_dsb_wait_scanline_{in, out}()
a84ddec55575 drm/i915/dsb: Introduce intel_dsb_chain()
aa2d657b03ee drm/i915/dsb: Allow intel_dsb_chain() to use DSB_WAIT_FOR_VBLANK
62bde5d7a6ac drm/i915/dsb: Clear DSB_ENABLE_DEWAKE once the DSB is done
0a9fab4000e6 drm/i915/dsb: s/dsb/dsb_color_vblank/
-:145: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#145: FILE: drivers/gpu/drm/i915/display/intel_display.c:7513:
+		old_crtc_state->dsb_color_vblank = fetch_and_zero(&new_crtc_state->dsb_color_vblank);

total: 0 errors, 1 warnings, 0 checks, 123 lines checked
26b6e2bdda29 drm/i915/dsb: Use chained DSBs for LUT programming
-:109: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/display/intel_display.c:7514:
+		old_crtc_state->dsb_color_commit = fetch_and_zero(&new_crtc_state->dsb_color_commit);

total: 0 errors, 1 warnings, 0 checks, 88 lines checked


