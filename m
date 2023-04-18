Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E2C6E6B86
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA9A910E830;
	Tue, 18 Apr 2023 17:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E13A10E820
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840562; x=1713376562;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mZbTbg7GKEfHvsjbdjf5HeW+MnlSIcwL2AW1WUPRDzE=;
 b=bDpfH/2y9+VNu2rOKE5b0ZzdeQ4IywBfudWWmNw+0uIS3FUDzD1e++L3
 uY7zpeapJzHQTJa1AwAmatjtnNlvrARlj7YZkogXrEnB3JwftBO1SwCn+
 ubfzI+in6XlGtoAdR1QXCyMQkuzN07vTsMkwvbFL/8W3gzk8SfllKQKIn
 sxzNIEpHIYIZzDHB9w+ERitw4xfYG0OjvlstFMnrTv0sVk8Vr6thU8yOQ
 3xK9B1gm4H9V9oX1zcI5fRumSWiqcsScP0ubyQ9aphswJXm3TULgsQ0yO
 wX4U9ZOSGuj/5K390P9ddVWNUypvLGpHYc3fer/eS4jkwAxAXxeeTDBkj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334052813"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334052813"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="641451756"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="641451756"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 18 Apr 2023 10:55:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:55:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:20 +0300
Message-Id: <20230418175528.13117-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/15] drm/i915: Use REG_BIT() & co. for ilk+
 pfit registers
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

Polish the ilk+ pfit registers with REG_BIT() & co., and
also take the opportunity to unify the ivb/hsw vs. not checks
in ilk_pfit_enable() and ilk_get_pfit_config().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  9 +++++++--
 drivers/gpu/drm/i915/i915_reg.h              | 20 ++++++++++----------
 2 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ea1b0e87ae35..e9000ed15e7f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3230,11 +3230,17 @@ static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 ctl, pos, size;
+	enum pipe pipe;
 
 	ctl = intel_de_read(dev_priv, PF_CTL(crtc->pipe));
 	if ((ctl & PF_ENABLE) == 0)
 		return;
 
+	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
+		pipe = REG_FIELD_GET(PF_PIPE_SEL_MASK_IVB, ctl);
+	else
+		pipe = crtc->pipe;
+
 	crtc_state->pch_pfit.enabled = true;
 
 	pos = intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
@@ -3249,8 +3255,7 @@ static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
 	 * ivb/hsw (since we don't use the higher upscaling modes which
 	 * differentiates them) so just WARN about this case for now.
 	 */
-	drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) == 7 &&
-		    (ctl & PF_PIPE_SEL_MASK_IVB) != PF_PIPE_SEL_IVB(crtc->pipe));
+	drm_WARN_ON(&dev_priv->drm, pipe != crtc->pipe);
 }
 
 static bool ilk_get_pipe_config(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index eea739e0b48a..3c02f6c70733 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4008,16 +4008,16 @@
 
 /* CPU panel fitter */
 /* IVB+ has 3 fitters, 0 is 7x5 capable, the other two only 3x3 */
-#define _PFA_CTL_1               0x68080
-#define _PFB_CTL_1               0x68880
-#define  PF_ENABLE              (1 << 31)
-#define  PF_PIPE_SEL_MASK_IVB	(3 << 29)
-#define  PF_PIPE_SEL_IVB(pipe)	((pipe) << 29)
-#define  PF_FILTER_MASK		(3 << 23)
-#define  PF_FILTER_PROGRAMMED	(0 << 23)
-#define  PF_FILTER_MED_3x3	(1 << 23)
-#define  PF_FILTER_EDGE_ENHANCE	(2 << 23)
-#define  PF_FILTER_EDGE_SOFTEN	(3 << 23)
+#define _PFA_CTL_1		0x68080
+#define _PFB_CTL_1		0x68880
+#define   PF_ENABLE			REG_BIT(31)
+#define   PF_PIPE_SEL_MASK_IVB		REG_GENMASK(30, 29) /* ivb/hsw */
+#define   PF_PIPE_SEL_IVB(pipe)		REG_FIELD_PREP(PF_PIPE_SEL_MASK_IVB, (pipe))
+#define   PF_FILTER_MASK		REG_GENMASK(24, 23)
+#define   PF_FILTER_PROGRAMMED		REG_FIELD_PREP(PF_FILTER_MASK, 0)
+#define   PF_FILTER_MED_3x3		REG_FIELD_PREP(PF_FILTER_MASK, 1)
+#define   PF_FILTER_EDGE_ENHANCE	REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 2)
+#define   PF_FILTER_EDGE_SOFTEN		REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 3)
 #define _PFA_WIN_SZ		0x68074
 #define _PFB_WIN_SZ		0x68874
 #define _PFA_WIN_POS		0x68070
-- 
2.39.2

