Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4AEA224F3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:02:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F202110E8B7;
	Wed, 29 Jan 2025 20:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LRxlDvIU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED20D10E8AA;
 Wed, 29 Jan 2025 20:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180917; x=1769716917;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=HvrQBvZz0GNu8J/IJF4DZbBIMzbzmagjWxxifeK2g0g=;
 b=LRxlDvIUpldfgdWcUqlBv7OZk7h9gWG6kAr0ymqyEY1LqaR82kwk32pw
 R04OvuhY2xmXYBmjQUVhxRdRpdgIL2TTCbzfqMHJl7ycO0kFHRBGMsOWF
 EfiweuFJnNzRtrB9NYLV04GbECzbX0+yyr2FjIdFvfNGTB20sQ7vQu8zQ
 inEzaCflp9L+J/3I1GW3pkJNzPgeASOkenB77WWLvMsCOPFpWoF/mcuf8
 WYaime+zb17U8Ak8alkKsOu446p8KoX/L0UL8a8UV1hT25sF4+AoSlXQN
 5Yc5IgQ7AyV0D71RkcpWHwqdcLdNxfG6hDqLsAi6hXZdoO9XfepVOgNZL g==;
X-CSE-ConnectionGUID: QLjwLYDsQyGoit4gCNsJqA==
X-CSE-MsgGUID: kcUkqoE6Skav88kXON/7zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977751"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977751"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:44 -0800
X-CSE-ConnectionGUID: Cr3OmCl1T3SPLRzOl8TtVQ==
X-CSE-MsgGUID: PDV4jHbhTViUnHN9PzK71w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750917"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:42 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 15/17] drm/i915/ddi: Reuse helper to compute the HDMI
 PORT_BUF_CTL1 config
Date: Wed, 29 Jan 2025 22:02:19 +0200
Message-ID: <20250129200221.2508101-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250129200221.2508101-1-imre.deak@intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
MIME-Version: 1.0
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

Reuse the existing helper to compute the configuration value of the
XELPDP_PORT_BUF_CTL1 register for HDMI outputs instead of open-coding
this.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e03ec9a235d33..431db1e6b6f07 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2607,9 +2607,12 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 	enum port port = encoder->port;
 	u32 val = 0;
 
+	if (DISPLAY_VER(display) < 14)
+		return;
+
 	val |= XELPDP_PORT_WIDTH(crtc_state->lane_count);
 
-	if (intel_dp_is_uhbr(crtc_state))
+	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_state))
 		val |= XELPDP_PORT_BUF_PORT_DATA_40BIT;
 	else
 		val |= XELPDP_PORT_BUF_PORT_DATA_10BIT;
@@ -2618,7 +2621,8 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 		val |= XELPDP_PORT_REVERSAL;
 
 	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, port),
-		     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK,
+		     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL |
+		     XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK,
 		     val);
 }
 
@@ -3418,7 +3422,6 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_connector *connector = conn_state->connector;
 	enum port port = encoder->port;
 
@@ -3485,17 +3488,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 	 * is filled with lane count, already set in the crtc_state.
 	 * The same is required to be filled in PORT_BUF_CTL for C10/20 Phy.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 14) {
-		u32 port_buf = 0;
-
-		port_buf |= XELPDP_PORT_WIDTH(crtc_state->lane_count);
-
-		if (dig_port->lane_reversal)
-			port_buf |= XELPDP_PORT_REVERSAL;
-
-		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, port),
-			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
-	}
+	mtl_port_buf_ctl_program(encoder, crtc_state);
 
 	intel_enable_ddi_buf(encoder, intel_ddi_buf_ctl_config_val(encoder, crtc_state));
 }
-- 
2.44.2

