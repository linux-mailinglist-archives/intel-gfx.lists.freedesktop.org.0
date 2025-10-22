Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C851BF9760
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C51210E673;
	Wed, 22 Oct 2025 00:31:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jV9QoWL7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7354B10E672;
 Wed, 22 Oct 2025 00:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093088; x=1792629088;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=p/GmS1io6h/EYuTphVHbDaJIwg8mnJXPKLfPzW/B3fE=;
 b=jV9QoWL7gtHnOuc59P1iksXYI4r8pYeVAxgJ5PWYGx9Fte97DWQd2c8X
 lxtiJ4M8Vn118n0xw41quPR6xapv+QosBFSmKJXKkbVZomD/J+f1dNttT
 r1YhmeccKvcUiQo8QS37A2pFBtO+dpE0vhq1ZoUYj2nsU95w5qWoGqFgK
 xGl3tM4Y8HW1j9BRymR8s5dDRLqBF/RAwAAFKUsPXEMMPEp+/QzkyhhRx
 CyOpQu5fWGJZvcVG44IxZSfiJuE4qxDJgb8zaru2zDPr3IzJxcLwxygjD
 cBJ5F3iibauDA8tXebZ6L/Y3lQSPcwM7LjeIaK05sdJNlyp5o9CBorGtI g==;
X-CSE-ConnectionGUID: l14C6fgwT4OwUiVON8Rmjg==
X-CSE-MsgGUID: rqaouOizSJ6dOolYcPgFbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855721"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855721"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:28 -0700
X-CSE-ConnectionGUID: a1NbqscvSCS3uTXzJDDKcA==
X-CSE-MsgGUID: lp4F7Qa5Q+qIa9k/YSX1bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132346"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:31:24 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:33 -0300
Subject: [PATCH v2 08/32] drm/i915/xe3p_lpd: Extend FBC support to UINT16
 formats
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-8-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
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
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
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
index 10ef3136dadc..af3585aeefd3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -141,15 +141,25 @@ static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane
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
@@ -203,7 +213,7 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
 	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
 	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
-	unsigned int cpp = intel_fbc_cfb_cpp();
+	unsigned int cpp = intel_fbc_cfb_cpp(plane_state);
 
 	return _intel_fbc_cfb_stride(display, cpp, width, stride);
 }
@@ -1081,11 +1091,33 @@ static bool lnl_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_
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

