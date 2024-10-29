Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0589B5549
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:52:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6042210E70A;
	Tue, 29 Oct 2024 21:52:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EBt/N5Ef";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6124210E6F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730238753; x=1761774753;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KHD2V3Ej69GrHtN4msppcNE6katjEu9/GxLTG+5u3nk=;
 b=EBt/N5EfVkJiBWw+KQsK7UWqSByNgT5/pxE19B4iwIAWbhsKYBv/Y7Me
 CiGfnDUzJ8Uw3D5gzM/vghum1X6nynmMCvd+cF6fMnvi0/+3y1cerryAc
 JelJ/m5uhHoypxMatNFWINrPrQ/9NcpP5dj4JaqLFcmu7vE+2asn0byeL
 xd5XDA/VFooD721u3GyNp/KCj36yBA2CHjcyROKM4MTgxcA2349myOcCQ
 1RDNhyFiChpyyS14BxtTIwmGy3FkWwHNjiiwB5Sn32FGe18orO7xXjP/S
 Toe7b8U3MlpRMvi1+pvvynL1aY2jv4KDAu7X3RLyjuo4U7E5NTzmGPBCO w==;
X-CSE-ConnectionGUID: dw9NnJQcSzSEFe+Su793ng==
X-CSE-MsgGUID: GzdYO+jgQya3v6udrtP+dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="41275127"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="41275127"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:52:26 -0700
X-CSE-ConnectionGUID: PoFNvztXRKa4e4fPOmOWRQ==
X-CSE-MsgGUID: bo83Hw2XR2m3fCNGGVQaLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82200214"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:52:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:52:23 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/11] drm/i915/cdclk: Extract intel_cdclk_guardband() and
 intel_cdclk_ppc()
Date: Tue, 29 Oct 2024 23:52:08 +0200
Message-ID: <20241029215217.3697-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
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

We are duplicating the CDCLK guardband and "pixels per clock"
figures in two places. Pull those out into small helpers that
can be used by both places.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 50 +++++++++++-----------
 1 file changed, 26 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 6cef3ca3a069..977fcdaa7372 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2761,23 +2761,34 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 			"Post changing CDCLK to");
 }
 
+/* pixels per CDCLK */
+static int intel_cdclk_ppc(struct intel_display *display, bool double_wide)
+{
+	return DISPLAY_VER(display) >= 10 || double_wide ? 2 : 1;
+}
+
+/* max pixel rate as % of CDCLK (not accounting for PPC) */
+static int intel_cdclk_guardband(struct intel_display *display)
+{
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) >= 9 ||
+	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
+		return 100;
+	else if (IS_CHERRYVIEW(dev_priv))
+		return 95;
+	else
+		return 90;
+}
+
 static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	int ppc = intel_cdclk_ppc(display, crtc_state->double_wide);
+	int guardband = intel_cdclk_guardband(display);
 	int pixel_rate = crtc_state->pixel_rate;
 
-	if (DISPLAY_VER(display) >= 10)
-		return DIV_ROUND_UP(pixel_rate, 2);
-	else if (DISPLAY_VER(display) == 9 ||
-		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-		return pixel_rate;
-	else if (IS_CHERRYVIEW(dev_priv))
-		return DIV_ROUND_UP(pixel_rate * 100, 95);
-	else if (crtc_state->double_wide)
-		return DIV_ROUND_UP(pixel_rate * 100, 90 * 2);
-	else
-		return DIV_ROUND_UP(pixel_rate * 100, 90);
+	return DIV_ROUND_UP(pixel_rate * 100, guardband * ppc);
 }
 
 static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
@@ -3452,20 +3463,11 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 static int intel_compute_max_dotclk(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	int ppc = intel_cdclk_ppc(display, HAS_DOUBLE_WIDE(display));
+	int guardband = intel_cdclk_guardband(display);
 	int max_cdclk_freq = display->cdclk.max_cdclk_freq;
 
-	if (DISPLAY_VER(display) >= 10)
-		return 2 * max_cdclk_freq;
-	else if (DISPLAY_VER(display) == 9 ||
-		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
-		return max_cdclk_freq;
-	else if (IS_CHERRYVIEW(dev_priv))
-		return max_cdclk_freq*95/100;
-	else if (HAS_DOUBLE_WIDE(display))
-		return 2*max_cdclk_freq*90/100;
-	else
-		return max_cdclk_freq*90/100;
+	return ppc * max_cdclk_freq * guardband / 100;
 }
 
 /**
-- 
2.45.2

