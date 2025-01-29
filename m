Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A35A224E9
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D5110E8AE;
	Wed, 29 Jan 2025 20:01:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PAjANBZL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29ED810E8A1;
 Wed, 29 Jan 2025 20:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180894; x=1769716894;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+mKPTN5yadMwqOkTPFu3lSf1uoRoLPQt8a9QWjtE02o=;
 b=PAjANBZLnZeO22LG218cGPyG+ZDg0NP7W4AUiBnAE5p5ic4YuuRJ0192
 23B+gI7iMUOPkJlYPIOmhMUFUqOCqqMZdJlCxMXLA3+Dgom7tw6+FIt5u
 sTwM8WdKJZco15lD98AcDt0panzP5v4W5NwPtjcMej2nWAooH55s52mIC
 TjM4qcMFI6hXSTt3TeAoELociIJSMNfglhK77zCqF90hv/8zjcdHdaMHs
 K0KhlAwr5bwRznMONgJJh0SAag4ibp79G7a9vWs0V1QuydvFJ/LpU5UCY
 WUdXCswiaTIVnlGfi7gS1jE/B0rgioXUxJ1GiR5caCasUl2cg3liBBelG w==;
X-CSE-ConnectionGUID: A8z4wQtoRQmAjfUP+oXRdQ==
X-CSE-MsgGUID: OVCRYk9xT8OXGTgC4mmzxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977696"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977696"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:34 -0800
X-CSE-ConnectionGUID: 5O7R26cvTqmKPE6R9YZP1A==
X-CSE-MsgGUID: nr872NHATL+FDHB6AIhadQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750902"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:33 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 07/17] drm/i915/ddi: Simplify waiting for a port to idle via
 DDI_BUF_CTL
Date: Wed, 29 Jan 2025 22:02:11 +0200
Message-ID: <20250129200221.2508101-8-imre.deak@intel.com>
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

When waiting for a port to idle, there is no point in distinguishing the
platform specific timeouts, instead of just using the maximum timeout.
Simplify things accordingly, describing the Bspec platform specific
timeouts in code comments.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 78 +++++++++++-------------
 1 file changed, 36 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 24c56d2aa5f31..d040558b5d029 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -177,69 +177,63 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 		       trans->entries[level].hsw.trans2);
 }
 
-static void mtl_wait_ddi_buf_idle(struct drm_i915_private *i915, enum port port)
+static i915_reg_t intel_ddi_buf_status_reg(struct intel_display *display, enum port port)
 {
-	int ret;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	/* FIXME: find out why Bspec's 100us timeout is too short */
-	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port)) &
-			   XELPDP_PORT_BUF_PHY_IDLE), 10000);
-	if (ret)
-		drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to get idle\n",
-			port_name(port));
+	if (DISPLAY_VER(display) >= 14)
+		return XELPDP_PORT_BUF_CTL1(i915, port);
+	else
+		return DDI_BUF_CTL(port);
 }
 
 void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
 			     enum port port)
 {
-	if (IS_BROXTON(dev_priv)) {
+	struct intel_display *display = &dev_priv->display;
+
+	/*
+	 * Bspec's platform specific timeouts:
+	 * MTL+   : 100 us
+	 * BXT    : fixed 16 us
+	 * HSW-ADL: 8 us
+	 *
+	 * FIXME: MTL requires 10 ms based on tests, find out why 100 us is too short
+	 */
+	if (display->platform.broxton) {
 		udelay(16);
 		return;
 	}
 
-	if (wait_for_us((intel_de_read(dev_priv, DDI_BUF_CTL(port)) &
-			 DDI_BUF_IS_IDLE), 8))
-		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get idle\n",
+	static_assert(DDI_BUF_IS_IDLE == XELPDP_PORT_BUF_PHY_IDLE);
+	if (intel_de_wait_for_set(display, intel_ddi_buf_status_reg(display, port),
+				  DDI_BUF_IS_IDLE, 10))
+		drm_err(display->drm, "Timeout waiting for DDI BUF %c to get idle\n",
 			port_name(port));
 }
 
 static void intel_wait_ddi_buf_active(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
-	int timeout_us;
-	int ret;
 
-	/* Wait > 518 usecs for DDI_BUF_CTL to be non idle */
-	if (DISPLAY_VER(dev_priv) < 10) {
+	/*
+	 * Bspec's platform specific timeouts:
+	 * MTL+             : 10000 us
+	 * DG2              : 1200 us
+	 * TGL-ADL combo PHY: 1000 us
+	 * TGL-ADL TypeC PHY: 3000 us
+	 * HSW-ICL          : fixed 518 us
+	 */
+	if (DISPLAY_VER(display) < 10) {
 		usleep_range(518, 1000);
 		return;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 14) {
-		timeout_us = 10000;
-	} else if (IS_DG2(dev_priv)) {
-		timeout_us = 1200;
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		if (intel_encoder_is_tc(encoder))
-			timeout_us = 3000;
-		else
-			timeout_us = 1000;
-	} else {
-		timeout_us = 500;
-	}
-
-	if (DISPLAY_VER(dev_priv) >= 14)
-		ret = _wait_for(!(intel_de_read(dev_priv,
-						XELPDP_PORT_BUF_CTL1(dev_priv, port)) &
-				  XELPDP_PORT_BUF_PHY_IDLE),
-				timeout_us, 10, 10);
-	else
-		ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) & DDI_BUF_IS_IDLE),
-				timeout_us, 10, 10);
-
-	if (ret)
-		drm_err(&dev_priv->drm, "Timeout waiting for DDI BUF %c to get active\n",
+	static_assert(DDI_BUF_IS_IDLE == XELPDP_PORT_BUF_PHY_IDLE);
+	if (intel_de_wait_for_clear(display, intel_ddi_buf_status_reg(display, port),
+				    DDI_BUF_IS_IDLE, 10))
+		drm_err(display->drm, "Timeout waiting for DDI BUF %c to get active\n",
 			port_name(port));
 }
 
@@ -3067,7 +3061,7 @@ static void mtl_disable_ddi_buf(struct intel_encoder *encoder,
 	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
 
 	/* 3.c Poll for PORT_BUF_CTL Idle Status == 1, timeout after 100us */
-	mtl_wait_ddi_buf_idle(dev_priv, port);
+	intel_wait_ddi_buf_idle(dev_priv, port);
 
 	/* 3.d Disable D2D Link */
 	mtl_ddi_disable_d2d_link(encoder);
-- 
2.44.2

