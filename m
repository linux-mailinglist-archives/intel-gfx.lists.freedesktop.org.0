Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F62A13F91
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 17:34:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9824910E9D9;
	Thu, 16 Jan 2025 16:34:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FglJMqbP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A75FD10E9D6;
 Thu, 16 Jan 2025 16:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737045293; x=1768581293;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kOxeV2+0quIkL/s5/c6zlPk0uyVKgExCTMDVsugwwHE=;
 b=FglJMqbPOvQhRIb0fuf0QnQkiCT+euiOM0/lvrSnv0JnGYeu+TNde2lf
 9P+Nd/fmUjeNL70LQ3LZdi7DYQieoYardHA5og7qhxGzJGexRWoNze98c
 R/nyHt7TrPgAGs3YIKaiUvP016iyjr6mcUgITHdowCYaPXh4Esas+P0ru
 cMSJZ/SRt9fK2Ft0/577mPBVtfvBh9xeUFZ28TeedekZyM6YXxmsD0PGW
 EfWCfjfRQa1H+BDWnIMgzEHxQ0UU0Hrtk0ek7gFA9zxXQ05I472U274+r
 Emi7OsP3IW483sd0CpWTt3LEWU1jRGKmv3pfHVBkoRB+CHXd5iGEV7L/k Q==;
X-CSE-ConnectionGUID: jpxCay51Qsm6dhTO8aGeCg==
X-CSE-MsgGUID: ZDOTQjlLTWOiWyiZ9UGwQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37602039"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37602039"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 08:34:52 -0800
X-CSE-ConnectionGUID: lrVllTQIQKmwc7IKuH5V1w==
X-CSE-MsgGUID: qU7Iyt2RQ+yqVZkLbz+hsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109600786"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa003.fm.intel.com with ESMTP; 16 Jan 2025 08:34:50 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v6 4/7] drm/i915/scaler: Compute scaling factors for pipe
 scaler
Date: Thu, 16 Jan 2025 22:01:27 +0530
Message-ID: <20250116163130.3816719-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute scaling factors and scaler user for pipe scaler if
particular scaler user is pipe scaler.

--v2:
- Fix typos. [Ankit]
- Remove FIXME tag which was added to check for pipe scaling
factors as well. [Ankit]
- Should be common hscale, vscale instead of local one to
avoid garbage overwritten.

--v3:
- Separate out max_scaling information. [Ankit]
- Use max_hscale and max_vscale info instead of INT_MAX. [Ankit]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 36 ++++++++++++++++++-----
 1 file changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index a832cdccd9fa..72344044d9d3 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -368,6 +368,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 					&crtc_state->scaler_state;
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 mode;
+	int hscale, vscale, max_vscale, max_hscale;
 
 	if (*scaler_id < 0)
 		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
@@ -416,15 +417,10 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		mode = SKL_PS_SCALER_MODE_DYN;
 	}
 
-	/*
-	 * FIXME: we should also check the scaler factors for pfit, so
-	 * this shouldn't be tied directly to planes.
-	 */
 	if (plane_state && plane_state->hw.fb) {
 		const struct drm_framebuffer *fb = plane_state->hw.fb;
 		const struct drm_rect *src = &plane_state->uapi.src;
 		const struct drm_rect *dst = &plane_state->uapi.dst;
-		int hscale, vscale, max_vscale, max_hscale;
 
 		calculate_max_scale(crtc,
 				    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier),
@@ -448,11 +444,37 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 
 			return -EINVAL;
 		}
+	}
+
+	if (crtc_state->pch_pfit.enabled) {
+		struct drm_rect src;
+
+		drm_rect_init(&src, 0, 0,
+			      drm_rect_width(&crtc_state->pipe_src) << 16,
+			      drm_rect_height(&crtc_state->pipe_src) << 16);
+
+		calculate_max_scale(crtc, 0, *scaler_id,
+				    &max_hscale, &max_vscale);
 
-		scaler_state->scalers[*scaler_id].hscale = hscale;
-		scaler_state->scalers[*scaler_id].vscale = vscale;
+		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
+					      0, max_hscale);
+		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
+					      0, max_vscale);
+
+		if (hscale < 0 || vscale < 0) {
+			drm_dbg_kms(display->drm,
+				    "Scaler %d doesn't support required pipe scaling\n",
+				    *scaler_id);
+			drm_rect_debug_print("src: ", &src, true);
+			drm_rect_debug_print("dst: ", &crtc_state->pch_pfit.dst, false);
+
+			return -EINVAL;
+		}
 	}
 
+	scaler_state->scalers[*scaler_id].hscale = hscale;
+	scaler_state->scalers[*scaler_id].vscale = vscale;
+
 	drm_dbg_kms(display->drm, "[CRTC:%d:%s] attached scaler id %u.%u to %s:%d\n",
 		    crtc->base.base.id, crtc->base.name,
 		    crtc->pipe, *scaler_id, name, idx);
-- 
2.48.0

