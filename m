Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1FF8AC31A
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 05:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7278D1126FB;
	Mon, 22 Apr 2024 03:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jofp5414";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B58CF1126F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 03:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713756930; x=1745292930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uwF9vUIQgRnA4Oj7J+KEIJJWGLacaIde9etwwW9WDC8=;
 b=Jofp5414Igq3bLlfVS8lhD+A9IAV//nUpY/xt4aN6dZScuPfUKWGzl9w
 ZIbQpna/k7ar5WigSg94YA9iDeWNEYdva3bcv+1swVtKr4RLcCOs6X4bx
 udxqa1nY7QaPpOsx4fCcc7QSoo6bnxhWawyEHqHGNm5pUMjkOKxi72t0I
 ioOTXCmc1MhFBmHMSAwW4M9VynKdc43/MUZLD+qDC8d8R3w7fmL7S4aIz
 ATLx8ICT3cPJcRDgBZEwTZsJawVUnlqrQbt4HC0N/caELg8KLpSrDH7M4
 inHc8z0EBGJ8RgWhQ/MveE/RkeFZK8ApDr0Iiam0f+X9y4RX8zFUs/SPH w==;
X-CSE-ConnectionGUID: 7T4rQNz6SNGKU1StM4x5OQ==
X-CSE-MsgGUID: A2xqMd6wRJa/OjrQc3VXiA==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9158225"
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; 
   d="scan'208";a="9158225"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 20:35:29 -0700
X-CSE-ConnectionGUID: nVee7OlfQ6S1qg1+mUcM/Q==
X-CSE-MsgGUID: Hh5y1xqOTX+VBq9ZAUj9Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; d="scan'208";a="23907368"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Apr 2024 20:35:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 naveen1.kumar@intel.com, sebastian.wick@redhat.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/6] drm/i915/dp: Make has_gamut_metadata_dip() non static
Date: Mon, 22 Apr 2024 09:02:50 +0530
Message-ID: <20240422033256.713902-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422033256.713902-1-suraj.kandpal@intel.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
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

Make has_gamut_metadata_dip() non static so it can also be used to
at other places eg in intel_dp_aux_backlight. So that we can check
if HW is capable of sending SDP which helps us decide if we use
AUX based HDR control or via SDP.

--v2
-State reason the function is needed [Arun]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp.h | 1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 163da48bc406..8b105efd4de9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6365,8 +6365,8 @@ bool intel_dp_is_port_edp(struct drm_i915_private *i915, enum port port)
 	return _intel_dp_is_port_edp(i915, devdata, port);
 }
 
-static bool
-has_gamut_metadata_dip(struct intel_encoder *encoder)
+bool
+intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
@@ -6413,7 +6413,7 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 		intel_attach_dp_colorspace_property(connector);
 	}
 
-	if (has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
+	if (intel_dp_has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
 		drm_connector_attach_hdr_output_metadata_property(connector);
 
 	if (HAS_VRR(dev_priv))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 106ecfde36d9..aad2223df2a3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -196,5 +196,6 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 					struct link_config_limits *limits);
 
 void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
+bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
 
 #endif /* __INTEL_DP_H__ */
-- 
2.43.2

