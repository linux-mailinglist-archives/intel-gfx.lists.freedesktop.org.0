Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 688F793D0A6
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2024 11:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E93610E958;
	Fri, 26 Jul 2024 09:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KHYB9NbD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC39610E958
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2024 09:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721987667; x=1753523667;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zUxlFC/el1yz9YxR017CpWChdBknHVuvD/FJPV7v67g=;
 b=KHYB9NbDKD0I+eaTrckbTQ1O6fskrRHcQsXmljZXN+DjCxtwTwQAi4ce
 0QKN4Bxxp3R/xEL0S4xtpkwVn281vU9ft3cpBC7cDuuIhhySpgWctoovm
 8GEqOIl9ccvJgVqFGzPB+71OO1AG2FZfsT+VrqMRYqAlULlaEL/oaxCwu
 Svn20YRex+NA+nCJ2ZIWfx30e9W37EuAsVDQAPO06w3MrL5so+7gyBprS
 gzJETo4P+Q53Nmu01hdNtaNYfrs3u/PSqiwkt/IeGbCIfuWcMqEZxZrR5
 yR1jlzolXc1eZz+tSsnvYKmiVuydCtyjHyzmJo564a9/1mFdDIRwuyCYq w==;
X-CSE-ConnectionGUID: Zo8hfulGTXSmoFb8wWWSsg==
X-CSE-MsgGUID: bdj+ALM9Q9OlWQTovelbBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11144"; a="31189400"
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="31189400"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2024 02:54:27 -0700
X-CSE-ConnectionGUID: CFUbJZSeTraK1Ki5E5zHUw==
X-CSE-MsgGUID: 0eef3UYOR1eCOUdy7RZbrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,238,1716274800"; d="scan'208";a="53139939"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa010.jf.intel.com with ESMTP; 26 Jul 2024 02:54:27 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Call panel_fitting from pipe_config
Date: Fri, 26 Jul 2024 15:23:57 +0530
Message-Id: <20240726095357.1261804-3-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240726095357.1261804-1-nemesa.garg@intel.com>
References: <20240726095357.1261804-1-nemesa.garg@intel.com>
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

In panel fitter/pipe scaler scenario the pch_pfit configuration
currently takes place before accounting for pipe_src width for
joiner. This causes issue when pch_pfit and joiner gets
enabled together.

Introduce a new boolean flag is_required which can be filled
during dp compute_config and later is used to compute panel_fitting in
pipe_config. Modify pch_panel_fitting to handle joiner pipes by adjusting
crtc_hdisplay accordingly.

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c            |  7 ++-----
 drivers/gpu/drm/i915/display/intel_panel.c         |  3 +++
 4 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8bbde03f2508..a7194a84b6b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4796,6 +4796,17 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		return ret;
 	}
 
+	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
+		if (connector_state->crtc != &crtc->base)
+			continue;
+
+		if (crtc_state->pch_pfit.is_required) {
+			ret = intel_panel_fitting(crtc_state, connector_state);
+			if (ret)
+				return ret;
+		}
+	}
+
 	/* Dithering seems to not pass-through bits correctly when it should, so
 	 * only enable it on 6bpc panels and when its not a compliance
 	 * test requesting 6bpc video pattern.
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a04d52dbf6e1..a4ab26d8fa43 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1258,6 +1258,7 @@ struct intel_crtc_state {
 		struct drm_rect dst;
 		bool enabled;
 		bool force_thru;
+		bool is_required;
 	} pch_pfit;
 
 	/* FDI configuration, only valid if has_pch_encoder is set. */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d0d878da71ee..d892c5a429f1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2922,11 +2922,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		pipe_config->has_pch_encoder = true;
 
 	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
-	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
-		ret = intel_panel_compute_config(connector, adjusted_mode);
-		if (ret)
-			return ret;
-	}
+	if (intel_dp_is_edp(intel_dp) && fixed_mode)
+		pipe_config->pch_pfit.is_required = true;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index dd18136d1c61..0da45c2330d3 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -395,6 +395,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	u16 crtc_hdisplay = adjusted_mode->crtc_hdisplay;
 	u16 crtc_vdisplay = adjusted_mode->crtc_vdisplay;
 
+	if (crtc_state->joiner_pipes)
+		crtc_hdisplay = adjusted_mode->crtc_hdisplay / 2;
+
 	/* Native modes don't need fitting */
 	if (crtc_hdisplay == pipe_src_w &&
 	    crtc_vdisplay == pipe_src_h &&
-- 
2.25.1

