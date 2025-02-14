Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B60FA36029
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B862410ECB9;
	Fri, 14 Feb 2025 14:19:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i9NqIgnE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 540D610ECB5;
 Fri, 14 Feb 2025 14:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542761; x=1771078761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tST1jQX2NtRDEUx6L5N+Qm9ut6P+m8C1Pjukfdxuqtw=;
 b=i9NqIgnE6Fh/I8m39+366qQmwr8317VE2028Nm3imOYR3/yWpEnmW2U2
 zwC5BSDtPCncJyXGA7W3I7/ACspGQx79ntDmfSyYqACroU+LQKQriCDst
 WSX4dlYpgsaytrJ/canfWkNRKCv6SAFAP1sgoM6y3Az8Ey7RnbDyLjgTl
 9stsjmPcyGW5xFnAXiVhEFP4F0arkPDM2BjWIb5//EA6F472APeXjdyLX
 Vzq6GxbSc21xEPhA9alf6Icf4kd/moiEn9uJJ3Z1M/jblAW/TVyLHXqbX
 oGQakDZooeeknQ0emXJa++qg4HAm1p29KkgEUeHgKYPrhGizp11g+UtlN w==;
X-CSE-ConnectionGUID: HefWbE0IQm6RE3YV1MM4lw==
X-CSE-MsgGUID: fLVSZ8F+QgWEjSxVlw03iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="27892515"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="27892515"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:21 -0800
X-CSE-ConnectionGUID: GKVzyuPHSXyIq3kCva1HZw==
X-CSE-MsgGUID: HfOeRbNYStOo6KuVmAZZKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136694380"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:16 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 09/11] drm/i915/ddi: Unify the platform specific functions
 disabling a port
Date: Fri, 14 Feb 2025 16:19:59 +0200
Message-ID: <20250214142001.552916-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250214142001.552916-1-imre.deak@intel.com>
References: <20250214142001.552916-1-imre.deak@intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 43 ++++--------------------
 1 file changed, 7 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0cb6c95315fcd..56094a33b0c4a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3076,58 +3076,29 @@ mtl_ddi_disable_d2d(struct intel_encoder *encoder)
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
 	mtl_ddi_disable_d2d(encoder);
 
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

