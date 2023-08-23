Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6878178641F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 01:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E3D10E495;
	Wed, 23 Aug 2023 23:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com
 [IPv6:2607:f8b0:4864:20::230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F0E210E495
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 23:52:06 +0000 (UTC)
Received: by mail-oi1-x230.google.com with SMTP id
 5614622812f47-3a85b9c6ccdso2667039b6e.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 16:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692834725; x=1693439525;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=9YLvMhWakYfsXa2R+iVoujr0MQNhKcWaRAjB5FwWKzo=;
 b=ChiY26o08kDe33/i2rsu+RXin4BhMwlGmYhOqffZ+xpcXY/HjBm8X6I/EW+3STjxw6
 e/9JuEZ3E4pMGbK2neIyft9yy2mNjr4K0T08d7LIbn63v5XFweHhml6OaJrKUa9HYF4e
 C2rSAqecI7y3fp64ukRIN3K0sQB/0a7QnMifY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692834725; x=1693439525;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9YLvMhWakYfsXa2R+iVoujr0MQNhKcWaRAjB5FwWKzo=;
 b=JpHydSVj7NRTR42QKBSdnnO5E0Fuy66taYpHYXimkEQf6xDivxUWDMr8KGvfJy2wyZ
 3qOtCrAHS5w1M0eXHQ+hTm07uavz00Ei1PatZH3Eflfg9/nFN1OuKV/RMND+SjQTRwo6
 XkGhvhlsdTCBq9HniwB2u2ceX1qsATvXsjgw3xgXRBDzHjOyrAbjDAyKa58LeIAal4Jl
 ykEfL4iLPKUcq+LmLDdYMy9Vf3yPpdzHom5DKhFZfxSF7ZXjWwbF8MQ0vt5Z1REGv3Ti
 PBIMXTnz8Esmf5gRv8Z/Bx9UgOXwMj4E+sUfYmYJjKP9cvEDOKvxWK/tAtkVvNNjQDre
 IjKg==
X-Gm-Message-State: AOJu0YytKIQb1UpMv0jIu2MPSNbBpqOFWj5PiqHaaZb6v/Q+X032KYOo
 SZj96uBJYqIqGZ/d/xKR+79mwDrd6Wohnitl5B0=
X-Google-Smtp-Source: AGHT+IFLay48CAW94kSsbPUwKskxwM1So38ofjHdEIjoYW+TrYWj/Il3RBfYyy040I2sS60QmopZsg==
X-Received: by 2002:a05:6808:f0d:b0:3a8:5fd6:f4cf with SMTP id
 m13-20020a0568080f0d00b003a85fd6f4cfmr10894521oiw.22.1692834725137; 
 Wed, 23 Aug 2023 16:52:05 -0700 (PDT)
Received: from navaremanasi.c.googlers.com.com
 (199.72.83.34.bc.googleusercontent.com. [34.83.72.199])
 by smtp.gmail.com with ESMTPSA id
 l14-20020a62be0e000000b00682562bf477sm9892960pff.82.2023.08.23.16.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Aug 2023 16:52:04 -0700 (PDT)
From: Manasi Navare <navaremanasi@chromium.org>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 23:51:59 +0000
Message-ID: <20230823235159.2140276-1-navaremanasi@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/vrr: Compute VRR min/max based
 on highest clock mode for DRRS panel
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of a DRRS panel, there is a preferred panel mode and there is
a downclock mode with lower pixel clock. But the Vtotal for both remains
the same. This means even in downclocking mode the VRR Vtotal min/max
should remain the same.
So in this case always use the highest clock mode to compute VRR
parameters.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp.h  | 2 ++
 drivers/gpu/drm/i915/display/intel_vrr.c | 7 ++++---
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7067ee3a4bd3..c572a018ce57 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1509,8 +1509,8 @@ static bool has_seamless_m_n(struct intel_connector *connector)
 		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
 }
 
-static int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
-			       const struct drm_connector_state *conn_state)
+int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
+			const struct drm_connector_state *conn_state)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 788a577ebe16..3c9866356359 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -119,6 +119,8 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 				bool bigjoiner);
 bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 			     int hdisplay, int clock);
+int intel_dp_mode_clock(const struct intel_crtc_state *crtc_state,
+			const struct drm_connector_state *conn_state);
 
 static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 88e4759b538b..18a4e0e4e696 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -8,6 +8,7 @@
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_vrr.h"
 
 bool intel_vrr_is_capable(struct intel_connector *connector)
@@ -106,7 +107,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		to_intel_connector(conn_state->connector);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_info *info = &connector->base.display_info;
-	int vmin, vmax;
+	int vmin, vmax, clock = intel_dp_mode_clock(crtc_state, conn_state);
 
 	if (!intel_vrr_is_capable(connector))
 		return;
@@ -114,9 +115,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
-	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
+	vmin = DIV_ROUND_UP(clock * 1000,
 			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
-	vmax = adjusted_mode->crtc_clock * 1000 /
+	vmax = clock * 1000 /
 		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
 
 	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
-- 
2.42.0.rc1.204.g551eb34607-goog

