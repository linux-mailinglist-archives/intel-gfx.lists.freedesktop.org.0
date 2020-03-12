Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9642183918
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 19:56:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 387796EB2A;
	Thu, 12 Mar 2020 18:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com
 [IPv6:2607:f8b0:4864:20::74a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47F576EB30
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 18:56:47 +0000 (UTC)
Received: by mail-qk1-x74a.google.com with SMTP id l27so5209860qkl.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 11:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=kJTSRv0ipA/LGaJ/irvxa1s6RApiBKOCTBDPilrDk+I=;
 b=Q0emyiH4rIcLyUi7f84W7F55EBn3KSNPdY897wfO+mXCpz1ySv8ZRZRto5jAR4gIQi
 0O+khqavkm6BnEblYbBum4WMyKGv0Z722OcGmZTMjBdxnW6Ad8F7xLtkufO7aHToMwlb
 TOXy1fjskCEP6mi4srQjgxtN70QVTwDmvlhS/rcfTGxUgw9QucI2LzxUC1IMIASYFCK/
 PYGu0n7IN6IBl5MnE8xdyv1KAiCmvjesk/bpjpl9WZcaEajBPnhOlQ7dNukrIPuqdfZ6
 O2jLXcNw8z96wgrZ2dnT1j3nSH1xyvv2Zdg7/PRczenbo5D+f+4tC2PCE6FBPfOq2g1M
 Tx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=kJTSRv0ipA/LGaJ/irvxa1s6RApiBKOCTBDPilrDk+I=;
 b=tzXQwkiX1iVuk8iCooDlh1E1OhT4eNuHzlDjGq4XMrXsCWMAPupQPmsXPfFqd3y2cs
 2jiArxOgI7QUV/8iHIi/L/TasLmcCKJ6T74Tpied7q+cAp6Jmdk2+/Jp12B1pLACinSe
 IuFw2dvA1mF72GPz1rEL9G7zsKjxHnZnQOgSmruycufD9NHV53I/DpgDImsDyq81Rvz2
 ffbNUq8zk0aAMVMyT75q1IjJAOiwj1kBAWwIcunkDDn+d7EZgEBeY+qyPIY9UOsll4//
 Tf95JCZGFBZswsRwZ8a7SmqmgHlkm8iVqqxqfPTYhJq0vqDZqP+clZaBoWcBSQG0arsz
 3+uA==
X-Gm-Message-State: ANhLgQ0z1STUVgYPSqcIA7nJsJr2SfSDPT/MKjSohlA+bb1jgvHQFucU
 flrWOUNReKbmGsVYKIBWvT+ghFPfq24T
X-Google-Smtp-Source: ADFU+vueXXRsbKUuDgz64Asxn3hRuSV3ePwURwTunWQv2Wfz8U72NIAnhYvRMF43t7S7B8JDCPzIqLkHoR33
X-Received: by 2002:a25:e88:: with SMTP id 130mr10846597ybo.174.1584039406189; 
 Thu, 12 Mar 2020 11:56:46 -0700 (PDT)
Date: Thu, 12 Mar 2020 11:56:29 -0700
In-Reply-To: <20200312185629.141280-1-rajatja@google.com>
Message-Id: <20200312185629.141280-6-rajatja@google.com>
Mime-Version: 1.0
References: <20200312185629.141280-1-rajatja@google.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
From: Rajat Jain <rajatja@google.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 "=?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?=" <ville.syrjala@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>, 
 "=?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?=" <jose.souza@intel.com>,
 linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 gregkh@linuxfoundation.org, mathewk@google.com, 
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Pavel Machek <pavel@denx.de>, seanpaul@google.com,
 Duncan Laurie <dlaurie@google.com>, 
 jsbarnes@google.com, Thierry Reding <thierry.reding@gmail.com>,
 mpearson@lenovo.com, Nitin Joshi1 <njoshi1@lenovo.com>,
 Sugumaran Lacshiminarayanan <slacshiminar@lenovo.com>, 
 Tomoki Maruichi <maruichit@lenovo.com>
Subject: [Intel-gfx] [PATCH v9 5/5] drm/i915: Enable support for integrated
 privacy screen
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
Cc: rajatxjain@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add support for an ACPI based integrated privacy screen that is
available on some systems.

Signed-off-by: Rajat Jain <rajatja@google.com>
---
v9: same as v8
v8: - separate the APCI privacy screen into a separate patch.
    - Don't destroy the property if there is no privacy screen (because
      drm core doesn't like destroying property in late_register()).
    - The setting change needs to be committed in ->update_pipe() for 
      ddi.c as well as dp.c and both of them call intel_dp_add_properties()
v7: Look for ACPI node in ->late_register() hook.
    Do the scan only once per drm_device (instead of 1 per drm_connector)
v6: Addressed minor comments from Jani at
    https://lkml.org/lkml/2020/1/24/1143
     - local variable renamed.
     - used drm_dbg_kms()
     - used acpi_device_handle()
     - Used opaque type acpi_handle instead of void*
v5: same as v4
v4: Same as v3
v3: fold the code into existing acpi_device_id_update() function
v2: formed by splitting the original patch into ACPI lookup, and privacy
    screen property. Also move it into i915 now that I found existing code
    in i915 that can be re-used.

 drivers/gpu/drm/i915/display/intel_atomic.c |  2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c     | 34 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dp.h     |  5 +++
 4 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index d043057d2fa03..9898d8980e7ce 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -150,6 +150,8 @@ int intel_digital_connector_atomic_check(struct drm_connector *conn,
 	    new_conn_state->base.picture_aspect_ratio != old_conn_state->base.picture_aspect_ratio ||
 	    new_conn_state->base.content_type != old_conn_state->base.content_type ||
 	    new_conn_state->base.scaling_mode != old_conn_state->base.scaling_mode ||
+	    new_conn_state->base.privacy_screen_status !=
+		old_conn_state->base.privacy_screen_status ||
 	    !blob_equal(new_conn_state->base.hdr_output_metadata,
 			old_conn_state->base.hdr_output_metadata))
 		crtc_state->mode_changed = true;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 73d0f4648c06a..69a5423216dc5 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3708,6 +3708,7 @@ static void intel_ddi_update_pipe(struct intel_encoder *encoder,
 	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		intel_ddi_update_pipe_dp(encoder, crtc_state, conn_state);
 
+	intel_dp_update_privacy_screen(encoder, crtc_state, conn_state);
 	intel_hdcp_update_pipe(encoder, crtc_state, conn_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3ddc424b028c1..5f33ebb466135 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -62,6 +62,7 @@
 #include "intel_lspcon.h"
 #include "intel_lvds.h"
 #include "intel_panel.h"
+#include "intel_privacy_screen.h"
 #include "intel_psr.h"
 #include "intel_sideband.h"
 #include "intel_tc.h"
@@ -5886,6 +5887,10 @@ intel_dp_connector_register(struct drm_connector *connector)
 		dev_priv->acpi_scan_done = true;
 	}
 
+	/* Check for integrated Privacy screen support */
+	if (intel_privacy_screen_present(to_intel_connector(connector)))
+		drm_connector_attach_privacy_screen_property(connector);
+
 	DRM_DEBUG_KMS("registering %s bus for %s\n",
 		      intel_dp->aux.name, connector->kdev->kobj.name);
 
@@ -6883,6 +6888,33 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
 	}
+
+	/*
+	 * Created here, but depending on result of probing for privacy-screen
+	 * in intel_dp_connector_register(), gets attached in that function.
+	 * Need to create here because the drm core doesn't like creating
+	 * properties during ->late_register().
+	 */
+	drm_connector_create_privacy_screen_property(connector);
+}
+
+void
+intel_dp_update_privacy_screen(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state,
+			       const struct drm_connector_state *conn_state)
+{
+	struct drm_connector *connector = conn_state->connector;
+
+	intel_privacy_screen_set_val(to_intel_connector(connector),
+				     conn_state->privacy_screen_status);
+}
+
+static void intel_dp_update_pipe(struct intel_encoder *encoder,
+				 const struct intel_crtc_state *crtc_state,
+				 const struct drm_connector_state *conn_state)
+{
+	intel_dp_update_privacy_screen(encoder, crtc_state, conn_state);
+	intel_panel_update_backlight(encoder, crtc_state, conn_state);
 }
 
 static void intel_dp_init_panel_power_timestamps(struct intel_dp *intel_dp)
@@ -7826,7 +7858,7 @@ bool intel_dp_init(struct drm_i915_private *dev_priv,
 	intel_encoder->compute_config = intel_dp_compute_config;
 	intel_encoder->get_hw_state = intel_dp_get_hw_state;
 	intel_encoder->get_config = intel_dp_get_config;
-	intel_encoder->update_pipe = intel_panel_update_backlight;
+	intel_encoder->update_pipe = intel_dp_update_pipe;
 	intel_encoder->suspend = intel_dp_encoder_suspend;
 	if (IS_CHERRYVIEW(dev_priv)) {
 		intel_encoder->pre_pll_enable = chv_dp_pre_pll_enable;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0c7be8ed1423a..e4594e27ce5a8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -123,4 +123,9 @@ static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
 
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock);
 
+void
+intel_dp_update_privacy_screen(struct intel_encoder *encoder,
+			       const struct intel_crtc_state *crtc_state,
+			       const struct drm_connector_state *conn_state);
+
 #endif /* __INTEL_DP_H__ */
-- 
2.25.1.481.gfbce0eb801-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
