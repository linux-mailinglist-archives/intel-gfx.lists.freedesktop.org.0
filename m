Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A36A22011
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 16:19:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A2610E816;
	Wed, 29 Jan 2025 15:19:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0EA210E816;
 Wed, 29 Jan 2025 15:19:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Allow_display_PHYs_to_reset_power_state?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2025 15:19:37 -0000
Message-ID: <173816397765.2457158.1649401998623210683@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250129130105.198817-1-mika.kahola@intel.com>
In-Reply-To: <20250129130105.198817-1-mika.kahola@intel.com>
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

Series: drm/i915/display: Allow display PHYs to reset power state
URL   : https://patchwork.freedesktop.org/series/144102/
State : warning

== Summary ==

Error: dim checkpatch failed
74a393b566c5 drm/i915/display: Drop crtc_state from C10/C20 pll programming
-:53: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#53: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2053:
+					      const struct intel_c10pll_state * const *tables, int port_clock, bool is_dp,

-:94: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#94: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2083:
+						 crtc_state->port_clock, intel_crtc_has_dp_encoder(crtc_state),

-:248: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#248: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3092:
+			      intel_crtc_has_dp_encoder(crtc_state), crtc_state->port_clock, crtc_state->lane_count);

-:250: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#250: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3094:
+
+}

total: 0 errors, 3 warnings, 1 checks, 225 lines checked
04f9a9dc3240 drm/i915/display: Allow display PHYs to reset power state
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.

-:52: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3587:
+			if (REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val) == XELPDP_DDI_CLOCK_SELECT_NONE) {

-:55: WARNING:LONG_LINE: line length of 126 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3590:
+				intel_c10pll_calc_state_from_table(encoder, mtl_c10_edp_tables, port_clock, true, &pll_state);

-:55: WARNING:LINE_SPACING: Missing a blank line after declarations
#55: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3590:
+				int port_clock = 162000;
+				intel_c10pll_calc_state_from_table(encoder, mtl_c10_edp_tables, port_clock, true, &pll_state);

total: 0 errors, 4 warnings, 0 checks, 72 lines checked


