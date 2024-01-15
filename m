Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 605BC82EEFF
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:29:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1666210E560;
	Tue, 16 Jan 2024 12:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A71D10E315
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 16:06:45 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-40e80046275so3505925e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 08:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1705334804; x=1705939604; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=y7h5TOlHeh29R5MO3vqvyCpfRR+2j5wkj4KSWlgVsY0=;
 b=BKUAFholSqDddIm1DT1RorH7fGoZlz9KEi2AdDNgVJcIyU8uTafvVJ3LOgQ2/+MfqA
 +gy7H7bne9CCY5U2PYmv0aQhBffSY5Mw+7ASgfBzH9EQP8e1qeNgCN69bVCjO6/YFPZ+
 r5uVA4JVxamoSvOPdhBpjxBrcuPNXLiMWQm0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705334804; x=1705939604;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=y7h5TOlHeh29R5MO3vqvyCpfRR+2j5wkj4KSWlgVsY0=;
 b=FKSmufXZK/8/Kr2IxBxXNPJhv3hlGSYByI5cZGY5rzPwtCFEHhbj72IFzmBXVT2Tvq
 +CQSC95RSWS/OK7gosDeRLrKy95cdBFJfJzc+bBgze9hzxBpYCjT17+7eloJ80o/DEcx
 TWgWJx6SdkF2gqdJVB1KZOIb3aWjBag9V6D6R8AN2n3k8R+qDZvScXsWbHzWSJwgcc82
 Tdv0GEo5INZVTHt+s1y7agHmxfHHKzXTIyUv0TQxa2Hb+3FQtm3xO+gBt0vsRctU9Q+0
 Vl9CKyBBX//7+cmJm3Yg1u1G5ydtyxISn0wefPh4ak5MUjVxkV/QxLUQsZnbykTiO6uu
 7yUA==
X-Gm-Message-State: AOJu0YzlRWn7okU9p6IsscpcFXVif6v/j3Oi4kX5BZFqIMDTu6ldcUIn
 bPdXdCTEPp9YtG1GKYC+XPdE0aMRCxNJwA==
X-Google-Smtp-Source: AGHT+IHMlicTU5ZpLWspXuG4eSFL0osighJE+s/ckHvaTE3eH7QH7NJLEqO4581S2L63mZc6rAr+vw==
X-Received: by 2002:a05:600c:524c:b0:40e:397e:16e7 with SMTP id
 fc12-20020a05600c524c00b0040e397e16e7mr3140605wmb.3.1705334804112; 
 Mon, 15 Jan 2024 08:06:44 -0800 (PST)
Received: from andri-workstation.turninn.appdynamic.com
 ([2a01:8280:aa07:ad:7285:c2ff:fef0:4baf])
 by smtp.gmail.com with ESMTPSA id
 l22-20020a05600c4f1600b0040d6b91efd9sm20174140wmq.44.2024.01.15.08.06.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jan 2024 08:06:43 -0800 (PST)
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
Subject: [PATCH v2 3/4] drm/amd/display: Add handling for new "force color
 format" property
Date: Mon, 15 Jan 2024 16:05:53 +0000
Message-ID: <20240115160554.720247-4-andri@yngvason.is>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240115160554.720247-1-andri@yngvason.is>
References: <20240115160554.720247-1-andri@yngvason.is>
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

This commit implements the "force color format" drm property for the
AMD GPU driver.

Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
Co-Developed-by: Andri Yngvason <andri@yngvason.is>
Signed-off-by: Andri Yngvason <andri@yngvason.is>
Tested-by: Andri Yngvason <andri@yngvason.is>
---

Changes in v2:
 - Renamed to "force color format" from "preferred color format"
 - Modeset will fail if color format cannot be satisfied

---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 63 ++++++++++++++++---
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  4 ++
 2 files changed, 60 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index cc4d1f7f97b98..26c4260c78d7b 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -5573,15 +5573,32 @@ static void fill_stream_properties_from_drm_display_mode(
 	timing_out->h_border_right = 0;
 	timing_out->v_border_top = 0;
 	timing_out->v_border_bottom = 0;
-	/* TODO: un-hardcode */
-	if (drm_mode_is_420_only(info, mode_in)
-			|| (drm_mode_is_420_also(info, mode_in) && aconnector->force_yuv420_output))
+
+	if (connector_state
+			&& (connector_state->force_color_format == DRM_COLOR_FORMAT_YCBCR420
+			|| aconnector->force_yuv420_output) && drm_mode_is_420(info, mode_in))
 		timing_out->pixel_encoding = PIXEL_ENCODING_YCBCR420;
-	else if ((connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR444)
-			&& stream->signal == SIGNAL_TYPE_HDMI_TYPE_A)
+	else if (connector_state
+			&& connector_state->force_color_format == DRM_COLOR_FORMAT_YCBCR444
+			&& connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR444)
 		timing_out->pixel_encoding = PIXEL_ENCODING_YCBCR444;
-	else
+	else if (connector_state
+			&& connector_state->force_color_format == DRM_COLOR_FORMAT_RGB444
+			&& !drm_mode_is_420_only(info, mode_in))
 		timing_out->pixel_encoding = PIXEL_ENCODING_RGB;
+	else
+		/*
+		 * connector_state->force_color_format not possible
+		 * || connector_state->force_color_format == 0 (auto)
+		 * || connector_state->force_color_format == DRM_COLOR_FORMAT_YCBCR422
+		 */
+		if (drm_mode_is_420_only(info, mode_in))
+			timing_out->pixel_encoding = PIXEL_ENCODING_YCBCR420;
+		else if ((connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR444)
+				&& stream->signal == SIGNAL_TYPE_HDMI_TYPE_A)
+			timing_out->pixel_encoding = PIXEL_ENCODING_YCBCR444;
+		else
+			timing_out->pixel_encoding = PIXEL_ENCODING_RGB;
 
 	timing_out->timing_3d_format = TIMING_3D_FORMAT_NONE;
 	timing_out->display_color_depth = convert_color_depth_from_display_info(
@@ -6685,6 +6702,33 @@ static enum dc_status dm_validate_stream_and_context(struct dc *dc,
 	return dc_result;
 }
 
+static enum dc_status
+dm_validate_stream_color_format(const struct drm_connector_state *drm_state,
+				const struct dc_stream_state *stream)
+{
+	if (!drm_state->force_color_format)
+		return DC_OK;
+
+	enum dc_pixel_encoding encoding = PIXEL_ENCODING_UNDEFINED;
+	switch (drm_state->force_color_format) {
+	case DRM_COLOR_FORMAT_RGB444:
+		encoding = PIXEL_ENCODING_RGB;
+		break;
+	case DRM_COLOR_FORMAT_YCBCR444:
+		encoding = PIXEL_ENCODING_YCBCR444;
+		break;
+	case DRM_COLOR_FORMAT_YCBCR422:
+		encoding = PIXEL_ENCODING_YCBCR422;
+		break;
+	case DRM_COLOR_FORMAT_YCBCR420:
+		encoding = PIXEL_ENCODING_YCBCR420;
+		break;
+	}
+
+	return encoding == stream->timing.pixel_encoding ?
+	       DC_OK : DC_UNSUPPORTED_VALUE;
+}
+
 struct dc_stream_state *
 create_validate_stream_for_sink(struct amdgpu_dm_connector *aconnector,
 				const struct drm_display_mode *drm_mode,
@@ -6717,6 +6761,9 @@ create_validate_stream_for_sink(struct amdgpu_dm_connector *aconnector,
 		if (dc_result == DC_OK)
 			dc_result = dm_validate_stream_and_context(adev->dm.dc, stream);
 
+		if (dc_result == DC_OK)
+			dc_result = dm_validate_stream_color_format(drm_state, stream);
+
 		if (dc_result != DC_OK) {
 			DRM_DEBUG_KMS("Mode %dx%d (clk %d) failed DC validation with error %d (%s)\n",
 				      drm_mode->hdisplay,
@@ -7512,8 +7559,10 @@ void amdgpu_dm_connector_init_helper(struct amdgpu_display_manager *dm,
 				adev->mode_info.underscan_vborder_property,
 				0);
 
-	if (!aconnector->mst_root)
+	if (!aconnector->mst_root) {
 		drm_connector_attach_max_bpc_property(&aconnector->base, 8, 16);
+		drm_connector_attach_force_color_format_property(&aconnector->base);
+	}
 
 	aconnector->base.state->max_bpc = 16;
 	aconnector->base.state->max_requested_bpc = aconnector->base.state->max_bpc;
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
index 941e96f100f4e..437d50f53eb97 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
@@ -601,6 +601,10 @@ dm_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
 	if (connector->max_bpc_property)
 		drm_connector_attach_max_bpc_property(connector, 8, 16);
 
+	connector->force_color_format_property = master->base.force_color_format_property;
+	if (connector->force_color_format_property)
+		drm_connector_attach_force_color_format_property(&aconnector->base);
+
 	connector->vrr_capable_property = master->base.vrr_capable_property;
 	if (connector->vrr_capable_property)
 		drm_connector_attach_vrr_capable_property(connector);
-- 
2.43.0

