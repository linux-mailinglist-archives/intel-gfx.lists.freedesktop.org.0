Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEBD788CFD
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 18:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44E110E6D4;
	Fri, 25 Aug 2023 16:12:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7071A10E6D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 16:12:23 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-1bc5acc627dso8986055ad.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 09:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692979942; x=1693584742;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tJhqP3tejjOdIKAFC8RKhNxAbYoeDP1UgG4qV9Ed020=;
 b=fUu0GoGiCgtcoNSwuk0x5VTAc8PE/qvOv5H5KjK/AmXblhuDfk2Vf0K3GeQYhLIjnC
 p25JVrwvKo27uTCLLR3Qp5g8IrEp/APFWoc9Mj4oTKxNDyv4TeZlSsY9sXalJrNGtgJB
 Zr3har5881GQ/L6uBhzPCU/YPaIigSezTBjT0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692979942; x=1693584742;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tJhqP3tejjOdIKAFC8RKhNxAbYoeDP1UgG4qV9Ed020=;
 b=NzNWDJe4/3qAbkedhmdnqJ0cvhgMHzLJ+jk1mkNnacpw+fYeKhger8eC8z+yX04Xii
 HnIx9hdfmSUEzTvNYWk4uVNOcSPTRLW60WXjpK44WMrQH2g+iJmJUpT1FS5YDLbchnuz
 1NS1WKuQG9lnIKZ58DjeyIF8JRIrLcVfaT5mwrcYAdh+DB69s8r3apw+lNnAT6uUoy2D
 +rdPRun8YqUVamvt/LXff2RcZlBmz05Ks3tzNCMbPckERAi7/gK9N2CKyUv7fQYvpt4t
 iG5vS3QSB5DVOUHU2We+76y0G0bACdVCtxHYtNB37ximT54yuSE19IUzjbn22Pt9PMsS
 mSzA==
X-Gm-Message-State: AOJu0YxlSrDx7mytWPNKxbhVHHeWQKffmcGTv7FNTH+0Phd3Kcj+P33u
 1GGZ3iiw+QC/hCDOMjTe8F0IdzDQ0RwOtVlNOT0=
X-Google-Smtp-Source: AGHT+IG5Herfttp12oT3iftI3NijVcQsTHWu43Qf3LqiTMiLF0vpLcTk8XfNpoVwhbFcJsyVol1Qrw==
X-Received: by 2002:a17:902:a40a:b0:1bd:cebc:2e03 with SMTP id
 p10-20020a170902a40a00b001bdcebc2e03mr14678665plq.52.1692979942652; 
 Fri, 25 Aug 2023 09:12:22 -0700 (PDT)
Received: from navaremanasi.c.googlers.com.com
 (199.72.83.34.bc.googleusercontent.com. [34.83.72.199])
 by smtp.gmail.com with ESMTPSA id
 e18-20020a17090301d200b001b8a53dde99sm1900096plh.296.2023.08.25.09.12.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Aug 2023 09:12:14 -0700 (PDT)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 16:11:29 +0000
Message-ID: <20230825161129.2811298-2-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230825161129.2811298-1-navaremanasi@chromium.org>
References: <20230825161129.2811298-1-navaremanasi@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display/vrr: Update VRR parameters
 in fastset
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
Cc: Drew Davenport <ddavenport@chromium.org>,
 Jani Nikula <jani.nikula@intel.com>, Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In Seamless refresh rate switching when we throttle refresh rate
VRR parameters get updated.
Update these in fastset in update_crtc() hook before enabling VRR
so that the VRR range now reflects the throttled refresh rate
correctly.

This has been tested for Dual refresh rate + VRR use cases
together.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9154
Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_display.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 26d3d2fe0485..cec3912d14fb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -925,6 +925,16 @@ static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 	return is_disabling(vrr.enable, old_crtc_state, new_crtc_state);
 }
 
+static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
+			       const struct intel_crtc_state *new_crtc_state)
+{
+	return (old_crtc_state->vrr.flipline != new_crtc_state->vrr.flipline ||
+		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
+		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
+		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
+		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full);
+}
+
 #undef is_disabling
 #undef is_enabling
 
@@ -6570,6 +6580,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
+	bool vrr_update_in_seamless_m_n;
 
 	if (old_crtc_state->inherited ||
 	    intel_crtc_needs_modeset(new_crtc_state)) {
@@ -6577,7 +6588,14 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 			intel_dpt_configure(crtc);
 	}
 
-	if (vrr_enabling(old_crtc_state, new_crtc_state)) {
+	if (!modeset && new_crtc_state->seamless_m_n &&
+	    vrr_params_changed(old_crtc_state, new_crtc_state)) {
+		intel_vrr_set_transcoder_timings(new_crtc_state);
+		vrr_update_in_seamless_m_n = true;
+	}
+
+	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
+	    vrr_update_in_seamless_m_n) {
 		intel_vrr_enable(new_crtc_state);
 		intel_crtc_update_active_timings(new_crtc_state,
 						 new_crtc_state->vrr.enable);
-- 
2.42.0.rc1.204.g551eb34607-goog

