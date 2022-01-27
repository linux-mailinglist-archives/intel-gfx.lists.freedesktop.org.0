Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F43749DE07
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED61210EFC2;
	Thu, 27 Jan 2022 09:33:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4735010EF97
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276000; x=1674812000;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WjkTu/A6k1mmYISO8jwd3RZuJpLGsCrLyScAHUk2BsQ=;
 b=nuZnmCEq60//8/SBgJ+S+Vqx+YoBIRSSlsGTB3GEC1JxGsFv0sej2ffu
 PMHqNB7qgA4c0b3+IERQcC+iPuoaOtOKnJNt6utsThHlndj10Ummp2zJi
 MtU80Bjx9/wXcanINozCZXF4gUy+9yI9ALu0crw4pX5TYqzOQV7aSIr4y
 wYScy9arbSPKOL+t4ZrdvpFa4z8hLoAUlFpQrR7TPfmicLm7Qg2r7ywsW
 2LWu8ZOgNXKIwz3ppPTVg5v4+GaPcCLRsCC9BH9ITUnhNWr6Ut20VROYp
 O/xgkJYkUHvo45EUZewG23Ox71r2MUUY+kg9kiQB/+8Hu5gn18R3F9aA+ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="227472887"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="227472887"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="495669107"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga002.jf.intel.com with SMTP; 27 Jan 2022 01:33:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:32:53 +0200
Message-Id: <20220127093303.17309-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/14] drm/i915: Move drrs hardware bit frobbing
 to small helpers
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

Split the drrs code that actually changes the refresh rate
(via PIPECONF or M/N values) to small helper functions that
only deal with the hardware details an nothing else. We'll
soon have a third way of doing this, and it's less confusing
when each difference method lives in its own funciton.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 67 ++++++++++++-----------
 1 file changed, 36 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 46be46f2c47e..0cacdb174fd0 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -87,6 +87,38 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 		pipe_config->dp_m2_n2.data_m *= pipe_config->splitter.link_count;
 }
 
+static void
+intel_drrs_set_refresh_rate_pipeconf(const struct intel_crtc_state *crtc_state,
+				     enum drrs_refresh_rate_type refresh_type)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 val, bit;
+
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+		bit = PIPECONF_EDP_RR_MODE_SWITCH_VLV;
+	else
+		bit = PIPECONF_EDP_RR_MODE_SWITCH;
+
+	val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
+
+	if (refresh_type == DRRS_LOW_RR)
+		val |= bit;
+	else
+		val &= ~bit;
+
+	intel_de_write(dev_priv, PIPECONF(cpu_transcoder), val);
+}
+
+static void
+intel_drrs_set_refresh_rate_m_n(const struct intel_crtc_state *crtc_state,
+				enum drrs_refresh_rate_type refresh_type)
+{
+	intel_dp_set_m_n(crtc_state,
+			 refresh_type == DRRS_LOW_RR ? M2_N2 : M1_N1);
+}
+
 static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 				 const struct intel_crtc_state *crtc_state,
 				 enum drrs_refresh_rate_type refresh_type)
@@ -120,37 +152,10 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv)) {
-		switch (refresh_type) {
-		case DRRS_HIGH_RR:
-			intel_dp_set_m_n(crtc_state, M1_N1);
-			break;
-		case DRRS_LOW_RR:
-			intel_dp_set_m_n(crtc_state, M2_N2);
-			break;
-		case DRRS_MAX_RR:
-		default:
-			drm_err(&dev_priv->drm,
-				"Unsupported refreshrate type\n");
-		}
-	} else if (DISPLAY_VER(dev_priv) > 6) {
-		i915_reg_t reg = PIPECONF(crtc_state->cpu_transcoder);
-		u32 val;
-
-		val = intel_de_read(dev_priv, reg);
-		if (refresh_type == DRRS_LOW_RR) {
-			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-				val |= PIPECONF_EDP_RR_MODE_SWITCH_VLV;
-			else
-				val |= PIPECONF_EDP_RR_MODE_SWITCH;
-		} else {
-			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-				val &= ~PIPECONF_EDP_RR_MODE_SWITCH_VLV;
-			else
-				val &= ~PIPECONF_EDP_RR_MODE_SWITCH;
-		}
-		intel_de_write(dev_priv, reg, val);
-	}
+	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv))
+		intel_drrs_set_refresh_rate_m_n(crtc_state, refresh_type);
+	else if (DISPLAY_VER(dev_priv) > 6)
+		intel_drrs_set_refresh_rate_pipeconf(crtc_state, refresh_type);
 
 	dev_priv->drrs.refresh_rate_type = refresh_type;
 
-- 
2.34.1

