Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7712082EEF3
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 13:28:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D752D10E556;
	Tue, 16 Jan 2024 12:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF2810E4D3
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 18:11:49 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-40e5508ecb9so619675e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jan 2024 10:11:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yngvason.is; s=google; t=1704823908; x=1705428708; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Qt0c3XMcNoO4kFPW/v1FdVP0dkTx8zEwl7ZVK3nsems=;
 b=NipQWASxioXg8Q8HGbWZNKI/vY8YdFKpCBUiD36LjUSktw8lykrd/N9p1LhurAjk/+
 U1o1sgqWgJaovC3PRLl/i80Fnufy+zgmTnlK+ePo24kQCFNlrexFYmmvNC1Aqbr1WZCp
 aIbGZ46fvbafraaub1wdtqMkwVlxrQsyPi9fk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704823908; x=1705428708;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Qt0c3XMcNoO4kFPW/v1FdVP0dkTx8zEwl7ZVK3nsems=;
 b=hzKEOZr1PE9xPPYeVg+u39q9GMf1JltbTiftKNDr9ocsp9GybJLr/lhwN7RJ7JH4OX
 ySm599c26jAG52ZdfT0YPyYQt9l3/omueP6MV6JfCWOpaJM/6kxAo7H1cP5g3p3bRJnB
 7WFvrZMHEPvQnn2pISgVF+bdZ8MOD21qn2qyJQOlhAcX1/17mbW6Y0jiMq1TXwTFYiyu
 fy+crf4iX/W954Q33raXFuwRd3YHqZFwxLBBgtR3sUbF/SMWzmIN6tnj2On1A7DwI67K
 TfvIuZ10VN/WlfCbgn6KhHvn+mbKluqks+T+KuIwkWTlS8C4b5EoPfm8hhgj0R+5+FlO
 I2Iw==
X-Gm-Message-State: AOJu0Yz+CfCPIVeO2BLFtTYd4ixZeSL8AHmqMU1gGOFTn8Y4CLstIlT5
 yByc+Jit3K0hg8tT/CIhPWQwrqe+qqOHPQ==
X-Google-Smtp-Source: AGHT+IFgwClqgXbf2UT4umhrLU7jfpYqaURbrVxuW4v/iRn1SN3rphz7JKJNAvzao7RlEeWaArDvaQ==
X-Received: by 2002:a7b:ca45:0:b0:40e:482d:e718 with SMTP id
 m5-20020a7bca45000000b0040e482de718mr1724173wml.33.1704823908518; 
 Tue, 09 Jan 2024 10:11:48 -0800 (PST)
Received: from andri-workstation.turninn.appdynamic.com
 ([2a01:8280:aa07:ad:7285:c2ff:fef0:4baf])
 by smtp.gmail.com with ESMTPSA id
 n25-20020a05600c3b9900b0040e527602c8sm2104579wms.9.2024.01.09.10.11.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jan 2024 10:11:48 -0800 (PST)
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
Subject: [PATCH 6/7] drm/amd/display: Add handling for new "preferred color
 format" property
Date: Tue,  9 Jan 2024 18:11:03 +0000
Message-ID: <20240109181104.1670304-7-andri@yngvason.is>
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

This commit implements the "preferred color format" drm property for the
AMD GPU driver.

Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
Signed-off-by: Andri Yngvason <andri@yngvason.is>
Tested-by: Andri Yngvason <andri@yngvason.is>
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 30 +++++++++++++++----
 .../display/amdgpu_dm/amdgpu_dm_mst_types.c   |  4 +++
 2 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index b44d06c3b1706..262d420877c91 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -5522,15 +5522,32 @@ static void fill_stream_properties_from_drm_display_mode(
 	timing_out->h_border_right = 0;
 	timing_out->v_border_top = 0;
 	timing_out->v_border_bottom = 0;
-	/* TODO: un-hardcode */
-	if (drm_mode_is_420_only(info, mode_in)
-			|| (drm_mode_is_420_also(info, mode_in) && aconnector->force_yuv420_output))
+
+	if (connector_state
+			&& (connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCBCR420
+			|| aconnector->force_yuv420_output) && drm_mode_is_420(info, mode_in))
 		timing_out->pixel_encoding = PIXEL_ENCODING_YCBCR420;
-	else if ((connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR444)
-			&& stream->signal == SIGNAL_TYPE_HDMI_TYPE_A)
+	else if (connector_state
+			&& connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCBCR444
+			&& connector->display_info.color_formats & DRM_COLOR_FORMAT_YCBCR444)
 		timing_out->pixel_encoding = PIXEL_ENCODING_YCBCR444;
-	else
+	else if (connector_state
+			&& connector_state->preferred_color_format == DRM_COLOR_FORMAT_RGB444
+			&& !drm_mode_is_420_only(info, mode_in))
 		timing_out->pixel_encoding = PIXEL_ENCODING_RGB;
+	else
+		/*
+		 * connector_state->preferred_color_format not possible
+		 * || connector_state->preferred_color_format == 0 (auto)
+		 * || connector_state->preferred_color_format == DRM_COLOR_FORMAT_YCBCR422
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
@@ -7456,6 +7473,7 @@ void amdgpu_dm_connector_init_helper(struct amdgpu_display_manager *dm,
 
 	if (!aconnector->mst_root) {
 		drm_connector_attach_max_bpc_property(&aconnector->base, 8, 16);
+		drm_connector_attach_preferred_color_format_property(&aconnector->base);
 		drm_connector_attach_active_color_format_property(&aconnector->base);
 	}
 
diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
index a4d1b3ea8f81c..dc8cea0ac2c11 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_mst_types.c
@@ -600,6 +600,10 @@ dm_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
 	if (connector->max_bpc_property)
 		drm_connector_attach_max_bpc_property(connector, 8, 16);
 
+	connector->preferred_color_format_property = master->base.preferred_color_format_property;
+	if (connector->preferred_color_format_property)
+		drm_connector_attach_preferred_color_format_property(&aconnector->base);
+
 	connector->active_color_format_property = master->base.active_color_format_property;
 	if (connector->active_color_format_property)
 		drm_connector_attach_active_color_format_property(&aconnector->base);
-- 
2.43.0

