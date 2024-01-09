Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10D382EEF9
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:28:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77C010E530;
	Tue, 16 Jan 2024 12:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A56210E4CA
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 18:11:39 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 5b1f17b1804b1-40e4d1e0e5eso12117745e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jan 2024 10:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1704823897; x=1705428697; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xEKXGZp6/dSPIf69wGEjjsLtzr50iEJJm//VReGTJdM=;
 b=e7dVL4/9X3KP6AOHyICkULy/Vrx+951G8CI5+K1pg280zwgVt+VRSVg214a29EEATp
 AGSiEjzySUQlodBdHmGLS68Oxwga52epfKxNHNPvXrGk4s7mBhuCb5gueUNWQmhCUESY
 GTcVkjaWuMBV3kRMwPLoz3dJPNBpAn6WvXrGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704823897; x=1705428697;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xEKXGZp6/dSPIf69wGEjjsLtzr50iEJJm//VReGTJdM=;
 b=uZnTkRco6omKq8QkHcxRw/hbj/vMEDOCRcr3HCn4GEVmA2n00XPJnmyCr6s0CssrSB
 e2kQVyLr7CpqD0JLshO8FaqoPVl9/tRugig1S6unrbpYPsihHceg4hRXoY5tka9946tH
 nbs8oguB5lfAnRp1kTj721b6+mW8OoXfeXSrz1X7imks5Usd/UiCigVXAggb08Ky8VSQ
 0d+PmSjh50wAt1EjJsU78ulnrjf7r+Km+urNeG6eqLgqYbqb0XtItRC9NHcuqWrV+E6I
 E1lKZirJ+8xE8bV6M1fIewP2H5wK+kZzwUaGWoihpfDObIMqhjdFSqa0ls3ZYeCo96MX
 A43g==
X-Gm-Message-State: AOJu0Yy/SZOHO9H9id2tA795w0cYHSyU7VHJ9f3i0g+uxxFPW9BZi5zR
 9Rfmk2lBj8CFUm52gZvNNJZdYSMeFbh7gQ==
X-Google-Smtp-Source: AGHT+IGPmvdUO8SXjXgKV/aQCxeStLpIIPvoeykWdqZkiW7Qc5Us/N/1WUFwWDhYHwAEHPNbOA3kGg==
X-Received: by 2002:a05:600c:228d:b0:40e:4579:9eb1 with SMTP id
 13-20020a05600c228d00b0040e45799eb1mr2208339wmf.1.1704823897680; 
 Tue, 09 Jan 2024 10:11:37 -0800 (PST)
Received: from andri-workstation.turninn.appdynamic.com
 ([2a01:8280:aa07:ad:7285:c2ff:fef0:4baf])
 by smtp.gmail.com with ESMTPSA id
 n25-20020a05600c3b9900b0040e527602c8sm2104579wms.9.2024.01.09.10.11.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jan 2024 10:11:37 -0800 (PST)
From: Andri Yngvason <andri@yngvason.is>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: [PATCH 4/7] drm/i915/display: Add handling for new "active color
 format" property
Date: Tue,  9 Jan 2024 18:11:01 +0000
Message-ID: <20240109181104.1670304-5-andri@yngvason.is>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240109181104.1670304-1-andri@yngvason.is>
References: <20240109181104.1670304-1-andri@yngvason.is>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Tue, 16 Jan 2024 12:28:11 +0000
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
Cc: amd-gfx@lists.freedesktop.org, Simon Ser <contact@emersion.fr>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Andri Yngvason <andri@yngvason.is>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Werner Sembach <wse@tuxedocomputers.com>

This commit implements the "active color format" drm property for the Intel
GPU driver.

Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
Signed-off-by: Andri Yngvason <andri@yngvason.is>
Tested-by: Andri Yngvason <andri@yngvason.is>
---
 drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c      |  7 +++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |  5 +++
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  4 ++-
 4 files changed, 46 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index df582ff81b45f..79cc258db8f09 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7167,6 +7167,21 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
 	}
 }
 
+static int convert_intel_output_format_into_drm_color_format(enum intel_output_format output_format)
+{
+	switch (output_format) {
+	case INTEL_OUTPUT_FORMAT_RGB:
+		return DRM_COLOR_FORMAT_RGB444;
+	case INTEL_OUTPUT_FORMAT_YCBCR420:
+		return DRM_COLOR_FORMAT_YCBCR420;
+	case INTEL_OUTPUT_FORMAT_YCBCR444:
+		return DRM_COLOR_FORMAT_YCBCR444;
+	default:
+		break;
+	}
+	return 0;
+}
+
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
 	struct drm_device *dev = state->base.dev;
@@ -7438,6 +7453,9 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 {
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_connector *connector;
+	struct drm_connector_state *new_conn_state;
+	int i;
 	int ret = 0;
 
 	state->wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
@@ -7506,6 +7524,21 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 	intel_shared_dpll_swap_state(state);
 	intel_atomic_track_fbs(state);
 
+	/* Extract information from crtc to communicate it to userspace as connector properties */
+	for_each_new_connector_in_state(&state->base, connector, new_conn_state, i) {
+		struct intel_crtc *crtc = to_intel_crtc(new_conn_state->crtc);
+
+		if (crtc) {
+			struct intel_crtc_state *new_crtc_state =
+				intel_atomic_get_new_crtc_state(state, crtc);
+
+			drm_connector_set_active_color_format_property(connector,
+				convert_intel_output_format_into_drm_color_format(
+					new_crtc_state->output_format));
+		} else
+			drm_connector_set_active_color_format_property(connector, 0);
+	}
+
 	drm_atomic_state_get(&state->base);
 	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 62ce92772367f..c40fe8a847614 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5910,10 +5910,13 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		intel_attach_force_audio_property(connector);
 
 	intel_attach_broadcast_rgb_property(connector);
-	if (HAS_GMCH(dev_priv))
+	if (HAS_GMCH(dev_priv)) {
 		drm_connector_attach_max_bpc_property(connector, 6, 10);
-	else if (DISPLAY_VER(dev_priv) >= 5)
+		drm_connector_attach_active_color_format_property(connector);
+	} else if (DISPLAY_VER(dev_priv) >= 5) {
 		drm_connector_attach_max_bpc_property(connector, 6, 12);
+		drm_connector_attach_active_color_format_property(connector);
+	}
 
 	/* Register HDMI colorspace for case of lspcon */
 	if (intel_bios_encoder_is_lspcon(dp_to_dig_port(intel_dp)->base.devdata)) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index aa10612626136..e7574ca0604e6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1210,6 +1210,11 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 		drm_dbg_kms(&dev_priv->drm, "[%s:%d] HDCP MST init failed, skipping.\n",
 			    connector->name, connector->base.id);
 
+	connector->active_color_format_property =
+		intel_dp->attached_connector->base.active_color_format_property;
+	if (connector->active_color_format_property)
+		drm_connector_attach_active_color_format_property(connector);
+
 	return connector;
 
 err:
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index bfa456fa7d25c..ce0221f90de92 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2611,8 +2611,10 @@ intel_hdmi_add_properties(struct intel_hdmi *intel_hdmi, struct drm_connector *c
 	if (DISPLAY_VER(dev_priv) >= 10)
 		drm_connector_attach_hdr_output_metadata_property(connector);
 
-	if (!HAS_GMCH(dev_priv))
+	if (!HAS_GMCH(dev_priv)) {
 		drm_connector_attach_max_bpc_property(connector, 8, 12);
+		drm_connector_attach_active_color_format_property(connector);
+	}
 }
 
 /*
-- 
2.43.0

