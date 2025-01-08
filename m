Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DFAA05BC9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 13:39:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C503D10E8A9;
	Wed,  8 Jan 2025 12:39:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Eipbjd8H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAD610E8A8;
 Wed,  8 Jan 2025 12:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736339946; x=1767875946;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X38wTEQyIH6GPZB6nzxv+hz5RiV5x+x0f5+oucnc32c=;
 b=Eipbjd8HUVOcXKRCm/2PMF/ehj0vSEk4Rhp0ZGCfCJCLR+sH2FYQNaJb
 OsObE60DFvEoJOluNQw9QNLSDRaVyUxQpl18WY09l8DlRILsQPBNoAI5C
 O7OL4HWloWRBKNPHzLOakyxyT4Rr2WSNO+mENVEruEGjVKKZTlOqi7dTm
 /klwLX/V0nS20z7PBRAN1W0ZvKacbFei6+79wCUs/uPT87I9s0QikP0Gb
 Gez2s1agZb9iEq8sJzdyQ0PslRQdXMkvkMciRcGKoQHGv+/yMaOpVxDH3
 jHpEu+kGigfvC7xBbDMk1nTgh8NMLW/CjpC/ZEsPgeOECB73pDDxreylL Q==;
X-CSE-ConnectionGUID: RR4xNj8cRUmVdEVr/0bOsQ==
X-CSE-MsgGUID: IxKIKj1OQNyq3SnSwN7HSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="35855368"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="35855368"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 04:39:06 -0800
X-CSE-ConnectionGUID: nIl2fITWS+uvYzw+yPnyRg==
X-CSE-MsgGUID: uPBbMMsOSlGBHON7dV5ilw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="102886097"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 08 Jan 2025 04:39:04 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v4 3/7] drm/i915/scaler: Refactor max_scale computation
Date: Wed,  8 Jan 2025 18:05:37 +0530
Message-ID: <20250108123541.2101643-4-mitulkumar.ajitkumar.golani@intel.com>
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

Refactor max scaling factor computation into a reusable
function for scalers.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 63 ++++++++++++-----------
 1 file changed, 34 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4f838220f880..19ab7b38c64e 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -309,6 +309,37 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
 	return -1;
 }
 
+static void
+calculate_max_scale(struct intel_crtc *crtc,
+		    bool is_yuv_semiplanar,
+		    int scaler_id,
+		    int *max_hscale, int *max_vscale)
+{
+	struct intel_display *display = to_intel_display(crtc);
+
+	/*
+	 * FIXME: When two scalers are needed, but only one of
+	 * them needs to downscale, we should make sure that
+	 * the one that needs downscaling support is assigned
+	 * as the first scaler, so we don't reject downscaling
+	 * unnecessarily.
+	 */
+	if (DISPLAY_VER(display) >= 14) {
+		*max_hscale = 0x30000 - 1;
+
+		if (scaler_id == 0)
+			*max_vscale = 0x30000 - 1;
+		else
+			*max_vscale = 0x10000;
+	} else if (DISPLAY_VER(display) >= 10 || !is_yuv_semiplanar) {
+		*max_hscale = 0x30000 - 1;
+		*max_vscale = 0x30000 - 1;
+	} else {
+		*max_hscale = 0x20000 - 1;
+		*max_vscale = 0x20000 - 1;
+	}
+}
+
 static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 				     int num_scalers_need, struct intel_crtc *crtc,
 				     const char *name, int idx,
@@ -378,35 +409,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		const struct drm_rect *dst = &plane_state->uapi.dst;
 		int hscale, vscale, max_vscale, max_hscale;
 
-		/*
-		 * FIXME: When two scalers are needed, but only one of
-		 * them needs to downscale, we should make sure that
-		 * the one that needs downscaling support is assigned
-		 * as the first scaler, so we don't reject downscaling
-		 * unnecessarily.
-		 */
-
-		if (DISPLAY_VER(display) >= 14) {
-			/*
-			 * On versions 14 and up, only the first
-			 * scaler supports a vertical scaling factor
-			 * of more than 1.0, while a horizontal
-			 * scaling factor of 3.0 is supported.
-			 */
-			max_hscale = 0x30000 - 1;
-			if (*scaler_id == 0)
-				max_vscale = 0x30000 - 1;
-			else
-				max_vscale = 0x10000;
-
-		} else if (DISPLAY_VER(display) >= 10 ||
-			   !intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
-			max_hscale = 0x30000 - 1;
-			max_vscale = 0x30000 - 1;
-		} else {
-			max_hscale = 0x20000 - 1;
-			max_vscale = 0x20000 - 1;
-		}
+		calculate_max_scale(crtc,
+				    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier),
+				    *scaler_id, &max_hscale, &max_vscale);
 
 		/*
 		 * FIXME: We should change the if-else block above to
-- 
2.46.0

