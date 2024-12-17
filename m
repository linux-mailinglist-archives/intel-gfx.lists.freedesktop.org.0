Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A87619F5581
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 19:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FBEF10EA5E;
	Tue, 17 Dec 2024 18:04:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kYm68WvA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B97E10EA56;
 Tue, 17 Dec 2024 18:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734458694; x=1765994694;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4R68+5RHZQuv7LnKmDzBIDfbewT4I/ErGDWXY/+zb3Y=;
 b=kYm68WvAyNtdEmsFQsAW5PxD5BflekP9fpwTGYs7f7BfS8zWfQPIi3Oz
 ds8360DUpeYd7Uv/5cxKkcx4lS7h64GNR54Hf9vfa7/VrNCDizIfFNJfZ
 G8aDvTjnfNs5utmcLJKs0SmsDqOMRMsxJPijxBItxbv8UL1QHrfwI2YnY
 TfpNoxwvk3tOjlCryfy45G1OCF3h2B9cMNAsuiQrTX63Dd6y5WZTNYpOr
 VNZiRvB/QLDsu3Lojdho7PhgDjzC5PWqdRuoN6Fe+Xlff7XMc1IhewZ6C
 iaDkOOeM3QNRpY8fMeZW/mcm+5N55OeR/vB9duumo03D/azzQ7dFVZiZ5 Q==;
X-CSE-ConnectionGUID: Tbnepj8fTl6yWi+Rg2qymA==
X-CSE-MsgGUID: KOUbulqBQF+h8AdmP7rv0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38837149"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38837149"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 10:04:54 -0800
X-CSE-ConnectionGUID: N+GakNiKSzaOzZ9c7szgCw==
X-CSE-MsgGUID: hHuTVD9/SyiYGwVNDtZwkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,242,1728975600"; d="scan'208";a="102442838"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa004.fm.intel.com with ESMTP; 17 Dec 2024 10:04:52 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com
Subject: [RFC v2 4/6] drm/i915/scaler: Compute scling factors for pipe scaler
Date: Tue, 17 Dec 2024 23:37:08 +0530
Message-ID: <20241217180710.1048355-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241217180710.1048355-1-mitulkumar.ajitkumar.golani@intel.com>
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
perticular scaler user is pipe scaler.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 37 ++++++++++++++++++++---
 1 file changed, 33 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 1c65b53b45f0..1a4aba434d8c 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -319,6 +319,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 					&crtc_state->scaler_state;
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 mode;
+	int hscale, vscale, user;
 
 	if (*scaler_id < 0)
 		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
@@ -375,7 +376,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		const struct drm_framebuffer *fb = plane_state->hw.fb;
 		const struct drm_rect *src = &plane_state->uapi.src;
 		const struct drm_rect *dst = &plane_state->uapi.dst;
-		int hscale, vscale, max_vscale, max_hscale;
+		int max_vscale, max_hscale;
 
 		/*
 		 * FIXME: When two scalers are needed, but only one of
@@ -426,11 +427,39 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 			return -EINVAL;
 		}
 
-		scaler_state->scalers[*scaler_id].hscale = hscale;
-		scaler_state->scalers[*scaler_id].vscale = vscale;
-		scaler_state->scalers[*scaler_id].user = SKL_PLANE_SCALER;
+		user = SKL_PLANE_SCALER;
 	}
 
+	if (crtc_state->pch_pfit.enabled) {
+		struct drm_rect src;
+		int hscale, vscale;
+
+		drm_rect_init(&src, 0, 0,
+			      drm_rect_width(&crtc_state->pipe_src) << 16,
+			      drm_rect_height(&crtc_state->pipe_src) << 16);
+
+		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
+					      0, INT_MAX);
+		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
+					      0, INT_MAX);
+
+		if (hscale < 0 || vscale < 0) {
+			drm_dbg_kms(display->drm,
+				    "Scaler %d doesn't support required plane scaling\n",
+				    *scaler_id);
+			drm_rect_debug_print("src: ", &src, true);
+			drm_rect_debug_print("dst: ", &crtc_state->pch_pfit.dst, false);
+
+			return -EINVAL;
+		}
+
+		user = SKL_PIPE_SCALER;
+	}
+
+	scaler_state->scalers[*scaler_id].hscale = hscale;
+	scaler_state->scalers[*scaler_id].vscale = vscale;
+	scaler_state->scalers[*scaler_id].user = user;
+
 	drm_dbg_kms(display->drm, "Attached scaler id %u.%u to %s:%d\n",
 		    crtc->pipe, *scaler_id, name, idx);
 	scaler_state->scalers[*scaler_id].mode = mode;
-- 
2.46.0

