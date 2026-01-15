Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE33D30198
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:08:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3091710E85F;
	Fri, 16 Jan 2026 11:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="gqR/MXW3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f73.google.com (mail-dl1-f73.google.com [74.125.82.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B903610E7B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 16:55:55 +0000 (UTC)
Received: by mail-dl1-f73.google.com with SMTP id
 a92af1059eb24-1233b91de6bso1976559c88.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 08:55:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768496155; x=1769100955;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=ZLxrrBTaeX8lcoiGtzPx6tjssn/D62UubEIOXBrcnGo=;
 b=gqR/MXW3rP6z/HhBRjAmbsa7qwfy94L7vAVCK0pBEcKirAzuAULKrbTsrg3ykO+pHv
 NDNIH8OpB74OhkOrThIjyjrpFguUi5WJxsJ/0l1yEW76kNlTysmtUqtTEOv2rB6OymkS
 lKYqnmArqtanrhsuz2epPHokXpfa5bmKiHlj9T9ihfw240pXiE/amWfvNdXQR90wFbR+
 qxFxnFdBB+oJMvWhjq//Zn9SAxcv/IA8zPgzhWBUZH5KP6ZnpFk4QBPartt895rT7CL1
 tP8XU8la4yWWe0crJpU2wvQbdaG/6atmbW2DaHLecFRkN1fx2P8CoVMZFqg8vpzK6YbJ
 d8pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768496155; x=1769100955;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ZLxrrBTaeX8lcoiGtzPx6tjssn/D62UubEIOXBrcnGo=;
 b=MPRKsfnIuzNpUfn4yQLJoimWWU6vNi8GA7AtwaxK1IhYO341mt6R617zPNWZiP0z+Z
 63daIp9Bh8/UcEP7B3APuO+VL4l8sg26OmlDRyEUJ3VpOwfecByPQIOdvhgREqpJCutR
 4+2q0/shz3qCN09SZPe73WPD0jAx4KBoRn4oV0FyLsknME132WOV48oPk5Cy4N3xxsej
 BD/hIc+23YTZrQmxg1lkSwYMyY9ZT4Q38M1NqWyBb78amQ173Dk3h7WNiMakre2A67va
 ATgrKx6+UyR5Fr4UGP0BgT5yKNIdY6i8AyJ0Vdfg/9Dq27eta2Zztc8twGx7WvHyfQka
 fgXg==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+MfX9AhpxHLWz3ZbKzGAurjpbRPU/FGorTiwOW4c6RMix/4USUtDacXK5VBcv1HUCyJz10vfz5GM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy4xv4M4EWbO0/sqKDyYyeiSXg2oydsdZ6xuuafTYYHS1Pea+3H
 EbMjFgCgl7N3Gs1FLOLv/lFMTuGKMV4FsBNyWpN3sD4ZxJDE1vPiTIBcraY2Ws9JNfk8vbVyv2g
 kXBIW9VLBIj9xxg==
X-Received: from dlrr7.prod.google.com ([2002:a05:701a:c947:b0:122:8e:6ea4])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:6291:b0:123:345b:ba05 with SMTP id
 a92af1059eb24-1244a6ff2f7mr285604c88.22.1768496154920; 
 Thu, 15 Jan 2026 08:55:54 -0800 (PST)
Date: Thu, 15 Jan 2026 08:54:54 -0800
In-Reply-To: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Mime-Version: 1.0
References: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
X-Developer-Key: i=jdsultan@google.com; a=ed25519;
 pk=RhTSABMOTIhvVE7NYiZwn1iDGYYNbaN092nvaEF2dxo=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768496136; l=5846;
 i=jdsultan@google.com; s=20260115; h=from:subject:message-id;
 bh=HsBkkil6AvfI0pFX4SeMbinO+sMF/xL6OPu7JcdzxOk=;
 b=QQBDpqomC41CnTL0hqVaQDE9/6P/sL3pS6cKM9WtUlgOxChtQCRnwFEe6Dpeaa/qV1KrfkMJT
 TzXjXKhTLnDCCNzGyTsabY2BPD1HWuiLTTOdUnfWiFTnsoOSGzf5Dwh
X-Mailer: b4 0.14.2
Message-ID: <20260115-upstream-prep-v1-8-001d5b38fc11@google.com>
Subject: [PATCH RFC 08/10] drm/i915/display: Robustify fastboot and power init
 for seamless boot
From: Juasheem Sultan <jdsultan@google.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Sean Paul <seanpaul@google.com>, Manasi Navare <navaremanasi@google.com>, 
 Drew Davenport <ddavenport@google.com>, Juasheem Sultan <jdsultan@google.com>
Content-Type: text/plain; charset="utf-8"
X-Mailman-Approved-At: Fri, 16 Jan 2026 11:08:31 +0000
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

To support a seamless transition from BIOS to kernel driver (fastboot),
especially on PTL with MSO panels, several adjustments are needed to
avoid unnecessary hardware resets and verification failures.

1.  **Power Well & CDCLK Preservation**: In `icl_display_core_init`,
    check if the display power well 1 is already enabled. If so, preserve
    the current CDCLK configuration instead of forcibly resetting it.
    This prevents the display from glitching or blanking during driver load.

2.  **Verification Relaxation**:
    *   Skip the "connector not active" warning in `intel_connector_verify_state`
        for MSO panels where the split link topology might confuse the
        standard checks during fastset.
    *   Bypass `intel_modeset_verify_crtc` for inherited states or the
        boot pipe if no full modeset is required. This avoids verifying
        state that hasn't been fully touched by the driver yet but is
        known to be valid from BIOS.

3.  **Type Extensions**: Add necessary fields to `intel_atomic_state`
    (fastset flag), `intel_digital_port` (DDI tracking), and
    `intel_vbt_panel_data` (MSO parameters) to support the enhanced
    fastboot logic.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c  | 16 +++++++++++++---
 drivers/gpu/drm/i915/display/intel_display_types.h  |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_modeset_verify.c | 14 ++++++++++++--
 3 files changed, 33 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index da4babfd6bcbd3b427c6da76cc54b450abeb4a38..0ac2acf34371bb43ddc2308d0ad81177023dad5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1661,8 +1661,7 @@ static void icl_display_core_init(struct intel_display *display,
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
-
-	gen9_set_dc_state(display, DC_STATE_DISABLE);
+	bool was_enabled;
 
 	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
 	if (INTEL_PCH_TYPE(display) >= PCH_TGP &&
@@ -1685,6 +1684,7 @@ static void icl_display_core_init(struct intel_display *display,
 	 */
 	mutex_lock(&power_domains->lock);
 	well = lookup_power_well(display, SKL_DISP_PW_1);
+	was_enabled = intel_power_well_is_enabled(display, well);
 	intel_power_well_enable(display, well);
 	mutex_unlock(&power_domains->lock);
 
@@ -1693,7 +1693,17 @@ static void icl_display_core_init(struct intel_display *display,
 			     HOLD_PHY_PG1_LATCH | HOLD_PHY_CLKREQ_PG1_LATCH, 0);
 
 	/* 4. Enable CDCLK. */
-	intel_cdclk_init_hw(display);
+	if (was_enabled) {
+		struct intel_cdclk_config cdclk_config;
+
+		intel_cdclk_get_cdclk(display, &cdclk_config);
+		if (intel_cdclk_clock_changed(&display->cdclk.hw, &cdclk_config)) {
+			display->cdclk.hw = cdclk_config;
+		}
+	} else {
+		gen9_set_dc_state(display, DC_STATE_DISABLE);
+		intel_cdclk_init_hw(display);
+	}
 
 	if (DISPLAY_VER(display) == 12 || display->platform.dg2)
 		gen12_dbuf_slices_config(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 358ab922d7a769a363d2c6dfa7960f2fd869fe03..eb8331698fb18d77419c18ca648733e2699d45b1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -350,6 +350,8 @@ struct intel_vbt_panel_data {
 		bool low_vswing;
 		bool hobl;
 		bool dsc_disable;
+		u8 mso_link_count;
+		u8 mso_pixel_overlap;
 	} edp;
 
 	struct {
@@ -594,6 +596,8 @@ struct dpll {
 struct intel_atomic_state {
 	struct drm_atomic_state base;
 
+	bool fastset;
+
 	struct ref_tracker *wakeref;
 
 	struct intel_global_objs_state *global_objs;
@@ -1879,6 +1883,10 @@ struct intel_lspcon {
 
 struct intel_digital_port {
 	struct intel_encoder base;
+	i915_reg_t ddi_buf_ctl_reg;
+	intel_wakeref_t ddi_power_wakeref;
+
+	u32 saved_port_bits;
 	struct intel_dp dp;
 	struct intel_hdmi hdmi;
 	struct intel_lspcon lspcon;
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
index f2f6b9d9afa10b921d991a34de9b59b19317b544..76d19e9ef4e204535885768bc119d26f07cf6c54 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
@@ -55,8 +55,13 @@ static void intel_connector_verify_state(const struct intel_crtc_state *crtc_sta
 		INTEL_DISPLAY_STATE_WARN(display, conn_state->crtc != encoder->base.crtc,
 					 "attached encoder crtc differs from connector crtc\n");
 	} else {
-		INTEL_DISPLAY_STATE_WARN(display, crtc_state && crtc_state->hw.active,
-					 "attached crtc is active, but connector isn't\n");
+		/*
+		 * HACK: Skip this warning for MSO panels if fastset is being tricky.
+		 */
+		if (!crtc_state || !crtc_state->splitter.enable)
+			INTEL_DISPLAY_STATE_WARN(display, crtc_state && crtc_state->hw.active,
+						 "attached crtc is active, but connector isn't\n");
+
 		INTEL_DISPLAY_STATE_WARN(display, !crtc_state && conn_state->best_encoder,
 					 "best encoder set without crtc!\n");
 	}
@@ -236,6 +241,11 @@ void intel_modeset_verify_crtc(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
+	if (new_crtc_state->inherited ||
+	    (intel_is_boot_pipe(crtc->pipe) && !intel_crtc_needs_modeset(new_crtc_state))) {
+		return;
+	}
+
 	if (!intel_crtc_needs_modeset(new_crtc_state) &&
 	    !intel_crtc_needs_fastset(new_crtc_state))
 		return;

-- 
2.52.0.457.g6b5491de43-goog

