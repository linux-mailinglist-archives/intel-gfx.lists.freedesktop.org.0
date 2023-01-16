Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E728D66BE5C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 13:56:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5148E10E072;
	Mon, 16 Jan 2023 12:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B9D10E298
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673873793; x=1705409793;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NQ3F8lZhvMvBtY07aite49zJnhXgCjjQWhnPVnBuvqs=;
 b=D61x3AeEVv+lIsf76Jo6tyfach8L6ltN3caAwsq9dJH0ELjuj7Jj2htt
 u9qvUgtlskluTPKezbxu9zfUejWL3F2Us58cXJuW4GEMCGKCjJIFHXfPT
 9h0XcVFsktPCVn6HI3teo0j8mE7wKJ9WqUovvftNJaTRM66zLgr/TSYN3
 TcYS7pfnyIAPtH3T15AiddbFixsUAExp0/P4pNUjscMZRGVATn8JdrOSG
 XOuo+UUcYNYSnk324TTPdTi2cAF1VkJ3uScIJ6omXMVfdLSQCCoH4MAwz
 5yjzm3NOZ38faMi5Vs/U3TS+oPWm+sYkaX5eiAAQ/dui3X2zR/mkPNSmv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="386800009"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="386800009"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:56:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="904320307"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="904320307"
Received: from amakarev-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.13.137])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:56:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 14:56:14 +0200
Message-Id: <bf26763caaad25f3dfcf6f8e468421f93fb99646.1673873708.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1673873708.git.jani.nikula@intel.com>
References: <cover.1673873708.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: use common function
 for checking scanline is moving
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
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 +-----------------
 1 file changed, 1 insertion(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b5c0ab0f5e51..9b73663a0499 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1060,22 +1060,6 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
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
@@ -1770,7 +1754,7 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_enable(state, crtc);
 
 	if (HAS_PCH_CPT(dev_priv))
-		cpt_verify_modeset(dev_priv, pipe);
+		intel_wait_for_pipe_scanline_moving(crtc);
 
 	/*
 	 * Must wait for vblank to avoid spurious PCH FIFO underruns.
-- 
2.34.1

