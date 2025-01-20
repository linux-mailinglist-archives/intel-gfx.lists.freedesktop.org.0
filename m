Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7A9A16CA2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 13:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C04E610E3F3;
	Mon, 20 Jan 2025 12:57:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kcThDK7k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B7E10E3ED;
 Mon, 20 Jan 2025 12:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737377877; x=1768913877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GwFBFf1TyTZ/tKM1emj2QXoeiWqsNEUyH3tIUQNn82g=;
 b=kcThDK7k+dL783eJk2vu/qeKl2ejQxyLND32/dzH6+Q0R6CpDr7h3hXu
 8ruWeqNeyAJEDF452fr0vykPO/wX8o8CmceE0cV4qKYDA3+033fwcJo3W
 b6Vj0L/JDz9Efv3sViE2UzlFL2WRhprLxiNgjgtWwPWcNDJt3GJAMX0zs
 n00lXMTKe7yYILQaQqe1EcViFco+g4GbtqgGSRLzfhwgdUsGvpJ1Yu83Q
 /xk3fLQi49QHpCYO6kCJCpTV7NfxCoFJ837c9UTTRI+drG61i7DgJpFYM
 cf2zbOHFH0UYl/DCRgHEfWceLlvvIXRba+BlHfic8GAwPTxrAjZtiH5H9 A==;
X-CSE-ConnectionGUID: MWo87Zg0QdKpKg0joor7hQ==
X-CSE-MsgGUID: 1k9hvX1uSU6Mjt0GZGzGrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37930637"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37930637"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 04:57:57 -0800
X-CSE-ConnectionGUID: +2czkNStTsyHO0usOtr3jg==
X-CSE-MsgGUID: iIhDwC8FQ1SZ4qUa4H2a6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106326422"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa006.fm.intel.com with ESMTP; 20 Jan 2025 04:57:54 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v8 3/7] drm/i915/scaler: Refactor max_scale computation
Date: Mon, 20 Jan 2025 18:24:35 +0530
Message-ID: <20250120125439.4188626-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250120125439.4188626-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v2:
- Add missing comment. [Ankit]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 70 +++++++++++++----------
 1 file changed, 41 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 12efa4008027..a832cdccd9fa 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -319,6 +319,44 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
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
+
+	if (DISPLAY_VER(display) >= 14) {
+		/*
+		 * On versions 14 and up, only the first
+		 * scaler supports a vertical scaling factor
+		 * of more than 1.0, while a horizontal
+		 * scaling factor of 3.0 is supported.
+		 */
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
@@ -388,35 +426,9 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
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
2.48.1

