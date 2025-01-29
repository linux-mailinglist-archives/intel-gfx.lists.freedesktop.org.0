Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9761A224EB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:01:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD9710E8AA;
	Wed, 29 Jan 2025 20:01:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aNSc6ANv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D72A10E8A0;
 Wed, 29 Jan 2025 20:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180915; x=1769716915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zq/Hvqy9mbbOFlZmCBp5Gw0viyiw0NBU53mQ3siYh88=;
 b=aNSc6ANvGVinoK4WPtfgEk276B3dBRovZG8BpGjpu9It1Vi+tQY8qZsD
 aLwI4eghW1W3lLRm3NwdDb31YkobNmn5/sOo1fPF/sD+YfrjEjlvTIlom
 nAcnBrx3qjv5iXgmWrLJA2WiGb3Zs9z0k/MqIVr6eUYRe1tUMgrw8lFui
 cPHTwCtv+8EkFBUDwKc3zNauVJgFR7lrV1ydny4jkUMqmFsRX0trsIMGc
 2OmMmYxrCntS259tYKxmDiJrrfFop0koS2gK8DNZED6ScPCtIcmkRAYB+
 DJFAi3iQd5igamm2JGYtbyqOegWWeyDA6SVd5EDbbcIbiRUsRjakPGNTv Q==;
X-CSE-ConnectionGUID: 6RWJX1BuQ1+KbISliDfHCQ==
X-CSE-MsgGUID: PMH0lc+BSj6edhfy5vEGjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977729"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977729"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:40 -0800
X-CSE-ConnectionGUID: xP4UFoCaTIGX9hbMfUqbIg==
X-CSE-MsgGUID: eQjnG+A4SWmTeoVVMea2pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750911"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:39 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 12/17] drm/i915/ddi: Configure/enable a port in DDI_BUF_CTL
 via read-modify-write
Date: Wed, 29 Jan 2025 22:02:16 +0200
Message-ID: <20250129200221.2508101-13-imre.deak@intel.com>
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

From: Imre Deak <imre.deak@gmail.com>

The various flags in DDI_BUF_CTL must be programmed at different places
during a modeset. The expected value of the register at any moment is
cached in the intel_dp::DP variable and the whole register is written
using this variable. A simpler way would be not maintaining the cached
value of the register at all and update only specific fields in the
register via read-modify-write. Some places - like D2D link enabling or
the port disabling - use RMW already.

Based on the above update the register via RMW during the port
configuration / enabling as well. After all the places updating
DDI_BUF_CTL are changed - probably the voltage-swing/pre-emphasis level
setting is the only one remaining - tracking the register value in
intel_dp:DP could be removed.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ddb182550ad0f..64c42505f2ad6 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -359,6 +359,10 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 
 	if (IS_ALDERLAKE_P(i915) && intel_encoder_is_tc(encoder)) {
 		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
+		/*
+		 * TODO: remove the following once DDI_BUF_CTL is updated via
+		 * an RMW everywhere.
+		 */
 		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
 			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
 	}
@@ -370,6 +374,22 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
 	}
 }
 
+static u32 intel_ddi_buf_ctl_config_mask(struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	u32 mask = DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES |
+		   DDI_PORT_WIDTH_MASK;
+
+	if (DISPLAY_VER(display) >= 14)
+		mask |= DDI_BUF_PORT_DATA_MASK;
+	if (display->platform.alderlake_p)
+		mask |= DDI_BUF_PHY_LINK_RATE_MASK;
+	if (IS_DISPLAY_VER(display, 11, 13))
+		mask |= DDI_BUF_LANE_STAGGER_DELAY_MASK;
+
+	return mask;
+}
+
 static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
 				 enum port port)
 {
@@ -3062,7 +3082,8 @@ static void intel_enable_ddi_buf(struct intel_encoder *encoder, u32 buf_ctl)
 	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
 
-	intel_de_write(display, DDI_BUF_CTL(port), buf_ctl | DDI_BUF_CTL_ENABLE);
+	intel_de_rmw(display, DDI_BUF_CTL(port),
+		     intel_ddi_buf_ctl_config_mask(encoder), buf_ctl | DDI_BUF_CTL_ENABLE);
 	intel_de_posting_read(display, DDI_BUF_CTL(port));
 
 	intel_wait_ddi_buf_active(encoder);
-- 
2.44.2

