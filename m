Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BED289104F
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Mar 2024 02:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6526F10F1E5;
	Fri, 29 Mar 2024 01:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ebEE65/h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1EB310E880
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Mar 2024 01:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711675415; x=1743211415;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kzIvLBd++NKj+qW51YdxGVO0MnN5UkZL7I5hqyaVdRg=;
 b=ebEE65/h20FEqULDDsvT9T/LrjW1cPLobRKEO08Fj0Fs6O21wod7XIGU
 AXOL0QxEszD1esa9ERSZL+1ds/ihe15YKc3YZmiDP5dbwQFfRSHOLCgzA
 k0tSWC+Mc3WXZU8nJG4O6yQLNkF+2xb6k5XPkeXz+eLv5uQ/wOs+XKv3B
 KE9iK/zWBiOxJTKCEYBsOvYdVfyLvw3O7wIRqVEku0sAXBuUbN7OrhPsc
 TvSBzYbHhLnGT0DubJA6Z24JvDNaCNZ55vh7A2EnZatO8Jrj7WFUyuzk7
 PHMYfmQtHrqBXDokwVJklVYE9fzfUyw7fo+qG7v2vfgE+VmjsUqxxeUi1 w==;
X-CSE-ConnectionGUID: XvSL9wPqTjW1Qzf3jYPOmg==
X-CSE-MsgGUID: QhgLp1ITSWOZbISrFRolEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="6757156"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="6757156"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 18:23:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11027"; a="827786793"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="827786793"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 28 Mar 2024 18:23:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Mar 2024 03:23:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Fix i915_display_info output when connectors are
 not active
Date: Fri, 29 Mar 2024 03:23:31 +0200
Message-ID: <20240329012331.29281-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently intel_connector_info(), which prints the per-connector
output for i915_display_info, just bails out early if the connector
doesn't have a current encoder. That leads to very confusing output
where some of your connected (and properly detected) outputs appear
to have no enumerated modes.

Get rid of the encoder stuff and just rely on the connector itself
so that the output is always consistent.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c   | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index b99c024b0934..72efd92e5737 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -252,9 +252,6 @@ static void intel_connector_info(struct seq_file *m,
 				 struct drm_connector *connector)
 {
 	struct intel_connector *intel_connector = to_intel_connector(connector);
-	const struct drm_connector_state *conn_state = connector->state;
-	struct intel_encoder *encoder =
-		to_intel_encoder(conn_state->best_encoder);
 	const struct drm_display_mode *mode;
 
 	seq_printf(m, "[CONNECTOR:%d:%s]: status: %s\n",
@@ -271,28 +268,23 @@ static void intel_connector_info(struct seq_file *m,
 		   drm_get_subpixel_order_name(connector->display_info.subpixel_order));
 	seq_printf(m, "\tCEA rev: %d\n", connector->display_info.cea_rev);
 
-	if (!encoder)
-		return;
-
 	switch (connector->connector_type) {
 	case DRM_MODE_CONNECTOR_DisplayPort:
 	case DRM_MODE_CONNECTOR_eDP:
-		if (encoder->type == INTEL_OUTPUT_DP_MST)
+		if (intel_connector->mst_port)
 			intel_dp_mst_info(m, intel_connector);
 		else
 			intel_dp_info(m, intel_connector);
 		break;
 	case DRM_MODE_CONNECTOR_HDMIA:
-		if (encoder->type == INTEL_OUTPUT_HDMI ||
-		    encoder->type == INTEL_OUTPUT_DDI)
-			intel_hdmi_info(m, intel_connector);
+		intel_hdmi_info(m, intel_connector);
 		break;
 	default:
 		break;
 	}
 
 	seq_puts(m, "\tHDCP version: ");
-	if (intel_encoder_is_mst(encoder)) {
+	if (intel_connector->mst_port) {
 		intel_hdcp_info(m, intel_connector, true);
 		seq_puts(m, "\tMST Hub HDCP version: ");
 	}
-- 
2.43.2

