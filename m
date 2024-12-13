Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C753B9F0ED9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 15:16:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107AF10F037;
	Fri, 13 Dec 2024 14:16:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i8rlt35j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B6B210F037;
 Fri, 13 Dec 2024 14:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734099373; x=1765635373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tBa/gdcw8nJHHOPPglJHALJFJGgwUt2vI2jkvVTxLGA=;
 b=i8rlt35j8xgQABSAO9gvFAWMy0QJFebxW3sWzPR/5GQFgh3Y0zN3y2HR
 3rfpIOqpCioodw16SqaLu8/C7l1D7xoQzlxJGRjdcpwGt2fbYHcszAan/
 PB0fcWkFOrKyuqEySGgSIjJG+bdHGLUniML5DFEscHTtr2VynlgVUOS5R
 IV0k30FF04rccwcEl0nTdzGv+sTZ+TaKd7GjFEdTw0s5hhBQ2reDkQJth
 f0M+yoCsuP4RmtWVxH/s1L8FD+zPyysjl1MnUDgJb1khvHciQA8HjQSok
 aWUUC7Up+LPKd8CbggLU4rgb/f/KmZOmdFRjcvrBRP30Guf1QSjuOaehg g==;
X-CSE-ConnectionGUID: BwyXqOxxQ3iDD12H1bgI5w==
X-CSE-MsgGUID: 3zDqKwMoQYq8tM4xYFhVgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="34689396"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34689396"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 06:16:13 -0800
X-CSE-ConnectionGUID: y8BvlEhJTCGw2L5mZHnuHA==
X-CSE-MsgGUID: 8dWpmC9pRI21cNSbSd8WQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133916242"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 06:16:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 1/6] drm/i915/ddi: change intel_ddi_init_{dp,
 hdmi}_connector() return type
Date: Fri, 13 Dec 2024 16:15:53 +0200
Message-Id: <ddd89d5e49a0cd40c18f12567da7fb9605999fcd.1734099220.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734099220.git.jani.nikula@intel.com>
References: <cover.1734099220.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The caller doesn't actually need the returned struct intel_connector;
it's stored in the ->attached_connector of intel_dp ad
intel_hdmi. Switch to returning an int with 0 for success and negative
errors codes to be able to indicate success even when we don't have a
connector.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4f9c50996446..21277cf8afef 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4542,8 +4542,7 @@ static const struct drm_encoder_funcs intel_ddi_funcs = {
 	.late_register = intel_ddi_encoder_late_register,
 };
 
-static struct intel_connector *
-intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
+static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_connector *connector;
@@ -4551,7 +4550,7 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 
 	connector = intel_connector_alloc();
 	if (!connector)
-		return NULL;
+		return -ENOMEM;
 
 	dig_port->dp.output_reg = DDI_BUF_CTL(port);
 	if (DISPLAY_VER(i915) >= 14)
@@ -4566,7 +4565,7 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 
 	if (!intel_dp_init_connector(dig_port, connector)) {
 		kfree(connector);
-		return NULL;
+		return -EINVAL;
 	}
 
 	if (dig_port->base.type == INTEL_OUTPUT_EDP) {
@@ -4582,7 +4581,7 @@ intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 		}
 	}
 
-	return connector;
+	return 0;
 }
 
 static int intel_hdmi_reset_link(struct intel_encoder *encoder,
@@ -4748,20 +4747,19 @@ static bool bdw_digital_port_connected(struct intel_encoder *encoder)
 	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;
 }
 
-static struct intel_connector *
-intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
+static int intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 {
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
 
 	connector = intel_connector_alloc();
 	if (!connector)
-		return NULL;
+		return -ENOMEM;
 
 	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
 	intel_hdmi_init_connector(dig_port, connector);
 
-	return connector;
+	return 0;
 }
 
 static bool intel_ddi_a_force_4_lanes(struct intel_digital_port *dig_port)
@@ -5306,7 +5304,7 @@ void intel_ddi_init(struct intel_display *display,
 	intel_infoframe_init(dig_port);
 
 	if (init_dp) {
-		if (!intel_ddi_init_dp_connector(dig_port))
+		if (intel_ddi_init_dp_connector(dig_port))
 			goto err;
 
 		dig_port->hpd_pulse = intel_dp_hpd_pulse;
@@ -5320,7 +5318,7 @@ void intel_ddi_init(struct intel_display *display,
 	 * but leave it just in case we have some really bad VBTs...
 	 */
 	if (encoder->type != INTEL_OUTPUT_EDP && init_hdmi) {
-		if (!intel_ddi_init_hdmi_connector(dig_port))
+		if (intel_ddi_init_hdmi_connector(dig_port))
 			goto err;
 	}
 
-- 
2.39.5

