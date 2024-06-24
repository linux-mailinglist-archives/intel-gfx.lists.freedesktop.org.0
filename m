Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF64C91576C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BF6E10E1D4;
	Mon, 24 Jun 2024 19:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a6498e030952 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6160C10E1D4;
 Mon, 24 Jun 2024 19:54:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/dsb=3A_Use_?=
 =?utf-8?q?chained_DSBs_for_LUT_programming?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jun 2024 19:54:37 -0000
Message-ID: <171925887739.153309.7626931930008659823@a6498e030952>
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

Series: drm/i915/dsb: Use chained DSBs for LUT programming
URL   : https://patchwork.freedesktop.org/series/135316/
State : warning

== Summary ==

Error: dim checkpatch failed
5cc7f6d7e392 drm/i915: Calculate vblank delay more accurately
16f9c292de2d drm/i915: Make vrr_{enabling, disabling}() usable outside intel_display.c
4d3041f405be drm/i915/dsb: Hook up DSB error interrupts
f79c5f5e1805 drm/i915/dsb: Convert dewake_scanline to a hw scanline number earlier
4d233ad01435 drm/i915/dsb: Shuffle code around
518146bad5db drm/i915/dsb: Fix dewake scanline
9269d14b790c drm/i915/dsb: Account for VRR properly in DSB scanline stuff
c98ce409a8af drm/i915/dsb: Precompute DSB_CHICKEN
256916fbb9d0 drm/i915/dsb: Introduce intel_dsb_wait_scanline_{in, out}()
c45bb5ee10c1 drm/i915/dsb: Introduce intel_dsb_chain()
9b46ebf6c051 drm/i915/dsb: Allow intel_dsb_chain() to use DSB_WAIT_FOR_VBLANK
c36156d44a11 drm/i915/dsb: Clear DSB_ENABLE_DEWAKE once the DSB is done
f4ca5fb76d0f drm/i915/dsb: s/dsb/dsb_color_vblank/
-:145: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#145: FILE: drivers/gpu/drm/i915/display/intel_display.c:7513:
+		old_crtc_state->dsb_color_vblank = fetch_and_zero(&new_crtc_state->dsb_color_vblank);

total: 0 errors, 1 warnings, 0 checks, 123 lines checked
d133ef40d55f drm/i915/dsb: Use chained DSBs for LUT programming
-:109: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/display/intel_display.c:7514:
+		old_crtc_state->dsb_color_commit = fetch_and_zero(&new_crtc_state->dsb_color_commit);

total: 0 errors, 1 warnings, 0 checks, 88 lines checked


