Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OvHFzwQ1mmxAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:22:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5EA3B8EDF
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E0D10E4A1;
	Wed,  8 Apr 2026 08:22:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FWFXMsHa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FD9D10E576;
 Wed,  8 Apr 2026 08:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775636537; x=1807172537;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tey+pbLqzC/L1OsFH9q9fAbAeQpI3y7z8YJh0Il7Hbw=;
 b=FWFXMsHawGM0uH6er7eeyedzCQi6ux+xmhlZsNEwn0AyNIHoNHbhOdvo
 VyR33iiJAx06CyTpk45dOfxYRmfwhUD2ikdsW506/GjWdqiENMoC9Rurd
 4NU9EjOY//HnGSdEVS9mI6U+wPr5+dxEZ+anO76BmcpAWSQQkfKOv0Efr
 4DV5fTgf53ouNMfzdtI9sglMUtLIX7/v78gR2wU58V2TG7MaJG9GHXUmp
 1zP+oXmp+UKjZaz8k8jKBbyuXQzhJEsmEfdQ1owWismgO4/5891u/t5lD
 oPXLoxjETkGuHUvAgEtqd/oOIl6UbeMhNiiEOhSSFOQ/Q+c+RROdw837h g==;
X-CSE-ConnectionGUID: ufRJ9opTSBCA1QSO0jwH8Q==
X-CSE-MsgGUID: PEZ2AJc1TSm0nibdL7Mwvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80207188"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80207188"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:22:17 -0700
X-CSE-ConnectionGUID: ZyojhpmmSGO6Suj2bQYMDw==
X-CSE-MsgGUID: 467tf+BlSridoDOBWhOYIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="232446121"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.32])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:22:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
	jani.nikula@intel.com
Subject: [PATCH 1/2] drm/atomic: prefer drm_printf_indent() over inline \t
Date: Wed,  8 Apr 2026 11:22:10 +0300
Message-ID: <20260408082211.3040194-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BB5EA3B8EDF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We have a helper drm_printf_indent() for tab indenting the prints. It
makes the actual strings more readable, and highlights the indented
parts better in source.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_atomic.c | 110 +++++++++++++++++------------------
 1 file changed, 55 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
index 41c57063f3b4..54bab7e9f935 100644
--- a/drivers/gpu/drm/drm_atomic.c
+++ b/drivers/gpu/drm/drm_atomic.c
@@ -463,19 +463,19 @@ static void drm_atomic_crtc_print_state(struct drm_printer *p,
 	struct drm_crtc *crtc = state->crtc;
 
 	drm_printf(p, "crtc[%u]: %s\n", crtc->base.id, crtc->name);
-	drm_printf(p, "\tenable=%d\n", state->enable);
-	drm_printf(p, "\tactive=%d\n", state->active);
-	drm_printf(p, "\tself_refresh_active=%d\n", state->self_refresh_active);
-	drm_printf(p, "\tplanes_changed=%d\n", state->planes_changed);
-	drm_printf(p, "\tmode_changed=%d\n", state->mode_changed);
-	drm_printf(p, "\tactive_changed=%d\n", state->active_changed);
-	drm_printf(p, "\tconnectors_changed=%d\n", state->connectors_changed);
-	drm_printf(p, "\tcolor_mgmt_changed=%d\n", state->color_mgmt_changed);
-	drm_printf(p, "\tplane_mask=%x\n", state->plane_mask);
-	drm_printf(p, "\tconnector_mask=%x\n", state->connector_mask);
-	drm_printf(p, "\tencoder_mask=%x\n", state->encoder_mask);
-	drm_printf(p, "\tmode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(&state->mode));
-	drm_printf(p, "\tbackground_color=%llx\n", state->background_color);
+	drm_printf_indent(p, 1, "enable=%d\n", state->enable);
+	drm_printf_indent(p, 1, "active=%d\n", state->active);
+	drm_printf_indent(p, 1, "self_refresh_active=%d\n", state->self_refresh_active);
+	drm_printf_indent(p, 1, "planes_changed=%d\n", state->planes_changed);
+	drm_printf_indent(p, 1, "mode_changed=%d\n", state->mode_changed);
+	drm_printf_indent(p, 1, "active_changed=%d\n", state->active_changed);
+	drm_printf_indent(p, 1, "connectors_changed=%d\n", state->connectors_changed);
+	drm_printf_indent(p, 1, "color_mgmt_changed=%d\n", state->color_mgmt_changed);
+	drm_printf_indent(p, 1, "plane_mask=%x\n", state->plane_mask);
+	drm_printf_indent(p, 1, "connector_mask=%x\n", state->connector_mask);
+	drm_printf_indent(p, 1, "encoder_mask=%x\n", state->encoder_mask);
+	drm_printf_indent(p, 1, "mode: " DRM_MODE_FMT "\n", DRM_MODE_ARG(&state->mode));
+	drm_printf_indent(p, 1, "background_color=%llx\n", state->background_color);
 
 	if (crtc->funcs->atomic_print_state)
 		crtc->funcs->atomic_print_state(p, state);
@@ -818,38 +818,38 @@ static void drm_atomic_colorop_print_state(struct drm_printer *p,
 	struct drm_colorop *colorop = state->colorop;
 
 	drm_printf(p, "colorop[%u]:\n", colorop->base.id);
-	drm_printf(p, "\ttype=%s\n", drm_get_colorop_type_name(colorop->type));
+	drm_printf_indent(p, 1, "type=%s\n", drm_get_colorop_type_name(colorop->type));
 	if (colorop->bypass_property)
-		drm_printf(p, "\tbypass=%u\n", state->bypass);
+		drm_printf_indent(p, 1, "bypass=%u\n", state->bypass);
 
 	switch (colorop->type) {
 	case DRM_COLOROP_1D_CURVE:
-		drm_printf(p, "\tcurve_1d_type=%s\n",
-			   drm_get_colorop_curve_1d_type_name(state->curve_1d_type));
+		drm_printf_indent(p, 1, "curve_1d_type=%s\n",
+				  drm_get_colorop_curve_1d_type_name(state->curve_1d_type));
 		break;
 	case DRM_COLOROP_1D_LUT:
-		drm_printf(p, "\tsize=%d\n", colorop->size);
-		drm_printf(p, "\tinterpolation=%s\n",
-			   drm_get_colorop_lut1d_interpolation_name(colorop->lut1d_interpolation));
-		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
+		drm_printf_indent(p, 1, "size=%d\n", colorop->size);
+		drm_printf_indent(p, 1, "interpolation=%s\n",
+				  drm_get_colorop_lut1d_interpolation_name(colorop->lut1d_interpolation));
+		drm_printf_indent(p, 1, "data blob id=%d\n", state->data ? state->data->base.id : 0);
 		break;
 	case DRM_COLOROP_CTM_3X4:
-		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
+		drm_printf_indent(p, 1, "data blob id=%d\n", state->data ? state->data->base.id : 0);
 		break;
 	case DRM_COLOROP_MULTIPLIER:
-		drm_printf(p, "\tmultiplier=%llu\n", state->multiplier);
+		drm_printf_indent(p, 1, "multiplier=%llu\n", state->multiplier);
 		break;
 	case DRM_COLOROP_3D_LUT:
-		drm_printf(p, "\tsize=%d\n", colorop->size);
-		drm_printf(p, "\tinterpolation=%s\n",
-			   drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interpolation));
-		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
+		drm_printf_indent(p, 1, "size=%d\n", colorop->size);
+		drm_printf_indent(p, 1, "interpolation=%s\n",
+				  drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interpolation));
+		drm_printf_indent(p, 1, "data blob id=%d\n", state->data ? state->data->base.id : 0);
 		break;
 	default:
 		break;
 	}
 
-	drm_printf(p, "\tnext=%d\n", colorop->next ? colorop->next->base.id : 0);
+	drm_printf_indent(p, 1, "next=%d\n", colorop->next ? colorop->next->base.id : 0);
 }
 
 static void drm_atomic_plane_print_state(struct drm_printer *p,
@@ -860,21 +860,21 @@ static void drm_atomic_plane_print_state(struct drm_printer *p,
 	struct drm_rect dest = drm_plane_state_dest(state);
 
 	drm_printf(p, "plane[%u]: %s\n", plane->base.id, plane->name);
-	drm_printf(p, "\tcrtc=%s\n", state->crtc ? state->crtc->name : "(null)");
-	drm_printf(p, "\tfb=%u\n", state->fb ? state->fb->base.id : 0);
+	drm_printf_indent(p, 1, "crtc=%s\n", state->crtc ? state->crtc->name : "(null)");
+	drm_printf_indent(p, 1, "fb=%u\n", state->fb ? state->fb->base.id : 0);
 	if (state->fb)
 		drm_framebuffer_print_info(p, 2, state->fb);
-	drm_printf(p, "\tcrtc-pos=" DRM_RECT_FMT "\n", DRM_RECT_ARG(&dest));
-	drm_printf(p, "\tsrc-pos=" DRM_RECT_FP_FMT "\n", DRM_RECT_FP_ARG(&src));
-	drm_printf(p, "\trotation=%x\n", state->rotation);
-	drm_printf(p, "\tnormalized-zpos=%x\n", state->normalized_zpos);
-	drm_printf(p, "\tcolor-encoding=%s\n",
-		   drm_get_color_encoding_name(state->color_encoding));
-	drm_printf(p, "\tcolor-range=%s\n",
-		   drm_get_color_range_name(state->color_range));
-	drm_printf(p, "\tcolor_mgmt_changed=%d\n", state->color_mgmt_changed);
-	drm_printf(p, "\tcolor-pipeline=%d\n",
-		   state->color_pipeline ? state->color_pipeline->base.id : 0);
+	drm_printf_indent(p, 1, "crtc-pos=" DRM_RECT_FMT "\n", DRM_RECT_ARG(&dest));
+	drm_printf_indent(p, 1, "src-pos=" DRM_RECT_FP_FMT "\n", DRM_RECT_FP_ARG(&src));
+	drm_printf_indent(p, 1, "rotation=%x\n", state->rotation);
+	drm_printf_indent(p, 1, "normalized-zpos=%x\n", state->normalized_zpos);
+	drm_printf_indent(p, 1, "color-encoding=%s\n",
+			  drm_get_color_encoding_name(state->color_encoding));
+	drm_printf_indent(p, 1, "color-range=%s\n",
+			  drm_get_color_range_name(state->color_range));
+	drm_printf_indent(p, 1, "color_mgmt_changed=%d\n", state->color_mgmt_changed);
+	drm_printf_indent(p, 1, "color-pipeline=%d\n",
+			  state->color_pipeline ? state->color_pipeline->base.id : 0);
 	if (plane->funcs->atomic_print_state)
 		plane->funcs->atomic_print_state(p, state);
 }
@@ -1347,27 +1347,27 @@ static void drm_atomic_connector_print_state(struct drm_printer *p,
 	struct drm_connector *connector = state->connector;
 
 	drm_printf(p, "connector[%u]: %s\n", connector->base.id, connector->name);
-	drm_printf(p, "\tcrtc=%s\n", state->crtc ? state->crtc->name : "(null)");
-	drm_printf(p, "\tself_refresh_aware=%d\n", state->self_refresh_aware);
-	drm_printf(p, "\tinterlace_allowed=%d\n", connector->interlace_allowed);
-	drm_printf(p, "\tycbcr_420_allowed=%d\n", connector->ycbcr_420_allowed);
-	drm_printf(p, "\tmax_requested_bpc=%d\n", state->max_requested_bpc);
-	drm_printf(p, "\tcolorspace=%s\n", drm_get_colorspace_name(state->colorspace));
+	drm_printf_indent(p, 1, "crtc=%s\n", state->crtc ? state->crtc->name : "(null)");
+	drm_printf_indent(p, 1, "self_refresh_aware=%d\n", state->self_refresh_aware);
+	drm_printf_indent(p, 1, "interlace_allowed=%d\n", connector->interlace_allowed);
+	drm_printf_indent(p, 1, "ycbcr_420_allowed=%d\n", connector->ycbcr_420_allowed);
+	drm_printf_indent(p, 1, "max_requested_bpc=%d\n", state->max_requested_bpc);
+	drm_printf_indent(p, 1, "colorspace=%s\n", drm_get_colorspace_name(state->colorspace));
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
 	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB) {
-		drm_printf(p, "\tbroadcast_rgb=%s\n",
-			   drm_hdmi_connector_get_broadcast_rgb_name(state->hdmi.broadcast_rgb));
-		drm_printf(p, "\tis_limited_range=%c\n", state->hdmi.is_limited_range ? 'y' : 'n');
-		drm_printf(p, "\toutput_bpc=%u\n", state->hdmi.output_bpc);
-		drm_printf(p, "\toutput_format=%s\n",
-			   drm_hdmi_connector_get_output_format_name(state->hdmi.output_format));
-		drm_printf(p, "\ttmds_char_rate=%llu\n", state->hdmi.tmds_char_rate);
+		drm_printf_indent(p, 1, "broadcast_rgb=%s\n",
+				  drm_hdmi_connector_get_broadcast_rgb_name(state->hdmi.broadcast_rgb));
+		drm_printf_indent(p, 1, "is_limited_range=%c\n", state->hdmi.is_limited_range ? 'y' : 'n');
+		drm_printf_indent(p, 1, "output_bpc=%u\n", state->hdmi.output_bpc);
+		drm_printf_indent(p, 1, "output_format=%s\n",
+				  drm_hdmi_connector_get_output_format_name(state->hdmi.output_format));
+		drm_printf_indent(p, 1, "tmds_char_rate=%llu\n", state->hdmi.tmds_char_rate);
 	}
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_WRITEBACK)
 		if (state->writeback_job && state->writeback_job->fb)
-			drm_printf(p, "\tfb=%d\n", state->writeback_job->fb->base.id);
+			drm_printf_indent(p, 1, "fb=%d\n", state->writeback_job->fb->base.id);
 
 	if (connector->funcs->atomic_print_state)
 		connector->funcs->atomic_print_state(p, state);
-- 
2.47.3

