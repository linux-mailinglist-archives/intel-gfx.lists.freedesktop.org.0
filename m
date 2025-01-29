Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73345A224EE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:02:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BD8D10E8B2;
	Wed, 29 Jan 2025 20:01:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fM53nDY9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC2010E88F;
 Wed, 29 Jan 2025 20:01:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180912; x=1769716912;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YjQLmTXvQeaUL0hdwYhe0n9S0vzRY+ZwiSi3xvJ8x+I=;
 b=fM53nDY9925Um+/QdkAXlpqiXurfc1+3bhFRaEow9pVXpQAOEe6qs7h4
 N+H1vD4If+YYEq5tIppBgpOcVxvLrtpy/0BRq94e8//n2v7YZOqzlhpCl
 xVZlGK5c8bCDjhnOZod/MVAX7Jd2pWoQxuA+i4ZYSha0oj9rQY3rwi9ub
 KbVz3jhPsyfNGxNsFFY8Fiw7Sq+Q3G1nbsYdb1/8t05lhbMKFpicBAXwr
 gg2eNrpeh5Lz7r23A2BAbLPXMDuZQgVYkrWKgIzqb3N0zWeeS7P2SSBg+
 JUT9/tk0mjxJAYEmS8Rb/DPnckFYexbThVSoBZNfHBC8uvgAo/40OkOJw w==;
X-CSE-ConnectionGUID: yeoB6x1OTPWISKnX5HPoDQ==
X-CSE-MsgGUID: VnGeznaFRoeBACLBB+LRJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977704"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977704"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:36 -0800
X-CSE-ConnectionGUID: E06Z/SMASSu4IpYpWwCftw==
X-CSE-MsgGUID: q19YnQyXQE+ryPhgThwhtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750905"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:35 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 09/17] drm/i915/ddi: Unify the platform specific functions
 disabling a port
Date: Wed, 29 Jan 2025 22:02:13 +0200
Message-ID: <20250129200221.2508101-10-imre.deak@intel.com>
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

The functions disabling a port for MTL+ and earlier platforms only
differ by an extra step on MTL+ (to disable the D2D link) and the point
at which the port's idle state is waited for. Combine the two functions
accounting for the above differences, removing the duplication.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 43 ++++--------------------
 1 file changed, 7 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 07188606a0177..73702ccbb3773 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3057,58 +3057,29 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
 			port_name(port));
 }
 
-static void mtl_disable_ddi_buf(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state)
+static void intel_disable_ddi_buf(struct intel_encoder *encoder,
+				  const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 
-	/* 3.b Clear DDI_CTL_DE Enable to 0. */
 	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
 
-	/* 3.c Poll for PORT_BUF_CTL Idle Status == 1, timeout after 100us */
-	intel_wait_ddi_buf_idle(dev_priv, port);
+	if (DISPLAY_VER(display) >= 14)
+		intel_wait_ddi_buf_idle(dev_priv, port);
 
-	/* 3.d Disable D2D Link */
 	mtl_ddi_disable_d2d_link(encoder);
 
-	/* 3.e Disable DP_TP_CTL */
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
 		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
 			     DP_TP_CTL_ENABLE, 0);
 	}
-}
-
-static void disable_ddi_buf(struct intel_encoder *encoder,
-			    const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
-
-	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
-
-	if (intel_crtc_has_dp_encoder(crtc_state))
-		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
-			     DP_TP_CTL_ENABLE, 0);
 
 	intel_ddi_disable_fec(encoder, crtc_state);
 
-	intel_wait_ddi_buf_idle(dev_priv, port);
-}
-
-static void intel_disable_ddi_buf(struct intel_encoder *encoder,
-				  const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-
-	if (DISPLAY_VER(dev_priv) >= 14) {
-		mtl_disable_ddi_buf(encoder, crtc_state);
-
-		/* 3.f Disable DP_TP_CTL FEC Enable if it is needed */
-		intel_ddi_disable_fec(encoder, crtc_state);
-	} else {
-		disable_ddi_buf(encoder, crtc_state);
-	}
+	if (DISPLAY_VER(display) < 14)
+		intel_wait_ddi_buf_idle(dev_priv, port);
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, false);
 }
-- 
2.44.2

