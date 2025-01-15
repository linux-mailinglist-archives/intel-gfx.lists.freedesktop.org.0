Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB766A12726
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 16:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E08710E508;
	Wed, 15 Jan 2025 15:20:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mQpSu1rp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E19B010E713;
 Wed, 15 Jan 2025 15:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736954437; x=1768490437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vgNld4uOl/tGizQ53c+XM5Q9pPNCPqUwNP/z3cahb6A=;
 b=mQpSu1rpXwlPk7ll8ViCdr6n9h0twLuM9H6yGzWYkd3pWVahuw2pxXot
 +FhN8+KjIW1TTll2tthupVEgWRNM3wJvK0BWy0fRzNg1cuglvXbzN/O1h
 8f6Pa8ODpCMA0+FM8h2pejNNBX6t3VSiS+EhEyO3xOfkKKd6FrxqhGVo+
 CWlJ23jZrZrWVFf1b3BkIsynIelfUdFoNG78pIkLKKHP+WMilS3TueEaV
 OP39BjVyh5PlDZAZKQ+DNyE5W/iPmIJcM4LHnwNV5BtHgXGJMHzmnW5Z7
 3W+s+gGX8KXXmGMcGSbW18x8ZYQUgPw1OOC1Qae7+jYG+qoauKeW1NlKF A==;
X-CSE-ConnectionGUID: L5ZkR++uTQWTZvGvFmAw0A==
X-CSE-MsgGUID: SjlruoUUQ0SWCPJ0wtEooQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="24894474"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="24894474"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 07:20:37 -0800
X-CSE-ConnectionGUID: OJnj2gx8Tj+e1sDQ5ltGnQ==
X-CSE-MsgGUID: Ui23FNiPSFeFzIHfOBs2UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110298444"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 15 Jan 2025 07:20:34 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	v5-000intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v5 3/7] drm/i915/scaler: Refactor max_scale computation
Date: Wed, 15 Jan 2025 20:47:10 +0530
Message-ID: <20250115151714.3665211-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
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
2.48.0

