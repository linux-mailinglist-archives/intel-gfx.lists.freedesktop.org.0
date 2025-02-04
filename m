Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001F7A27093
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 12:45:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0782110E03D;
	Tue,  4 Feb 2025 11:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E84F10E03D;
 Tue,  4 Feb 2025 11:45:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Allow_display_PHYs_to_reset_power_state_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Feb 2025 11:45:17 -0000
Message-ID: <173866951744.826766.15737684426076164124@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250204105358.284687-1-mika.kahola@intel.com>
In-Reply-To: <20250204105358.284687-1-mika.kahola@intel.com>
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

Series: drm/i915/display: Allow display PHYs to reset power state (rev2)
URL   : https://patchwork.freedesktop.org/series/144102/
State : warning

== Summary ==

Error: dim checkpatch failed
bf57b86fbb00 drm/i915/display: Drop crtc_state from C10/C20 pll programming
-:57: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#57: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2053:
+					      const struct intel_c10pll_state * const *tables, int port_clock, bool is_dp,

-:98: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#98: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2083:
+						 crtc_state->port_clock, intel_crtc_has_dp_encoder(crtc_state),

-:252: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#252: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3092:
+			      intel_crtc_has_dp_encoder(crtc_state), crtc_state->port_clock, crtc_state->lane_count);

-:254: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#254: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3094:
+
+}

total: 0 errors, 3 warnings, 1 checks, 225 lines checked
b698d92d4b09 drm/i915/display: Allow display PHYs to reset power state
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.

-:41: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#41: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3572:
+}
+/*

-:71: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#71: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3602:
+		intel_c10pll_calc_state_from_table(encoder, mtl_c10_edp_tables, port_clock, true, &pll_state);

total: 0 errors, 2 warnings, 1 checks, 82 lines checked


