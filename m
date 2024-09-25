Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C21A69852EC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 08:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68CFD10E7A1;
	Wed, 25 Sep 2024 06:30:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RuLE1wB4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E797910E79D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 06:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727245820; x=1758781820;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5/WG8fI496GtD7SJZ3zfQgrPy1e2X/Of19n6sa6NW0w=;
 b=RuLE1wB4GngtDFrR23Sh0PC442cYY8MQjG41pvU+a5BzTh5bu6Q/7JTB
 uDgezxZ8z53x+NVAbr6rWaUXQmvbs0g4lwomRt7wCDgCW5irNVHBm8JgE
 uEt7P/7HzceIzNOyFaKnv7NIS3NpVW4YsxsFpHz8RtJ6kd4iXFrS0Yi26
 RhK46eRNPqWqT2muaWPWEQDI24eOGPCgRLo8oZePl4gXeZkudJjh/TBQI
 4TUhdWHWrt4BJAiyu0Krcisti/j1CT7kcj2tlDVelfkUFcXg9AZws4BLL
 GgikbEl7cWH5TYJp1cq0ztOGeYU5eAtifycQYKL4OborFMec1eMDkN8Hs A==;
X-CSE-ConnectionGUID: 0TbJOopdTEuWB4cAq3IyzA==
X-CSE-MsgGUID: /WM8eB7WTaa0HZOgAcCR6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43794800"
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="43794800"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 23:30:20 -0700
X-CSE-ConnectionGUID: 1gjyiHjBSD+XeYWWLXsGJg==
X-CSE-MsgGUID: 1rCtvQDMR1aJtxMPWEsJrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,256,1719903600"; d="scan'208";a="94989576"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 24 Sep 2024 23:30:19 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v4 3/3] drm/i915/display: Call panel_fitting from pipe_config
Date: Wed, 25 Sep 2024 12:00:32 +0530
Message-Id: <20240925063032.2311796-4-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240925063032.2311796-1-nemesa.garg@intel.com>
References: <20240925063032.2311796-1-nemesa.garg@intel.com>
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
joiner. This causes issue when pch_pfit and joiner get enabled
together. Call panel_fitting from pipe_config once pipe src is
computed.

v4: Remove need_joiner flag [Ville]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b4ef4d59da1a..0148939caaaa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4653,6 +4653,8 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
+	const struct drm_display_mode *fixed_mode;
+	struct intel_dp *intel_dp;
 	int pipe_src_w, pipe_src_h;
 	int base_bpp, ret, i;
 
@@ -4774,6 +4776,24 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		return ret;
 	}
 
+	for_each_new_connector_in_state(&state->base, connector,
+					connector_state, i) {
+		struct intel_encoder *encoder =
+			to_intel_encoder(connector_state->best_encoder);
+
+		if (connector_state->crtc != &crtc->base)
+			continue;
+
+		intel_dp = enc_to_intel_dp(encoder);
+
+		if (!intel_dp)
+			continue;
+
+		if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
+		    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+			return intel_pch_panel_fitting(crtc_state, connector_state);
+	}
+
 	/* Dithering seems to not pass-through bits correctly when it should, so
 	 * only enable it on 6bpc panels and when its not a compliance
 	 * test requesting 6bpc video pattern.
-- 
2.25.1

