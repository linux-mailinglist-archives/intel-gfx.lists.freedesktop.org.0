Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B409A0CA6
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 16:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E16B10E71F;
	Wed, 16 Oct 2024 14:31:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NuXIY1FO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52BB810E721
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2024 14:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729089108; x=1760625108;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rILhbZatsP5gBsAfURazEO8AFYKP1pdrMZsS0VRjhdo=;
 b=NuXIY1FOSvuPd/gEb0djTX4YUnuVTn17vFQfXXTcQoexA7gncbcOQLqn
 gUAkJ0YdwSOSG7IZMr5r+2gV2w51JfFraMs6oMpzMu9jLXCKHZaAjT4PZ
 J3c1v5TRMtR7M+Dvpd7s9KwoubBHfzVsV3gH3HV2tkfDfc6X689P1HMqi
 qaVXw/SBWg4I5jxjnd/F/U9qMu9RK9NpR1d6C4oE/gvOZPGvoQ131iTou
 JZhJRzNiRwhiwu5gMcaARxNAE2zkENPIv/Cpc1spvxMQmtnF5Nn6jeHqv
 xSkYZsY9HhPHEJHc9YvTsEwM7TCX6G4ptQPoeQTW5CwMh67pQ71Z0zPns A==;
X-CSE-ConnectionGUID: iQKit0VpRruYMQFdnQbtaw==
X-CSE-MsgGUID: 97zncRSxSr2kZgnE5vf8gA==
X-IronPort-AV: E=McAfee;i="6700,10204,11226"; a="28630717"
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="28630717"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 07:31:48 -0700
X-CSE-ConnectionGUID: UctYDYsERz+MOnf5Kx+FaQ==
X-CSE-MsgGUID: lfAnJC7dTyi8PXxLz6BS3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="78288381"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Oct 2024 07:31:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2024 17:31:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/9] drm/i915/pfit: Check pfit minimum timings in pre-SKL
Date: Wed, 16 Oct 2024 17:31:29 +0300
Message-ID: <20241016143134.26903-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
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

Transcoder hdisplay/vdisplay have documented minimum limits
when using the panel fitter. Enforce those limits for all
pre-SKL platforms. SKL+ handles everything in the unified
scaler code instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 59 +++++++++++++++++++++-
 1 file changed, 58 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 89cac3b3fd02..dc843892b01b 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -456,6 +456,24 @@ static int intel_pch_pfit_check_scaling(const struct intel_crtc_state *crtc_stat
 	return 0;
 }
 
+static int intel_pch_pfit_check_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	if (adjusted_mode->crtc_vdisplay < 7) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] vertical active (%d) below minimum (%d) for pfit\n",
+			    crtc->base.base.id, crtc->base.name,
+			    adjusted_mode->crtc_vdisplay, 7);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /* adjusted_mode has been preset to be the panel's fixed mode */
 static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 			     const struct drm_connector_state *conn_state)
@@ -542,6 +560,10 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
+	ret = intel_pch_pfit_check_timings(crtc_state);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 
@@ -678,6 +700,38 @@ static void i9xx_scale_aspect(struct intel_crtc_state *crtc_state,
 	}
 }
 
+static int intel_gmch_pfit_check_timings(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int min;
+
+	if (DISPLAY_VER(display) >= 4)
+		min = 3;
+	else
+		min = 2;
+
+	if (adjusted_mode->crtc_hdisplay < min) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] horizontal active (%d) below minimum (%d) for pfit\n",
+			    crtc->base.base.id, crtc->base.name,
+			    adjusted_mode->crtc_hdisplay, min);
+		return -EINVAL;
+	}
+
+	if (adjusted_mode->crtc_vdisplay < min) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] vertical active (%d) below minimum (%d) for pfit\n",
+			    crtc->base.base.id, crtc->base.name,
+			    adjusted_mode->crtc_vdisplay, min);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state)
 {
@@ -772,7 +826,10 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
 	crtc_state->gmch_pfit.pgm_ratios = pfit_pgm_ratios;
 	crtc_state->gmch_pfit.lvds_border_bits = border;
 
-	return 0;
+	if ((pfit_control & PFIT_ENABLE) == 0)
+		return 0;
+
+	return intel_gmch_pfit_check_timings(crtc_state);
 }
 
 int intel_panel_fitting(struct intel_crtc_state *crtc_state,
-- 
2.45.2

