Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2468D2396
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:57:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1959610EE46;
	Tue, 28 May 2024 18:57:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kYgYTvcS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA7C10E8BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922631; x=1748458631;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bE09i4XJLxJZvNFXCe67KmaxqxDWOoS56vTGi+NSTQg=;
 b=kYgYTvcSa+sb6GgfjHv9zD9Upce3kpcsQuIMeMcKJELr9HPGkEfd6Zce
 JulQ0Q8iwhH9iXUTbiSvvQC9Ezcma5Rt5MZSGmb+gkeI+bYeLUVEqFqCE
 n2Jjyznzz3EVR0hg65yc+Tm+rlCNseYdURtLLsfb3OKhoQ4yb60ADZTfR
 Ri0F9yhAEJfS0132QHXenERacnSfbeWe/N1zphHRJDdzY4xoCR5GGBOHb
 LC7omt9hL/qGcQSrQboMul3bDKJNzwVl2dw9x4r4LwkjvEBgynNuGSKLv
 YBc97mlMpZSe9Oey2l164Vt4grYVbkvc5ZWgImbnjMSqVMEI5vOsm4UoV A==;
X-CSE-ConnectionGUID: CGbsBVaCQ6SJpAr8Jnr7LA==
X-CSE-MsgGUID: ZgcL1ZviTCabMppj17WhJQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35815277"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35815277"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:57:09 -0700
X-CSE-ConnectionGUID: 62dvfN/PR5GpSeyO6ohdMg==
X-CSE-MsgGUID: 8wFJg9DrTTWH3APQkXlLjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35144582"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:57:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:57:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915/dsb: Convert dewake_scanline to a hw scanline
 number earlier
Date: Tue, 28 May 2024 21:56:47 +0300
Message-ID: <20240528185647.7765-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
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

Currently we switch from out software idea of a scanline
to the hw's idea of a scanline during the commit phase in
_intel_dsb_commit(). While that is slightly easier due to
fastsets fiddling with the timings, we'll also need to
generate proper hw scanline numbers already when emitting
DSB scanline wait instructions. So this approach won't
do in the future. Switch to hw scanline numbers earlier.

Also intel_dsb_dewake_scanline() itself already makes
some assumptions about VRR that don't take into account
VRR toggling during fastsets, so technically delaying
the sw->hw conversion doesn't even help us.

The other reason for delaying the conversion was that we
are using intel_get_crtc_scanline() during intel_dsb_commit()
which gives us the current sw scanline. But this is pretty
low level stuff anyway so just using raw PIPEDSL reads seems
fine here, and that of course gives us the hw scanline
directly, reducing the need to do so many conversions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 16 +++++++++-------
 drivers/gpu/drm/i915/display/intel_vblank.c |  9 ++++-----
 drivers/gpu/drm/i915/display/intel_vblank.h |  3 ++-
 3 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 319fbebd7008..63268ed2e53f 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -326,14 +326,16 @@ static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	unsigned int latency = skl_watermark_max_latency(i915, 0);
-	int vblank_start;
+	int vblank_start, dewake_scanline;
 
 	if (crtc_state->vrr.enable)
 		vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
 	else
 		vblank_start = intel_mode_vblank_start(adjusted_mode);
 
-	return max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, latency));
+	dewake_scanline = max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, latency));
+
+	return intel_crtc_scanline_to_hw(crtc_state, dewake_scanline);
 }
 
 static u32 dsb_chicken(struct intel_crtc *crtc)
@@ -376,19 +378,19 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
 
 	if (dewake_scanline >= 0) {
-		int diff, hw_dewake_scanline;
-
-		hw_dewake_scanline = intel_crtc_scanline_to_hw(crtc, dewake_scanline);
+		int diff, position;
 
 		intel_de_write_fw(dev_priv, DSB_PMCTRL(pipe, dsb->id),
 				  DSB_ENABLE_DEWAKE |
-				  DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
+				  DSB_SCANLINE_FOR_DEWAKE(dewake_scanline));
 
 		/*
 		 * Force DEwake immediately if we're already past
 		 * or close to racing past the target scanline.
 		 */
-		diff = dewake_scanline - intel_get_crtc_scanline(crtc);
+		position = intel_de_read_fw(dev_priv, PIPEDSL(pipe)) & PIPEDSL_LINE_MASK;
+		diff = dewake_scanline - position;
+
 		intel_de_write_fw(dev_priv, DSB_PMCTRL_2(pipe, dsb->id),
 				  (diff >= 0 && diff < 5 ? DSB_FORCE_DEWAKE : 0) |
 				  DSB_BLOCK_DEWAKE_EXTENSION);
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index eb80952b0cfd..2e3442fe5a5d 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -281,13 +281,12 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
 	return (position + vtotal + crtc->scanline_offset) % vtotal;
 }
 
-int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
+int intel_crtc_scanline_to_hw(const struct intel_crtc_state *crtc_state,
+			      int scanline)
 {
-	const struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(&crtc->base);
-	const struct drm_display_mode *mode = &vblank->hwmode;
-	int vtotal = intel_mode_vtotal(mode);
+	int vtotal = intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
 
-	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
+	return (scanline + vtotal - intel_crtc_scanline_offset(crtc_state)) % vtotal;
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index b51ae2c1039e..b5b8bcbf0bf0 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -39,6 +39,7 @@ void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 				      bool vrr_enable);
-int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline);
+int intel_crtc_scanline_to_hw(const struct intel_crtc_state *crtc_state,
+			      int scanline);
 
 #endif /* __INTEL_VBLANK_H__ */
-- 
2.44.1

