Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 239DCA34445
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B339C10EB00;
	Thu, 13 Feb 2025 15:02:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F+wH04zD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF36E10EB01
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458963; x=1770994963;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jcb0vt1R7UdIrUy4u8SVPl4UQvUJJhKKsdUgnKFGgRE=;
 b=F+wH04zDUxQ52Z0TtWx+FHXBC1L/Bj3GWnjhOTkY0+3U/r30gi8bIH8C
 5NzH/AeaiVI6HcnbjMzhCBSkUSUkQnzLaFIeHGco2iPY6mMWpRJCoz5cr
 9Rj4akUUol2ob5JMjsLDDzBPBbk1+qJovChe/IN0x+8W6SnWpUIiYsjcz
 lm2OwEEo5c8qdEQpmOD7VhcFB4BhkH3fed2iaNITZduhNtmqnanePR+Yy
 q9dgIKaR8K7WMEpOx65P81fUyupqF2L/jXljSVwgYKGd7c3XhYCmRemsF
 fTC7cJCQnhvqWFy+gX7dB8zPh315aQgeDJeVx1Ny1XwXoIOjuTq8GF3xA Q==;
X-CSE-ConnectionGUID: pRXGOmN6Tb+4v23MOvv/kA==
X-CSE-MsgGUID: NI85nkw5RG2g/3/JxWsfuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567568"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567568"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:43 -0800
X-CSE-ConnectionGUID: Yww5CzI3QA+lplUwCSjQzA==
X-CSE-MsgGUID: BGIH+o7PQ9SE0sAjrRjgHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349613"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/12] drm/i915: Relocate vlv_wait_port_ready()
Date: Thu, 13 Feb 2025 17:02:15 +0200
Message-ID: <20250213150220.13580-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
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

While vlv_wait_port_ready() doens't directly talk to the VLV/CHV
DPIO PHY, the signals it's looking for do come from the PHY. So
it seems appropriate to relocate it into intel_dpio_phy.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 34 -------------------
 drivers/gpu/drm/i915/display/intel_display.h  |  3 --
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 34 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dpio_phy.h |  8 +++++
 4 files changed, 42 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4278212a2496..c2bde539a4ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -474,40 +474,6 @@ static void assert_planes_disabled(struct intel_crtc *crtc)
 		assert_plane_disabled(plane);
 }
 
-void vlv_wait_port_ready(struct intel_display *display,
-			 struct intel_digital_port *dig_port,
-			 unsigned int expected_mask)
-{
-	u32 port_mask;
-	i915_reg_t dpll_reg;
-
-	switch (dig_port->base.port) {
-	default:
-		MISSING_CASE(dig_port->base.port);
-		fallthrough;
-	case PORT_B:
-		port_mask = DPLL_PORTB_READY_MASK;
-		dpll_reg = DPLL(display, 0);
-		break;
-	case PORT_C:
-		port_mask = DPLL_PORTC_READY_MASK;
-		dpll_reg = DPLL(display, 0);
-		expected_mask <<= 4;
-		break;
-	case PORT_D:
-		port_mask = DPLL_PORTD_READY_MASK;
-		dpll_reg = DPIO_PHY_STATUS;
-		break;
-	}
-
-	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000))
-		drm_WARN(display->drm, 1,
-			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
-			 dig_port->base.base.base.id, dig_port->base.base.name,
-			 intel_de_read(display, dpll_reg) & port_mask,
-			 expected_mask);
-}
-
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
 {
 	struct intel_display *display = to_intel_display(new_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 2e11fc2ba1f4..b3cdf7f04450 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -488,9 +488,6 @@ bool intel_encoder_is_tc(struct intel_encoder *encoder);
 enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder);
 
 int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
-void vlv_wait_port_ready(struct intel_display *display,
-			 struct intel_digital_port *dig_port,
-			 unsigned int expected_mask);
 
 bool intel_fuzzy_clock_check(int clock1, int clock2);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 5f88702818d3..968b795206b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -1156,3 +1156,37 @@ void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1_GRP(ch), 0x00e00060);
 	vlv_dpio_put(dev_priv);
 }
+
+void vlv_wait_port_ready(struct intel_display *display,
+			 struct intel_digital_port *dig_port,
+			 unsigned int expected_mask)
+{
+	u32 port_mask;
+	i915_reg_t dpll_reg;
+
+	switch (dig_port->base.port) {
+	default:
+		MISSING_CASE(dig_port->base.port);
+		fallthrough;
+	case PORT_B:
+		port_mask = DPLL_PORTB_READY_MASK;
+		dpll_reg = DPLL(display, 0);
+		break;
+	case PORT_C:
+		port_mask = DPLL_PORTC_READY_MASK;
+		dpll_reg = DPLL(display, 0);
+		expected_mask <<= 4;
+		break;
+	case PORT_D:
+		port_mask = DPLL_PORTD_READY_MASK;
+		dpll_reg = DPIO_PHY_STATUS;
+		break;
+	}
+
+	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000))
+		drm_WARN(display->drm, 1,
+			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
+			 dig_port->base.base.base.id, dig_port->base.base.name,
+			 intel_de_read(display, dpll_reg) & port_mask,
+			 expected_mask);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.h b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
index a82939165546..15596407fe87 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.h
@@ -72,6 +72,9 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state);
 void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 			 const struct intel_crtc_state *old_crtc_state);
+void vlv_wait_port_ready(struct intel_display *display,
+			 struct intel_digital_port *dig_port,
+			 unsigned int expected_mask);
 #else
 static inline void bxt_port_to_phy_channel(struct intel_display *display, enum port port,
 					   enum dpio_phy *phy, enum dpio_channel *ch)
@@ -170,6 +173,11 @@ static inline void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *old_crtc_state)
 {
 }
+static inline void vlv_wait_port_ready(struct intel_display *display,
+				       struct intel_digital_port *dig_port,
+				       unsigned int expected_mask)
+{
+}
 #endif
 
 #endif /* __INTEL_DPIO_PHY_H__ */
-- 
2.45.3

