Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F1FBDC4C3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73FBF10E6E7;
	Wed, 15 Oct 2025 03:17:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="en//Ez+A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E17510E6EB;
 Wed, 15 Oct 2025 03:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498237; x=1792034237;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=lwZoH7z0Kx2PZAi7pBo3jHNCmXo2xbK2q5RvkK2kLHw=;
 b=en//Ez+AcHaGiLY3trm3ZTkkI3/8YrGeSJ/DhjqnhWe38uILHnQiChDX
 Zd6ZVTtHhdDEFk18LPaH/qILu5yasQcwQaSBwrb9SsQGI/IH9zxb8+FIZ
 +icTy3QO/m6kme9shk7BlzfAGK59wLOuoS8J4iKE3P27eZp3RaqiHT+5x
 yVzkQXUcxJIXKBhI5ltjPa+7hd2yHP6CtLjRjYNEzS+m+fTEb86kOtFdR
 wGQvFqvK2vo6+JfwbvCfSa1dhhcVSK6OjSqS40D1zsFajpmyyJ0Jjh5a3
 LR/3cvOLIwSvN3mmeGVjPA6CMHLGkGubvHHBPB6l+FnzPmXf1t6chW5uA w==;
X-CSE-ConnectionGUID: PByubf3iQqqVvHz+v475yQ==
X-CSE-MsgGUID: 60PJlbVORCCJINvuygezRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577188"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577188"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:16 -0700
X-CSE-ConnectionGUID: lRtaRHOYSM2y5NLtoS5ycA==
X-CSE-MsgGUID: CLH3CSPQRkymMYDbgkmBfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302603"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:12 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:08 -0300
Subject: [PATCH 08/32] drm/i915/xe3p_lpd: Support UINT16 formats
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-8-d2d1e26520aa@intel.com>
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

Starting from display Xe3p_LPD, UINT16 formats are also supported. Add
its corresponding PLANE_CTL bit and add the format in the necessary
functions.

Bspec: 68904, 69853
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 96 +++++++++++++++-------
 .../drm/i915/display/skl_universal_plane_regs.h    |  1 +
 2 files changed, 68 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 0319174adf95..530adff81b99 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -136,36 +136,47 @@ static const u32 icl_sdr_uv_plane_formats[] = {
 	DRM_FORMAT_XVYU2101010,
 };
 
+#define ICL_HDR_PLANE_FORMATS		\
+	DRM_FORMAT_C8,			\
+	DRM_FORMAT_RGB565,		\
+	DRM_FORMAT_XRGB8888,		\
+	DRM_FORMAT_XBGR8888,		\
+	DRM_FORMAT_ARGB8888,		\
+	DRM_FORMAT_ABGR8888,		\
+	DRM_FORMAT_XRGB2101010,		\
+	DRM_FORMAT_XBGR2101010,		\
+	DRM_FORMAT_ARGB2101010,		\
+	DRM_FORMAT_ABGR2101010,		\
+	DRM_FORMAT_XRGB16161616F,	\
+	DRM_FORMAT_XBGR16161616F,	\
+	DRM_FORMAT_ARGB16161616F,	\
+	DRM_FORMAT_ABGR16161616F,	\
+	DRM_FORMAT_YUYV,		\
+	DRM_FORMAT_YVYU,		\
+	DRM_FORMAT_UYVY,		\
+	DRM_FORMAT_VYUY,		\
+	DRM_FORMAT_NV12,		\
+	DRM_FORMAT_P010,		\
+	DRM_FORMAT_P012,		\
+	DRM_FORMAT_P016,		\
+	DRM_FORMAT_Y210,		\
+	DRM_FORMAT_Y212,		\
+	DRM_FORMAT_Y216,		\
+	DRM_FORMAT_XYUV8888,		\
+	DRM_FORMAT_XVYU2101010,		\
+	DRM_FORMAT_XVYU12_16161616,	\
+	DRM_FORMAT_XVYU16161616
+
 static const u32 icl_hdr_plane_formats[] = {
-	DRM_FORMAT_C8,
-	DRM_FORMAT_RGB565,
-	DRM_FORMAT_XRGB8888,
-	DRM_FORMAT_XBGR8888,
-	DRM_FORMAT_ARGB8888,
-	DRM_FORMAT_ABGR8888,
-	DRM_FORMAT_XRGB2101010,
-	DRM_FORMAT_XBGR2101010,
-	DRM_FORMAT_ARGB2101010,
-	DRM_FORMAT_ABGR2101010,
-	DRM_FORMAT_XRGB16161616F,
-	DRM_FORMAT_XBGR16161616F,
-	DRM_FORMAT_ARGB16161616F,
-	DRM_FORMAT_ABGR16161616F,
-	DRM_FORMAT_YUYV,
-	DRM_FORMAT_YVYU,
-	DRM_FORMAT_UYVY,
-	DRM_FORMAT_VYUY,
-	DRM_FORMAT_NV12,
-	DRM_FORMAT_P010,
-	DRM_FORMAT_P012,
-	DRM_FORMAT_P016,
-	DRM_FORMAT_Y210,
-	DRM_FORMAT_Y212,
-	DRM_FORMAT_Y216,
-	DRM_FORMAT_XYUV8888,
-	DRM_FORMAT_XVYU2101010,
-	DRM_FORMAT_XVYU12_16161616,
-	DRM_FORMAT_XVYU16161616,
+	ICL_HDR_PLANE_FORMATS,
+};
+
+static const u32 xe3p_lpd_hdr_plane_formats[] = {
+	ICL_HDR_PLANE_FORMATS,
+	DRM_FORMAT_XRGB16161616,
+	DRM_FORMAT_XBGR16161616,
+	DRM_FORMAT_ARGB16161616,
+	DRM_FORMAT_ABGR16161616,
 };
 
 int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
@@ -220,6 +231,18 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 			else
 				return DRM_FORMAT_XRGB2101010;
 		}
+	case PLANE_CTL_FORMAT_XRGB_16161616:
+		if (rgb_order) {
+			if (alpha)
+				return DRM_FORMAT_ABGR16161616;
+			else
+				return DRM_FORMAT_XBGR16161616;
+		} else {
+			if (alpha)
+				return DRM_FORMAT_ARGB16161616;
+			else
+				return DRM_FORMAT_XRGB16161616;
+		}
 	case PLANE_CTL_FORMAT_XRGB_16161616F:
 		if (rgb_order) {
 			if (alpha)
@@ -960,6 +983,12 @@ static u32 skl_plane_ctl_format(u32 pixel_format)
 	case DRM_FORMAT_XRGB2101010:
 	case DRM_FORMAT_ARGB2101010:
 		return PLANE_CTL_FORMAT_XRGB_2101010;
+	case DRM_FORMAT_XBGR16161616:
+	case DRM_FORMAT_ABGR16161616:
+		return PLANE_CTL_FORMAT_XRGB_16161616 | PLANE_CTL_ORDER_RGBX;
+	case DRM_FORMAT_XRGB16161616:
+	case DRM_FORMAT_ARGB16161616:
+		return PLANE_CTL_FORMAT_XRGB_16161616;
 	case DRM_FORMAT_XBGR16161616F:
 	case DRM_FORMAT_ABGR16161616F:
 		return PLANE_CTL_FORMAT_XRGB_16161616F | PLANE_CTL_ORDER_RGBX;
@@ -2479,6 +2508,11 @@ static const u32 *icl_get_plane_formats(struct intel_display *display,
 					int *num_formats)
 {
 	if (icl_is_hdr_plane(display, plane_id)) {
+		if (DISPLAY_VER(display) >= 35) {
+			*num_formats = ARRAY_SIZE(xe3p_lpd_hdr_plane_formats);
+			return xe3p_lpd_hdr_plane_formats;
+		}
+
 		*num_formats = ARRAY_SIZE(icl_hdr_plane_formats);
 		return icl_hdr_plane_formats;
 	} else if (icl_is_nv12_y_plane(display, plane_id)) {
@@ -2637,6 +2671,10 @@ static bool tgl_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_RGB565:
 	case DRM_FORMAT_XVYU2101010:
 	case DRM_FORMAT_C8:
+	case DRM_FORMAT_XBGR16161616:
+	case DRM_FORMAT_ABGR16161616:
+	case DRM_FORMAT_XRGB16161616:
+	case DRM_FORMAT_ARGB16161616:
 	case DRM_FORMAT_Y210:
 	case DRM_FORMAT_Y212:
 	case DRM_FORMAT_Y216:
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 479bb3f7f92b..84cf565bd653 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -64,6 +64,7 @@
 #define   PLANE_CTL_FORMAT_Y410			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 7)
 #define   PLANE_CTL_FORMAT_Y412			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 9)
 #define   PLANE_CTL_FORMAT_Y416			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 11)
+#define   PLANE_CTL_FORMAT_XRGB_16161616	REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 18)
 #define   PLANE_CTL_PIPE_CSC_ENABLE		REG_BIT(23) /* Pre-GLK */
 #define   PLANE_CTL_KEY_ENABLE_MASK		REG_GENMASK(22, 21)
 #define   PLANE_CTL_KEY_ENABLE_SOURCE		REG_FIELD_PREP(PLANE_CTL_KEY_ENABLE_MASK, 1)

-- 
2.51.0

