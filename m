Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C7B8FB707
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42AE610E4DE;
	Tue,  4 Jun 2024 15:27:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W0gt/AAv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7D3010E0B8
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514863; x=1749050863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cdm0lijiLxZ5BOMTZr5BABO6Dsb7kX4xfj27fzblFKw=;
 b=W0gt/AAvBiCCC47D9RvQ+VZu7EPJeRKlzH2KjSn7HlvyNAlQtfQeIPpi
 x03L+mweVg5f6DA71RmGHLE2s4cOQ58lh2v8aDbq6fZCeQCkQCZAbCPVh
 uaVO+fCAfv4D9hXwJHT36uMe70P/BSc3HLJGoutlwJJWdeY3PrtpZldft
 Jq/jnGE461SsgCRfuxSWihnL62EI3JXXC5GMVqaT1HTO9sKoeRVX7Fkyl
 wkBaGnCuLftKbLJ02kPgOhEdzd63r3V3yG8mmdusMCYIKMJllHJLjSBmC
 aaH8/SOJ7o0bTjLt2Z4KjDf7tEIhMJbVBSjkaLLxE8iOJISmldH4WM33T A==;
X-CSE-ConnectionGUID: tO0HciLCSwuNVeHwXbYbkQ==
X-CSE-MsgGUID: HSz44DO5QaKApEYFMac90Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25469765"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="25469765"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:43 -0700
X-CSE-ConnectionGUID: z/4yViFyTKafBRPffJGiRg==
X-CSE-MsgGUID: NAvlERjeQrakFriGqrBgMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="42383383"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 15/65] drm/i915: pass dev_priv explicitly to PFIT_CONTROL
Date: Tue,  4 Jun 2024 18:25:33 +0300
Message-Id: <fad44d3d987d914c83844cdf172adaa19772e035.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PFIT_CONTROL register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++-----
 drivers/gpu/drm/i915/display/intel_lvds.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_overlay.c |  2 +-
 drivers/gpu/drm/i915/i915_reg.h              |  2 +-
 4 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e7ee4970e306..49672694293f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1861,12 +1861,13 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
 	 * according to register description and PRM.
 	 */
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, PFIT_CONTROL) & PFIT_ENABLE);
+		    intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_ENABLE);
 	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
 
 	intel_de_write(dev_priv, PFIT_PGM_RATIOS,
 		       crtc_state->gmch_pfit.pgm_ratios);
-	intel_de_write(dev_priv, PFIT_CONTROL, crtc_state->gmch_pfit.control);
+	intel_de_write(dev_priv, PFIT_CONTROL(dev_priv),
+		       crtc_state->gmch_pfit.control);
 
 	/* Border color in case we don't scale up to the full screen. Black by
 	 * default, change to something else for debugging. */
@@ -2195,8 +2196,8 @@ static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 	assert_transcoder_disabled(dev_priv, old_crtc_state->cpu_transcoder);
 
 	drm_dbg_kms(&dev_priv->drm, "disabling pfit, current: 0x%08x\n",
-		    intel_de_read(dev_priv, PFIT_CONTROL));
-	intel_de_write(dev_priv, PFIT_CONTROL, 0);
+		    intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)));
+	intel_de_write(dev_priv, PFIT_CONTROL(dev_priv), 0);
 }
 
 static void i9xx_crtc_disable(struct intel_atomic_state *state,
@@ -2974,7 +2975,7 @@ static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
 	if (!i9xx_has_pfit(dev_priv))
 		return;
 
-	tmp = intel_de_read(dev_priv, PFIT_CONTROL);
+	tmp = intel_de_read(dev_priv, PFIT_CONTROL(dev_priv));
 	if (!(tmp & PFIT_ENABLE))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 891777481dd9..9f018503d4fd 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -148,7 +148,7 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
 
 	/* gen2/3 store dither state in pfit control, needs to match */
 	if (DISPLAY_VER(dev_priv) < 4) {
-		tmp = intel_de_read(dev_priv, PFIT_CONTROL);
+		tmp = intel_de_read(dev_priv, PFIT_CONTROL(dev_priv));
 
 		crtc_state->gmch_pfit.control |= tmp & PFIT_PANEL_8TO6_DITHER_ENABLE;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 1c2099ed5514..e41881f08d1f 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -950,7 +950,7 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
 	} else {
 		u32 tmp;
 
-		if (intel_de_read(dev_priv, PFIT_CONTROL) & PFIT_VERT_AUTO_SCALE)
+		if (intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_VERT_AUTO_SCALE)
 			tmp = intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
 		else
 			tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 166c7f4f9c6c..b0dbe6113bbc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1588,7 +1588,7 @@
 #define   VIDEO_DIP_ENABLE_AS_ADL	REG_BIT(23)
 
 /* Panel fitting */
-#define PFIT_CONTROL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61230)
+#define PFIT_CONTROL(dev_priv)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61230)
 #define   PFIT_ENABLE			REG_BIT(31)
 #define   PFIT_PIPE_MASK		REG_GENMASK(30, 29) /* 965+ */
 #define   PFIT_PIPE(pipe)		REG_FIELD_PREP(PFIT_PIPE_MASK, (pipe))
-- 
2.39.2

