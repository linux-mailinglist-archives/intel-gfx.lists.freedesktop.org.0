Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 771E4A360B7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:44:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C54CD10E14C;
	Fri, 14 Feb 2025 14:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A53710E14C;
 Fri, 14 Feb 2025 14:44:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Allow_display_PHYs_to_reset_power_state_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kahola" <mika.kahola@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2025 14:44:17 -0000
Message-ID: <173954425736.2059388.8421071010169080882@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250214140442.560378-1-mika.kahola@intel.com>
In-Reply-To: <20250214140442.560378-1-mika.kahola@intel.com>
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

Series: drm/i915/display: Allow display PHYs to reset power state (rev3)
URL   : https://patchwork.freedesktop.org/series/144102/
State : warning

== Summary ==

Error: dim checkpatch failed
81afe0ccad86 drm/i915/display: Drop crtc_state from C10/C20 pll programming
-:60: WARNING:LONG_LINE: line length of 122 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:2052:
+					      const struct intel_c10pll_state * const *tables, int port_clock, bool is_dp,

-:256: WARNING:LONG_LINE: line length of 117 exceeds 100 columns
#256: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3093:
+			      intel_crtc_has_dp_encoder(crtc_state), crtc_state->port_clock, crtc_state->lane_count);

-:258: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#258: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3095:
+
+}

total: 0 errors, 2 warnings, 1 checks, 226 lines checked
e2cb013f4ec8 drm/i915/display: Allow display PHYs to reset power state
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
1. Follow the PLL Enable Sequence, using any valid frequency such as DP 1.62 GHz.

-:38: ERROR:CODE_INDENT: code indent should use tabs where possible
#38: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3566:
+        struct intel_digital_port *dig_port = enc_to_dig_port(encoder);$

-:38: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#38: FILE: drivers/gpu/drm/i915/display/intel_cx0_phy.c:3566:
+        struct intel_digital_port *dig_port = enc_to_dig_port(encoder);$

total: 1 errors, 2 warnings, 0 checks, 89 lines checked


