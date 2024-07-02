Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6671C91EE22
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 07:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE14B10E18D;
	Tue,  2 Jul 2024 05:07:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cHXwlm/R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BC6510E18D
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2024 05:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719896854; x=1751432854;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZO5jx75L+3Q5I4L3994qkSpxCuyH0dJYerNYLIb8kpk=;
 b=cHXwlm/RjHBBOeBpfDY99/mrM31f2zbZPJ2EHGNgeSwvzIRmtLUds7Ti
 dKV2UOwYKUrz616+TZWTtEuDEqiugDih9ovuEPRrq3CTrT1+eW1kkQ0Gd
 M7mr6T/GrnCdPDq5kan2O44XO8lUyGaUsrgKAbrV6fOfp5nX6I9t/QsIN
 r0Xapi8qsOqEGsAwldbfmdDjk0B7Kqu2CrDYp3CbNw5VtnPY/sjAB45JL
 F3y6LFBzGXm1NbvtzPl39olDfWTuEmKpobzCd3VZzRJSzhEHqmQkehug6
 dAafTwMeQVlRvqXYigj0/G3m7DbUub0QHnUiukyTmGX/ZZRtNlMVqxdcR g==;
X-CSE-ConnectionGUID: /Xch5mWNT++SsffJyD5iMA==
X-CSE-MsgGUID: lUHn4y9+Q6SKy4TO5CM6qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="17004692"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="17004692"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 22:07:34 -0700
X-CSE-ConnectionGUID: F/0NhCv6QfKn99R1oCjoFQ==
X-CSE-MsgGUID: IWOhdXGiSAKmPHX/Mticlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="45666042"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 01 Jul 2024 22:07:32 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	imre.deak@intel.com
Subject: [PATCH 2/2] drm/i915/display: Cache Adaptive Sync SDP caps
Date: Tue,  2 Jul 2024 10:37:55 +0530
Message-ID: <20240702050755.2091221-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240702050755.2091221-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240702050755.2091221-1-mitulkumar.ajitkumar.golani@intel.com>
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

Cache as sdp caps during connector detection itself and
remove intel_dp_as_sdp_supported usage as it is being taken
care by already caching caps.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 19 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_dp.h |  1 -
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c6f0a46a0388..edfb30857479 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -129,14 +129,6 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
 	return dig_port->base.type == INTEL_OUTPUT_EDP;
 }
 
-bool intel_dp_as_sdp_supported(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-
-	return HAS_AS_SDP(i915) &&
-		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
-}
-
 static void intel_dp_unset_edid(struct intel_dp *intel_dp);
 
 /* Is link rate UHBR and thus 128b/132b? */
@@ -5899,6 +5891,15 @@ intel_dp_detect_dsc_caps(struct intel_dp *intel_dp, struct intel_connector *conn
 					  connector);
 }
 
+static void
+intel_dp_detect_sdp_caps(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	intel_dp->as_sdp_supported = HAS_AS_SDP(i915) &&
+		drm_dp_as_sdp_supported(&intel_dp->aux, intel_dp->dpcd);
+}
+
 static int
 intel_dp_detect(struct drm_connector *connector,
 		struct drm_modeset_acquire_ctx *ctx,
@@ -5957,6 +5958,8 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
 
+	intel_dp_detect_sdp_caps(intel_dp);
+
 	intel_dp_mst_configure(intel_dp);
 
 	if (intel_dp->reset_link_params) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a0f990a95ecc..9be539edf817 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -85,7 +85,6 @@ void intel_dp_audio_compute_config(struct intel_encoder *encoder,
 				   struct drm_connector_state *conn_state);
 bool intel_dp_has_hdmi_sink(struct intel_dp *intel_dp);
 bool intel_dp_is_edp(struct intel_dp *intel_dp);
-bool intel_dp_as_sdp_supported(struct intel_dp *intel_dp);
 bool intel_dp_is_uhbr(const struct intel_crtc_state *crtc_state);
 bool intel_dp_has_dsc(const struct intel_connector *connector);
 int intel_dp_link_symbol_size(int rate);
-- 
2.45.2

