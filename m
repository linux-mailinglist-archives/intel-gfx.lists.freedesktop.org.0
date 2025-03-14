Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0293A6146A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 16:01:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4636A10EA0A;
	Fri, 14 Mar 2025 15:01:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OoBX+Gcp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E08EC10EA0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 15:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741964506; x=1773500506;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+Z9eo8a2CrKBizPyOfU/ahRNnBjfzJR3pnEA4n+DtoQ=;
 b=OoBX+GcpkNbnnzsQP6m/QzSLuSaHgIDNKSzl0H2t/A8mVOrVWdNK4g61
 F1G3PUvy0X0unZx7ZA6pvxl9VesBSJzoAihCbm1NzLnVAUBl0uzlgb4fI
 17vzPS8tI4gCDPCStAqv16m0348HAOZDQ3KK8PqFwUPq4Y18ejA7wfsZL
 AKeMZktZKZC1oHdFxUfKxmlIxiWENbughL5Ig9bYpL8x5CrIx/72FaeGL
 p/6yfYjuL4zytXBCRf2WsAUTWMMZKkU+/eAdS7ocQijBGiTjvsNJNF1Gh
 TThFuP3e5N6FQrj2/nYaH6nHiNJpsVQiAAJfw9iQ5PcbsLmCjLwhzdsZS w==;
X-CSE-ConnectionGUID: xagSIkaIRduurmffLYvYiA==
X-CSE-MsgGUID: 1ThMRFpzQWWaWmlV3s4Xag==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60657584"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="60657584"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 08:01:46 -0700
X-CSE-ConnectionGUID: HJ4eCtcFSA+4TuptwQkCmg==
X-CSE-MsgGUID: 2jH7mm85QI+gJ9sWFWUk5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126515082"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 14 Mar 2025 08:01:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Mar 2025 17:01:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915/dsi: Assert that vfp+vsync+vbp == vtotal on
 BXT/GLK
Date: Fri, 14 Mar 2025 17:01:36 +0200
Message-ID: <20250314150136.22564-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
References: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
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

Windows code seems to do some dodgy looking +/-1 adjustments
to some of the vertical timings. Not sure if that's correct
or not, but let's at least cross check some of the values
we got from the hardware to double check whether the GOP
did the same or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 661de51dfd22..cdab04727c7d 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1024,7 +1024,7 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 	unsigned int lane_count = intel_dsi->lane_count;
 	unsigned int bpp, fmt;
 	enum port port;
-	u16 hactive, hfp, hsync, hbp, vfp, vsync;
+	u16 hactive, hfp, hsync, hbp, vfp, vsync, vbp;
 	u16 hfp_sw, hsync_sw, hbp_sw;
 	u16 crtc_htotal_sw, crtc_hsync_start_sw, crtc_hsync_end_sw,
 				crtc_hblank_start_sw, crtc_hblank_end_sw;
@@ -1088,6 +1088,7 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 
 	/* vertical values are in terms of lines */
 	vfp = intel_de_read(display, MIPI_VFP_COUNT(display, port));
+	vbp = intel_de_read(display, MIPI_VBP_COUNT(display, port));
 	vsync = intel_de_read(display, MIPI_VSYNC_PADDING_COUNT(display, port));
 
 	adjusted_mode->crtc_htotal = hactive + hfp + hsync + hbp;
@@ -1096,6 +1097,8 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 	adjusted_mode->crtc_hblank_start = adjusted_mode->crtc_hdisplay;
 	adjusted_mode->crtc_hblank_end = adjusted_mode->crtc_htotal;
 
+	drm_WARN_ON(display->drm, adjusted_mode->crtc_vdisplay +
+		    vfp + vsync + vbp != adjusted_mode->crtc_vtotal);
 	adjusted_mode->crtc_vsync_start = vfp + adjusted_mode->crtc_vdisplay;
 	adjusted_mode->crtc_vsync_end = vsync + adjusted_mode->crtc_vsync_start;
 	adjusted_mode->crtc_vblank_start = adjusted_mode->crtc_vdisplay;
-- 
2.45.3

