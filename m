Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CB1BDC4C6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:17:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9828710E6ED;
	Wed, 15 Oct 2025 03:17:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PeoDeqc1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE95810E6ED;
 Wed, 15 Oct 2025 03:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498240; x=1792034240;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=xOzsvdadKRP/1Fr/Ap00ucDBYeSjs7fN1ti6RtlvNlc=;
 b=PeoDeqc1ohWIb1j4I2O2oooIwUgch0IUQB7O91ZlnFXZsafoXXELoHbi
 Mlz54I8jHA12sUb4t4vxnPTxAL2zGFFNgD18HYrf81j8ReZVAvooaDnIc
 Pg1ivDa4ZU7GEcni5VuL2v40n+4J9MsI6sukdskDUYljKTb7D/A+yD3+c
 Zhne0gKGddzabkacy7L7ouFGCUGsetke63Zcw7K99dz5YFV02t/s+kIuj
 DdgBqqTvihr/qa11d0R0wYJJS8fiK5FkQtY2bsW10ArtYVonuZ7CCP+v7
 5+mSm7vZbDDM17BPv28SsHUImkMNWCouJ63rlNMP8Yi6lW48NLTUgdbZf w==;
X-CSE-ConnectionGUID: nu8LXhjyR+m0/LXtuubgJQ==
X-CSE-MsgGUID: 2Yj0fivJShi9/YEmFl/OZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577193"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577193"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:20 -0700
X-CSE-ConnectionGUID: Tyc3SRmcSwa3RsbH/Uiokg==
X-CSE-MsgGUID: 4O8iPXVGRKm/sKgr7mzXFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302632"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:15 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:09 -0300
Subject: [PATCH 09/32] drm/i915/xe3p_lpd: Extend FBC support to UINT16 formats
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-9-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Starting Xe3p_LPD, FBC is supported on UINT16 formats as well. Also
UINT16 being a 64bpp format, will use cpp of 8 for cfb stride and thus
size calculations.

Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
BSpec: 68881, 68904, 69560
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 42 ++++++++++++++++++++++++++++----
 1 file changed, 37 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 4edb4342833e..39d257267f9b 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -142,15 +142,25 @@ static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane
 	return stride;
 }
 
-static unsigned int intel_fbc_cfb_cpp(void)
+static unsigned int intel_fbc_cfb_cpp(const struct intel_plane_state *plane_state)
 {
-	return 4; /* FBC always 4 bytes per pixel */
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	switch (fb->format->format) {
+	case DRM_FORMAT_XRGB16161616:
+	case DRM_FORMAT_XBGR16161616:
+	case DRM_FORMAT_ARGB16161616:
+	case DRM_FORMAT_ABGR16161616:
+		return 8;
+	default:
+		return 4;
+	}
 }
 
 /* plane stride based cfb stride in bytes, assuming 1:1 compression limit */
 static unsigned int intel_fbc_plane_cfb_stride(const struct intel_plane_state *plane_state)
 {
-	unsigned int cpp = intel_fbc_cfb_cpp();
+	unsigned int cpp = intel_fbc_cfb_cpp(plane_state);
 
 	return intel_fbc_plane_stride(plane_state) * cpp;
 }
@@ -204,7 +214,7 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
 	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
 	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
-	unsigned int cpp = intel_fbc_cfb_cpp();
+	unsigned int cpp = intel_fbc_cfb_cpp(plane_state);
 
 	return _intel_fbc_cfb_stride(display, cpp, width, stride);
 }
@@ -1079,11 +1089,33 @@ static bool lnl_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_
 	}
 }
 
+static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	switch (fb->format->format) {
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_ARGB8888:
+	case DRM_FORMAT_ABGR8888:
+	case DRM_FORMAT_RGB565:
+	case DRM_FORMAT_XRGB16161616:
+	case DRM_FORMAT_XBGR16161616:
+	case DRM_FORMAT_ARGB16161616:
+	case DRM_FORMAT_ABGR16161616:
+		return true;
+	default:
+		return false;
+	}
+}
+
 static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
 
-	if (DISPLAY_VER(display) >= 20)
+	if (DISPLAY_VER(display) >= 35)
+		return xe3p_lpd_fbc_pixel_format_is_valid(plane_state);
+	else if (DISPLAY_VER(display) >= 20)
 		return lnl_fbc_pixel_format_is_valid(plane_state);
 	else if (DISPLAY_VER(display) >= 5 || display->platform.g4x)
 		return g4x_fbc_pixel_format_is_valid(plane_state);

-- 
2.51.0

