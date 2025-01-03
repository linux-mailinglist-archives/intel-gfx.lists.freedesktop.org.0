Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE8EA00386
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 06:17:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F2E10E7F3;
	Fri,  3 Jan 2025 05:17:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PMcgLEeK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8307F10E7EF;
 Fri,  3 Jan 2025 05:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735881459; x=1767417459;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nWWP/euXqEO3P14IK5iDnUXWRnZEaCvlR0bH2n0MWhA=;
 b=PMcgLEeK9YzS4VNdeZLTFN5qAloC1Avgy9NSuaywv/q541IsG0Uo5qie
 6gVZ0XAlMSgYgaaPWL24IQOKjhhSPA/Y8mSd1n8vXcyEZX/shke4YmSCd
 ndC5mAS0x/3qxq9V7k90poVGsax0sRoZJXi9CZsRRnDzSsKeVDkg2owF7
 lJG0AM6n4tbHQjfuQeJh7KssPa7ov6LdWLJ62Cs5kYJ9OvZ8vb7WEdwgV
 wdNeQEiSJ4jVZ1KlNGdsnZBCR423+eDrOrqN7fSiMfkSChSKwynw9A3Gx
 HinYdO4cbHyPmlksIpZyfw0CnGqWtcnXsBpkVKHUOo6XTbUnvX+zQ6lVl g==;
X-CSE-ConnectionGUID: oEQDAtJpR1Cc3oi9Lz5JVw==
X-CSE-MsgGUID: ozjbBH0pQfuXqGqnLO4ZDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="35429848"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="35429848"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 21:17:38 -0800
X-CSE-ConnectionGUID: qe3Uk6YqTS6LFlTVSJzJLA==
X-CSE-MsgGUID: sp77XgDWQUa/xzGEkF4frg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="106734511"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 02 Jan 2025 21:17:37 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, chaitanya.kumar.borah@intel.com,
 dnyaneshwar.bhadane@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/dp: Use intel_display instead of drm_i915_private
Date: Fri,  3 Jan 2025 10:47:04 +0530
Message-Id: <20250103051705.145161-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250103051705.145161-1-suraj.kandpal@intel.com>
References: <20250103051705.145161-1-suraj.kandpal@intel.com>
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

Use intel display instead of drm_i915_private in
mtl_ddi_prepare_link_retrain & mtl_port_buf_ctl_program
functions.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4f9c50996446..5e944cae116a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2534,12 +2534,12 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum port port = encoder->port;
 	u32 val;
 
-	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port));
+	val = intel_de_read(display, XELPDP_PORT_BUF_CTL1(i915, port));
 	val &= ~XELPDP_PORT_WIDTH_MASK;
 	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
 
@@ -2552,7 +2552,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
 	if (dig_port->lane_reversal)
 		val |= XELPDP_PORT_REVERSAL;
 
-	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(i915, port), val);
+	intel_de_write(display, XELPDP_PORT_BUF_CTL1(display, port), val);
 }
 
 static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
@@ -3639,9 +3639,9 @@ static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
 static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 					 const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 	u32 dp_tp_ctl;
 
@@ -3649,7 +3649,7 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	 * TODO: To train with only a different voltage swing entry is not
 	 * necessary disable and enable port
 	 */
-	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
+	dp_tp_ctl = intel_de_read(display, dp_tp_ctl_reg(encoder, crtc_state));
 	if (dp_tp_ctl & DP_TP_CTL_ENABLE)
 		mtl_disable_ddi_buf(encoder, crtc_state);
 
@@ -3662,8 +3662,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 		if (crtc_state->enhanced_framing)
 			dp_tp_ctl |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
 	}
-	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
-	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
+	intel_de_write(display, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
+	intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
 
 	/* 6.f Enable D2D Link */
 	mtl_ddi_enable_d2d(encoder);
@@ -3676,11 +3676,11 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 
 	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-	if (DISPLAY_VER(dev_priv) >= 20)
+	if (DISPLAY_VER(display) >= 20)
 		intel_dp->DP |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
 
-	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
-	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
+	intel_de_write(display, DDI_BUF_CTL(port), intel_dp->DP);
+	intel_de_posting_read(display, DDI_BUF_CTL(port));
 
 	/* 6.j Poll for PORT_BUF_CTL Idle Status == 0, timeout after 100 us */
 	intel_wait_ddi_buf_active(encoder);
-- 
2.34.1

