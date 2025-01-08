Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B58BA05BCA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 13:39:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C5A10E8AB;
	Wed,  8 Jan 2025 12:39:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OlbAybOO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8433210EB71;
 Wed,  8 Jan 2025 12:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736339948; x=1767875948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VmTSz5jwbOmyVnPiDjTNCLWrVqercSccYQhlAccuFhQ=;
 b=OlbAybOOH56nNifE0Jdk9CQ9zmd58QGsJFwcUq4RUIGBjCPTuyM8d670
 cPW/VDBRxedtyt8VfVWfEzs0hI81We3bFZvJxW+lfxc2mSOpeRXKcvlqJ
 WL2wBaoy5Da8pZfWLgkU5U0HBfeDkG9gbcmD569mUOpt9P4/W0WtkaCjP
 5wbmH/u6o/cwajXaIIEsx6Oqrpa5Dr++tB0sRc2WlxQBermqVUFD/O2/u
 AjuvfuguaA45qHT1Em10RoiLTHSYsM2nEk4xBMrLZMwlqnBxNH9HZ4s7V
 CB3WGIrBY90ObiwoWnUTa9J5j0tdgtAWFunOBHVTqDt90ENei8IUQBYhM Q==;
X-CSE-ConnectionGUID: h7hHXBuXQTyI1cFn+sVXrg==
X-CSE-MsgGUID: eS4MBk2+QqiRPmQodce4Tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="35855371"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="35855371"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 04:39:08 -0800
X-CSE-ConnectionGUID: jZpfSN2cScyOgCEBZ5aojw==
X-CSE-MsgGUID: 2zNT3NUHSIKty/vzqxkaWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102886102"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 08 Jan 2025 04:39:06 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v4 4/7] drm/i915/scaler: Compute scaling factors for pipe
 scaler
Date: Wed,  8 Jan 2025 18:05:38 +0530
Message-ID: <20250108123541.2101643-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250108123541.2101643-1-mitulkumar.ajitkumar.golani@intel.com>
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
- Update typo 'plane scaling' to 'pipe scaling'. [Ankit]
- Remove FIXME tag which was added to check for pipe scaling
factors as well. [Ankit]
- Should be common hscale, vscale instead of local one to
avoid garbage overwritten.
- Typo in commit message 'perticular' to 'particular'.

--v3:
- Separate out max_scaling information. [Ankit]
- Use max_hscale and max_vscale info instead of INT_MAX. [Ankit]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 36 ++++++++++++++++++-----
 1 file changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 19ab7b38c64e..e0aeacaa6b56 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -351,6 +351,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 					&crtc_state->scaler_state;
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 mode;
+	int hscale, vscale, max_vscale, max_hscale;
 
 	if (*scaler_id < 0)
 		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
@@ -399,15 +400,10 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
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
@@ -431,11 +427,37 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 
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
+
+		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
+					      0, max_hscale);
+		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
+					      0, max_vscale);
 
-		scaler_state->scalers[*scaler_id].hscale = hscale;
-		scaler_state->scalers[*scaler_id].vscale = vscale;
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
 	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
 		    crtc->pipe, *scaler_id, name, idx);
 	scaler_state->scalers[*scaler_id].mode = mode;
-- 
2.46.0

