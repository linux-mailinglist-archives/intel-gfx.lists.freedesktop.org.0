Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E8B928AED
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:53:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A2210E2AB;
	Fri,  5 Jul 2024 14:53:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jrmjoFvR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FAFB10E04A;
 Fri,  5 Jul 2024 14:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720191192; x=1751727192;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2aW4jEJoUH4vsvi/AjBHAUYJwuSVK7Ja7l1wNqzIDb4=;
 b=jrmjoFvRXg10b84NUuHD13xbuLlNie+MB8UookSvik72vbK80/YTbHWf
 EvWaK+/nkaRti3T6FZHbjx2l5yw52TkZB7nD92QRYrspX4yopMwIjUyDf
 3AcyVMCFJ9meanRzjL03c6Uk98JjZgV3fDIQuka1ppyiYUSmeiMlsLMJl
 sgZfhrEqm5HEC4GyG7h9/rOW/9DqnlIv6IZlKCVQ5shScX8JUneb/CpPz
 luw203rbRLeiBZWGSdB1dcD2bbW8QThU23lPWaLumbXVHjrKUwzFRFKsL
 bJsSSJ50UeaJJ0R5IOA7+SHHMj4XbP6IQkVF8Kb8EFRIFfH93AhRIvfZF A==;
X-CSE-ConnectionGUID: 3fVFw5GLQpOiU1UkwiacXw==
X-CSE-MsgGUID: pr8TBXlpQG+Kdup0frRGwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17204738"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17204738"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:53:12 -0700
X-CSE-ConnectionGUID: UCPBhqiJS6GNbpc7Wo796g==
X-CSE-MsgGUID: kL2t/O6aTQu1K4hJ7ia7Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46864383"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:53:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:53:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/20] drm/i915/fbc: Extract intel_fbc_max_surface_size()
Date: Fri,  5 Jul 2024 17:52:39 +0300
Message-ID: <20240705145254.3355-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract intel_fbc_max_surface_size() from
intel_fbc_hw_tracking_covers_screen(), mainly to mirror the
"max plane size" counterparts.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 41 ++++++++++++++----------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 08a431cfbbb3..c7fd774440a8 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1073,6 +1073,29 @@ static bool rotation_is_valid(const struct intel_plane_state *plane_state)
 		return i8xx_fbc_rotation_is_valid(plane_state);
 }
 
+static void intel_fbc_max_surface_size(struct intel_display *display,
+				       unsigned int *w, unsigned int *h)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) >= 11) {
+		*w = 8192;
+		*h = 4096;
+	} else if (DISPLAY_VER(display) >= 10) {
+		*w = 5120;
+		*h = 4096;
+	} else if (DISPLAY_VER(display) >= 7) {
+		*w = 4096;
+		*h = 4096;
+	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
+		*w = 4096;
+		*h = 2048;
+	} else {
+		*w = 2048;
+		*h = 1536;
+	}
+}
+
 /*
  * For some reason, the hardware tracking starts looking at whatever we
  * programmed as the display plane base address register. It does not look at
@@ -1082,25 +1105,9 @@ static bool rotation_is_valid(const struct intel_plane_state *plane_state)
 static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *plane_state)
 {
 	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned int effective_w, effective_h, max_w, max_h;
 
-	if (DISPLAY_VER(display) >= 11) {
-		max_w = 8192;
-		max_h = 4096;
-	} else if (DISPLAY_VER(display) >= 10) {
-		max_w = 5120;
-		max_h = 4096;
-	} else if (DISPLAY_VER(display) >= 7) {
-		max_w = 4096;
-		max_h = 4096;
-	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
-		max_w = 4096;
-		max_h = 2048;
-	} else {
-		max_w = 2048;
-		max_h = 1536;
-	}
+	intel_fbc_max_surface_size(display, &max_w, &max_h);
 
 	effective_w = plane_state->view.color_plane[0].x +
 		(drm_rect_width(&plane_state->uapi.src) >> 16);
-- 
2.44.2

