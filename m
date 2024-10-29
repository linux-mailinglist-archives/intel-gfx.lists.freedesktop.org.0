Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E319B554D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2416C10E715;
	Tue, 29 Oct 2024 21:52:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BFxHlgGn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 445B010E715
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238763; x=1761774763;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Rbm0Snit9Mx23tGOEyacqHafasD8mFj3oaSaKaUNXfY=;
 b=BFxHlgGnJ+Yi9ZFTDHyWB1pzFEJ73GXmqD6XGUlpztPNis22VYKAHSR1
 yQb6mXYpdEkhTKBnPt6NSEjf2dzTilm7GlR864ZjtnGSGXhVQTTK3170+
 yLpY1DtVRLFV5owHsjiGNjLqU+fMNljXPkqYLGBZV1KqBjmB/vNrDvIHL
 oenQMpM1pne4rec5Hcl4MJj4hEMSuKE2riGWYIwPaDub3f6rDj4dWzBT5
 tn359nEac2VhGRerPog0Ap3xbpEFWOM5vkxx4oQjzWOLMK9cV9qm6jpIh
 aTFWTp0itFqn+2kunEfLSQfP2e2CizazzvIC2N/cg39kD5NqH8YhFISQn Q==;
X-CSE-ConnectionGUID: rJsSep1tTHS35jqtYmjIVg==
X-CSE-MsgGUID: w2VNBbIuRoGzgmTCCUT4qA==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275178"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275178"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:40 -0700
X-CSE-ConnectionGUID: hb5D1pa4RtWCM4/Rtm8Zfw==
X-CSE-MsgGUID: 1J0q9teJSUWJX+IQlmUX6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200249"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/11] drm/i915/cdclk: Factor out INTEL_OUTPUT_DSI check in
 vlv_dsi_min_cdclk()
Date: Tue, 29 Oct 2024 23:52:13 +0200
Message-ID: <20241029215217.3697-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
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

All the if statements in vlv_dsi_min_cdclk() check for
INTEL_OUTPUT_DSI. Make life simpler by checking that just
once at the start.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 49a895589150..708639178e29 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1763,26 +1763,26 @@ static void vlv_dphy_param_init(struct intel_dsi *intel_dsi)
 int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	int min_cdclk = 0;
+
+	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
+		return 0;
 
 	/*
 	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
 	 * than 320000KHz.
 	 */
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
-	    IS_VALLEYVIEW(dev_priv))
-		min_cdclk = max(320000, min_cdclk);
+	if (IS_VALLEYVIEW(dev_priv))
+		return 320000;
 
 	/*
 	 * On Geminilake once the CDCLK gets as low as 79200
 	 * picture gets unstable, despite that values are
 	 * correct for DSI PLL and DE PLL.
 	 */
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
-	    IS_GEMINILAKE(dev_priv))
-		min_cdclk = max(158400, min_cdclk);
+	if (IS_GEMINILAKE(dev_priv))
+		return 158400;
 
-	return min_cdclk;
+	return 0;
 }
 
 typedef void (*vlv_dsi_dmi_quirk_func)(struct intel_dsi *intel_dsi);
-- 
2.45.2

