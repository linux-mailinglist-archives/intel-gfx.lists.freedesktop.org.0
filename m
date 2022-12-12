Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 966E464A351
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 15:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775A610E1DD;
	Mon, 12 Dec 2022 14:29:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1066D10E195
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 14:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670855384; x=1702391384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Fdv+0rShj5X1t+P7yH3yeKWVUuJ9ts7k3u3tLjYKhts=;
 b=HrCZFO93CUhoz6nZEKuqsgmHj8lOdLW2WnIcit3LZc5J4Hl89xTVE5bM
 Qxmoz0culgHygMa0vq1NgLSS0D8rKJxTVIFFzYj4dqyARoZJDDeeHO+Fv
 3iS1vaI2KijIm41U4jYpJ6juRZmjO3SWHl+2DrPmDhrgPI8vI6yociFsH
 W98aTeQHvFrn8jqy7yLxvhmhwcHL55pLA6G7qXLF5PKfL8jqyrhazyVvT
 rjhdvZVo3L4n+KJzMLc+Uo2BevM+6KTiI3pubAHj+wl7z7F9MSBOe8zHD
 O1jciJpjfGs6NTD//a+PPNt1WPrwkITYJ1L0xgP4qlquBZB7rqDNFn/U6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="316558447"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="316558447"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="790511198"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="790511198"
Received: from sshumihi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.95])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 06:29:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 16:29:21 +0200
Message-Id: <ee0889d70deadc1e596c90dc6e20fa58837cb9b7.1670855299.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670855299.git.jani.nikula@intel.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/display: use common function for
 checking scanline is moving
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

cpt_verify_modeset() is roughly the same as
intel_wait_for_pipe_scanline_moving(). Assume it's close enough.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0cdb514d7ee0..ef15cc2b1fa9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1062,22 +1062,6 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 	return encoder;
 }
 
-static void cpt_verify_modeset(struct drm_i915_private *dev_priv,
-			       enum pipe pipe)
-{
-	i915_reg_t dslreg = PIPEDSL(pipe);
-	u32 temp;
-
-	temp = intel_de_read(dev_priv, dslreg);
-	udelay(500);
-	if (wait_for(intel_de_read(dev_priv, dslreg) != temp, 5)) {
-		if (wait_for(intel_de_read(dev_priv, dslreg) != temp, 5))
-			drm_err(&dev_priv->drm,
-				"mode set failed: pipe %c stuck\n",
-				pipe_name(pipe));
-	}
-}
-
 static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -1772,7 +1756,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_enable(state, crtc);
 
 	if (HAS_PCH_CPT(dev_priv))
-		cpt_verify_modeset(dev_priv, pipe);
+		intel_wait_for_pipe_scanline_moving(crtc);
 
 	/*
 	 * Must wait for vblank to avoid spurious PCH FIFO underruns.
-- 
2.34.1

