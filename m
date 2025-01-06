Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8889A02E57
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 17:54:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CE2B10E2E3;
	Mon,  6 Jan 2025 16:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VdV8h76Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D13F710E2E3;
 Mon,  6 Jan 2025 16:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736182477; x=1767718477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3yKB6t3AYsBPDdBDdGEi3vXcUe1j/qY3WNUmDRlSXUU=;
 b=VdV8h76YR3lmDH627DLL/8p7Oiy8MZb39iUmh5bo2X/p0h4ROrn4xBFq
 2/hVFkoDtlr20eBjBVhKgIrkV9rjbobOoSj2mwzMQbdVVzVoc9AU+DB3t
 oAivbTf+lCkVIC9/4V3DG7qlVhIeRUJw+mrsgUTkRq1GeQcuFf/+jBTIE
 9DZ/PIyLDhvr7OGUeqmKtPRJ+/ADwyCiW8amRpkdMH8ZoPbn5UgdvJkv6
 wnqZKXhq4sVD/k42HjYtd+0v/Wx7NPVr3/RhftKp7O+q3AugJoF5+RY91
 Cvi6CtLuL817ZDf5Vj3fAC7nQ8IKUlMwOoNGAAMGylPSU4lkjMKvE2pE1 Q==;
X-CSE-ConnectionGUID: /8fbYULGRI6fm0TPtnCNTQ==
X-CSE-MsgGUID: U+PTppVvQdm0jKDMrVjofw==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="53880887"
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="53880887"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 08:54:36 -0800
X-CSE-ConnectionGUID: 2r6OuoeRR6qcXuvzDnhIxQ==
X-CSE-MsgGUID: U+VWLygER1WeNjxE0z3CVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133408754"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa001.fm.intel.com with ESMTP; 06 Jan 2025 08:54:35 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 jani.nikula@intel.com
Subject: [PATCH v3 3/5] drm/i915/scaler: Compute scaling factors for pipe
 scaler
Date: Mon,  6 Jan 2025 22:21:09 +0530
Message-ID: <20250106165111.1672722-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20250106165111.1672722-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250106165111.1672722-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 34 ++++++++++++++++++-----
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4f838220f880..294493e5ee53 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -320,6 +320,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 					&crtc_state->scaler_state;
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 mode;
+	int hscale, vscale;
 
 	if (*scaler_id < 0)
 		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
@@ -368,15 +369,11 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
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
+		int max_vscale, max_hscale;
 
 		/*
 		 * FIXME: When two scalers are needed, but only one of
@@ -426,11 +423,34 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 
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
+		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
+					      0, INT_MAX);
+		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
+					      0, INT_MAX);
 
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

