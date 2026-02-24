Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOJUKiGtnWmgQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 424D5188057
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 14:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF97210E151;
	Tue, 24 Feb 2026 13:52:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FP5Bpzeq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65D410E151;
 Tue, 24 Feb 2026 13:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771941151; x=1803477151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mxrGs7g1nTPLB0PLjjF1Ej9OQuSUxkcnlPBF6uO48Ys=;
 b=FP5BpzeqrXimvLVdew/HIuoH+fojT18tG4NzNQ3MajvW7p3KzgqNSL9/
 3ehVpCgRSh/FocUxpjqVHiZRzprwUGNUCILcCGeYJ8PBO3CF0x00rnN0a
 sMHcBQ8uzAydx44Ttqh/BkB6cx+rHVQjwsGosozFndy84QJV4Cgem4PDo
 Lizjo9OjHkiD2LBabDDsv0C7cT/xXrUhs9xxwcb7Rj+JmXFvmM/QGLa44
 qB9rZj3BCCh06/EIW0rU3Xb8+wR+M1pCz/+VJlZvK/2bgAETeKTKm6wlI
 EJ/iUhpfa/QBKV0kkU99GnvMeZtanmVG6mMmIZpeyvkwpSVyfo+t53I4Q w==;
X-CSE-ConnectionGUID: EfuN7LFzRLWN33Gx35xoRg==
X-CSE-MsgGUID: T1RWEPMZQ9qLMqMN5lVJRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="60530990"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="60530990"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:30 -0800
X-CSE-ConnectionGUID: o6WPSqZFREGod/dxJ6i2rQ==
X-CSE-MsgGUID: qda5uNNIRsy8QYkqHb+LmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="215925204"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.201])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 05:52:28 -0800
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH v4 01/16] drm/i915/display: remove enum macro magic in
 intel_display_wa()
Date: Tue, 24 Feb 2026 15:49:48 +0200
Message-ID: <20260224135208.140752-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260224135208.140752-1-luciano.coelho@intel.com>
References: <20260224135208.140752-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 424D5188057
X-Rspamd-Action: no action

There's not much use in passing a number to the macro and let it
convert that into the enum and a string.  It just hides the symbols.

Remove the number to enum conversion magic in intel_display_wa().

This has the side-effect of changing the print in the drm_WARN() that
is issued when the number is not implemented, but that is moot anyway
and can be changed later to something cleaner if needed.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c              | 5 +++--
 drivers/gpu/drm/i915/display/intel_display.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_wa.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_display_wa.h         | 2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c                | 8 ++++----
 drivers/gpu/drm/i915/display/intel_gmbus.c              | 6 +++---
 drivers/gpu/drm/i915/display/skl_scaler.c               | 2 +-
 8 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 38331e899519..7767f8c198da 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1870,7 +1870,7 @@ static void icl_cdclk_pll_disable(struct intel_display *display)
 	 *      after the PLL is enabled (which is already done as part of the
 	 *      normal flow of _bxt_set_cdclk()).
 	 */
-	if (intel_display_wa(display, 13012396614))
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_13012396614))
 		intel_de_rmw(display, CDCLK_CTL, MDCLK_SOURCE_SEL_MASK, MDCLK_SOURCE_SEL_CD2XCLK);
 
 	intel_de_rmw(display, BXT_DE_PLL_ENABLE,
@@ -2186,7 +2186,8 @@ static u32 bxt_cdclk_ctl(struct intel_display *display,
 		 * icl_cdclk_pll_disable().  Here we are just making sure
 		 * we keep the expected value.
 		 */
-		if (intel_display_wa(display, 13012396614) && vco == 0)
+		if (intel_display_wa(display, INTEL_DISPLAY_WA_13012396614) &&
+		    vco == 0)
 			val |= MDCLK_SOURCE_SEL_CD2XCLK;
 		else
 			val |= xe2lpd_mdclk_source_sel(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 33821cc2948b..eea2d3ca942a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1071,7 +1071,7 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (audio_enabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_enable(state, crtc);
 
-	if (intel_display_wa(display, 14011503117)) {
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011503117)) {
 		if (old_crtc_state->pch_pfit.enabled != new_crtc_state->pch_pfit.enabled)
 			adl_scaler_ecc_unmask(new_crtc_state);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 9c8d29839caf..1e03187dbd38 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -249,7 +249,7 @@ static void hsw_power_well_post_enable(struct intel_display *display,
 	if (irq_pipe_mask) {
 		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
 
-		if (intel_display_wa(display, 22021048059))
+		if (intel_display_wa(display, INTEL_DISPLAY_WA_22021048059))
 			dss_pipe_gating_enable_disable(display, irq_pipe_mask, false);
 	}
 }
@@ -258,7 +258,7 @@ static void hsw_power_well_pre_disable(struct intel_display *display,
 				       u8 irq_pipe_mask)
 {
 	if (irq_pipe_mask) {
-		if (intel_display_wa(display, 22021048059))
+		if (intel_display_wa(display, INTEL_DISPLAY_WA_22021048059))
 			dss_pipe_gating_enable_disable(display, irq_pipe_mask, true);
 
 		gen8_irq_power_well_pre_disable(display, irq_pipe_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index c2ccdca2c2f3..1d8340b36c01 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -87,7 +87,7 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 	case INTEL_DISPLAY_WA_22021048059:
 		return IS_DISPLAY_VER(display, 14, 35);
 	default:
-		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
+		drm_WARN(display->drm, 1, "Missing Wa: %s\n", name);
 		break;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 767420d5f406..06c1f62c0f6d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -40,6 +40,6 @@ enum intel_display_wa {
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
 
 #define intel_display_wa(__display, __wa) \
-	__intel_display_wa((__display), INTEL_DISPLAY_WA_##__wa, __stringify(__wa))
+	__intel_display_wa((__display), __wa, __stringify(__wa))
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 91de38379282..b3a0766736fa 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -958,7 +958,7 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 	 * Fixes: Screen flicker with FBC and Package C state enabled
 	 * Workaround: Forced SLB invalidation before start of new frame.
 	 */
-	if (intel_display_wa(display, 22014263786))
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_22014263786))
 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
 			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
 
@@ -980,7 +980,7 @@ static void fbc_sys_cache_update_config(struct intel_display *display, u32 reg,
 	 * Fixes: SoC hardware issue in read caching
 	 * Workaround: disable cache read setting which is enabled by default.
 	 */
-	if (!intel_display_wa(display, 14025769978))
+	if (!intel_display_wa(display, INTEL_DISPLAY_WA_14025769978))
 		/* Cache read enable is set by default */
 		reg |= FBC_SYS_CACHE_READ_ENABLE;
 
@@ -1613,7 +1613,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	if (intel_display_wa(display, 16023588340)) {
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_16023588340)) {
 		plane_state->no_fbc_reason = "Wa_16023588340";
 		return 0;
 	}
@@ -1623,7 +1623,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Fixes: Underrun during media decode
 	 * Workaround: Do not enable FBC
 	 */
-	if (intel_display_wa(display, 15018326506)) {
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_15018326506)) {
 		plane_state->no_fbc_reason = "Wa_15018326506";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 38706017c0c6..df48f27f1cc1 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -250,7 +250,7 @@ static u32 get_reserved(struct intel_gmbus *bus)
 	preserve_bits |= GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE;
 
 	/* Wa_16025573575: the masks bits need to be preserved through out */
-	if (intel_display_wa(display, 16025573575))
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
 		preserve_bits |= GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_VAL_MASK |
 				 GPIO_DATA_DIR_MASK | GPIO_DATA_VAL_MASK;
 
@@ -342,7 +342,7 @@ intel_gpio_pre_xfer(struct i2c_adapter *adapter)
 	if (display->platform.pineview)
 		pnv_gmbus_clock_gating(display, false);
 
-	if (intel_display_wa(display, 16025573575))
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
 		ptl_handle_mask_bits(bus, true);
 
 	set_data(bus, 1);
@@ -363,7 +363,7 @@ intel_gpio_post_xfer(struct i2c_adapter *adapter)
 	if (display->platform.pineview)
 		pnv_gmbus_clock_gating(display, true);
 
-	if (intel_display_wa(display, 16025573575))
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_16025573575))
 		ptl_handle_mask_bits(bus, false);
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4c4deac7f9c8..7c5cb188ebf0 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -823,7 +823,7 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 			crtc_state->scaler_state.scaler_id < 0))
 		return;
 
-	if (intel_display_wa(display, 14011503117))
+	if (intel_display_wa(display, INTEL_DISPLAY_WA_14011503117))
 		adl_scaler_ecc_mask(crtc_state);
 
 	drm_rect_init(&src, 0, 0,
-- 
2.51.0

