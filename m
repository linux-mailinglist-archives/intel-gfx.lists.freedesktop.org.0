Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A928A55A3
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 16:54:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B80112648;
	Mon, 15 Apr 2024 14:54:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7488511264F;
 Mon, 15 Apr 2024 14:54:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_PLL_refa?=
 =?utf-8?q?ctoring?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 14:54:19 -0000
Message-ID: <171319285947.1404431.10511638360885784487@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240412182703.19916-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: PLL refactoring
URL   : https://patchwork.freedesktop.org/series/132392/
State : warning

== Summary ==

Error: dim checkpatch failed
14bdc0367571 drm/i915: Replace hand rolled PLL state dump with intel_dpll_dump_hw_state()
c07ae2c34376 drm/i915: Use printer for the rest of PLL debugfs dump
6bddd5b19e86 drm/i915: Rename PLL hw_state variables/arguments
-:345: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#345: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2852:
+		hw_state->div0 = TGL_DPLL0_DIV0_AFC_STARTUP(i915->display.vbt.override_afc_startup_val);

total: 0 errors, 1 warnings, 0 checks, 604 lines checked
cc06bcedebfb drm/i915: Introduce some local PLL state variables
556a7d6a2bd1 drm/i915: Extract ilk_fb_cb_factor()
ec8d5fca4aca drm/i915: Extract ilk_dpll_compute_fp()
c98904ae3912 drm/i915: Extract i9xx_dpll_get_hw_state()
b71270cf5abf drm/i915: Pass the PLL hw_state to pll->enable()
38c9026555e2 drm/i915: Extract i965_dpll_md()
ae27779441b1 drm/i915: Extract {i9xx,i8xx,ilk}_dpll()
c673e5a40815 drm/i915: Inline {i9xx,ilk}_update_pll_dividers()
a113d7ae2667 drm/i915: Modernize i9xx_pll_refclk()
edf028ec40c2 drm/i915: Drop pointless 'crtc' argument from *_crtc_clock_get()
1e12b7a384c9 drm/i915: s/pipe_config/crtc_state/ in legacy PLL code
560a05be0d68 drm/i915: Add local DPLL 'hw_state' variables
00fd678e3c41 drm/i915: Carve up struct intel_dpll_hw_state
e4b09211a12c drm/i915: Unionize dpll_hw_state
780e3fc506c5 drm/i915: Suck snps/cx0 PLL states into dpll_hw_state
-:119: WARNING:LONG_LINE: line length of 114 exceeds 100 columns
#119: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4015:
+		crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);

-:130: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#130: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:4025:
+	crtc_state->port_clock = intel_mpllb_calc_port_clock(encoder, &crtc_state->dpll_hw_state.mpllb);

-:211: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#211: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1225:
+	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);

total: 0 errors, 3 warnings, 0 checks, 239 lines checked


