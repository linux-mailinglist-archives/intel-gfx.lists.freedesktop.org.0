Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CFDC0E1B5
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 14:40:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EFF210E4A5;
	Mon, 27 Oct 2025 13:40:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhfGNm8Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6708610E4A5;
 Mon, 27 Oct 2025 13:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761572428; x=1793108428;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O3EmJpcz1tJYq2gn5nRxoDgmo5k39OeLyc6mvqGLK0g=;
 b=bhfGNm8YelYCHIGacYeqK5HuCenSE0okcNkrhZBaEm3i8yoOkLk/T+kL
 j7U46mD++848mdYMFGYE+Z27dFo5shb9kMYr/5VoThCumkjEKCgJNobId
 8v61Nvi1Q2SIgfKRBfcSLesdKroIa0+B7InEgdRIRdgsWElH81RTmuFtz
 8Hz2Mgl+7wwT93ZJUoYI61HWa61l2xtLBmVGdbw2l9rhIZNLSZLYe7R/2
 vYVg4ca7XiU7rph5l5lofnFLHE8ww/fifb8y1rNXL/HvxFV+nPVWlEG2d
 bpbZFEso8tRPa2s1fz6OAyAXTavsmzC07gqRmC4SX8RJ69kAThE3VvXYB w==;
X-CSE-ConnectionGUID: TO2xHEQmR+a+RlmgHsaP+w==
X-CSE-MsgGUID: GZsJ2ae9S2+Hdtyj0CS+FA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75096365"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="75096365"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 06:40:28 -0700
X-CSE-ConnectionGUID: FvPfgtmrTTulcSAxSAc4QA==
X-CSE-MsgGUID: qFMkbiCaSJ6LJnatA6DQxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="184271184"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.246.54])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 06:40:25 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, gustavo.sousa@intel.com,
 jani.nikula@intel.com, ville.syrjala@intel.com, uma.shankar@intel.com
Subject: [PATCH v2 1/4] drm/i915/xe3p_lpd: Extend FBC support to UINT16 formats
Date: Mon, 27 Oct 2025 15:39:58 +0200
Message-ID: <20251027134001.325064-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027134001.325064-1-vinod.govindapillai@intel.com>
References: <20251027134001.325064-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Starting Xe3p_LPD, FBC is supported on UINT16 formats as well. Also
UINT16 being a 64bpp format, will use cpp of 8 for cfb stride and thus
size calculations.

v2: simplify getting the cpp per format (Ville)
    simplify the pixel format is valid for xe3p_lp (Vinod)

Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
BSpec: 68881, 68904, 69560
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 33 ++++++++++++++++++++----
 1 file changed, 28 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 10ef3136dadc..83dcf62e4ebe 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -141,15 +141,18 @@ static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane
 	return stride;
 }
 
-static unsigned int intel_fbc_cfb_cpp(void)
+static unsigned int intel_fbc_cfb_cpp(const struct intel_plane_state *plane_state)
 {
-	return 4; /* FBC always 4 bytes per pixel */
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+	unsigned int cpp = fb->format->cpp[0];
+
+	return max(cpp, 4);
 }
 
 /* plane stride based cfb stride in bytes, assuming 1:1 compression limit */
 static unsigned int intel_fbc_plane_cfb_stride(const struct intel_plane_state *plane_state)
 {
-	unsigned int cpp = intel_fbc_cfb_cpp();
+	unsigned int cpp = intel_fbc_cfb_cpp(plane_state);
 
 	return intel_fbc_plane_stride(plane_state) * cpp;
 }
@@ -203,7 +206,7 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
 	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
 	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
-	unsigned int cpp = intel_fbc_cfb_cpp();
+	unsigned int cpp = intel_fbc_cfb_cpp(plane_state);
 
 	return _intel_fbc_cfb_stride(display, cpp, width, stride);
 }
@@ -1081,11 +1084,31 @@ static bool lnl_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_
 	}
 }
 
+static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	if (lnl_fbc_pixel_format_is_valid(plane_state))
+		return true;
+
+	switch (fb->format->format) {
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
2.43.0

