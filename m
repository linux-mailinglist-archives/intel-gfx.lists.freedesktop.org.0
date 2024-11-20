Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 622339D3870
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 11:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97A5A10E6F0;
	Wed, 20 Nov 2024 10:35:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fVx3ucFT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7F6510E6EE;
 Wed, 20 Nov 2024 10:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732098928; x=1763634928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tiZl1GlHAB3kw3j59dPFXqo23mfr7roOrnOAgLTnowA=;
 b=fVx3ucFTk0362oMfVWFbXZMJNvGN3wv1dRu0/8MVlsPEq+DeOPoTTH8G
 grUn16zVXyIvhPGToLGqm4o/WAu8D6Vy0hvypz+I5NOfNATr7hxgmGgSH
 JmW7zpVV3IcyLzgmKy25OVzGom7bNUZ9nWIbckbiqYMJdeHrxboqA3aO0
 3H+MH56GmUxmPln44OpPQyWyudceobXfmEx30sd2ZsiA6tPmQbAvslBw6
 hg8VM4WNMkp/6Hz0twbmw3VqOp0oo8EP/Q02OWF1H8VihXTmrwBe0Xbcn
 JMUhZWGXBKN+EsmKK5byZT7dXNZk0gZrt/epWC4IDz7R4yIQgEz7n+Eje g==;
X-CSE-ConnectionGUID: kkH80VkXRcWYLoOjMOxrxQ==
X-CSE-MsgGUID: iyx+6e/3Q2mlgfS4ZMl8Mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="31520050"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="31520050"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:27 -0800
X-CSE-ConnectionGUID: ctbn/SoDQIOUXhCEH3nreg==
X-CSE-MsgGUID: +IZpxFdQTJKjC9LGZXJsnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="89674044"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 02:35:26 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 01/12] drm/i915/dp: Refactor FEC support check in
 intel_dp_supports_dsc
Date: Wed, 20 Nov 2024 16:07:51 +0530
Message-ID: <20241120103802.134295-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
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

Forward Error Correction is required for DP if we are using DSC but
is optional for eDP.

Currently the helper intel_dp_supports_dsc checks if fec_enable is set for
DP or not. The helper is called after fec_enable is set in crtc_state.

Instead of this a better approach would be to:
first, call intel_dp_supports_dsc to check for DSC support
(along with FEC requirement for DP) and then set fec_enable for DP
(if not already set) in crtc_state.

To achieve this, remove the check for fec_enable in the helper and instead
check for FEC support for DP. With this change the helper
intel_dp_supports_dsc can be called earlier and return early if DSC is
not supported. The structure intel_dp is added to the helper to get the
FEC support for DP.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 8 +++++---
 drivers/gpu/drm/i915/display/intel_dp.h     | 3 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 053a9a4182e7..db9ddbcdd159 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1632,13 +1632,15 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 		drm_dp_sink_supports_fec(connector->dp.fec_capability);
 }
 
-bool intel_dp_supports_dsc(const struct intel_connector *connector,
+bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
+			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state)
 {
 	if (!intel_dp_has_dsc(connector))
 		return false;
 
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fec_enable)
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&
+	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
 		return false;
 
 	return intel_dsc_source_support(crtc_state);
@@ -2376,7 +2378,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
 		 !intel_dp_is_uhbr(pipe_config));
 
-	if (!intel_dp_supports_dsc(connector, pipe_config))
+	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
 		return -EINVAL;
 
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 48f10876be65..4ae54e9718ce 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -170,7 +170,8 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *pipe_config);
 
-bool intel_dp_supports_dsc(const struct intel_connector *connector,
+bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
+			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state);
 
 u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f058360a2641..0662736849ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -498,12 +498,13 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
 	struct intel_display *display = to_intel_display(connector);
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	int min_bpp_x16 = limits->link.min_bpp_x16;
+	struct intel_dp *intel_dp = connector->mst_port;
 
 	if (!hblank_expansion_quirk_needs_dsc(connector, crtc_state, limits))
 		return true;
 
 	if (!dsc) {
-		if (intel_dp_supports_dsc(connector, crtc_state)) {
+		if (intel_dp_supports_dsc(intel_dp, connector, crtc_state)) {
 			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC needed by hblank expansion quirk\n",
 				    crtc->base.base.id, crtc->base.name,
@@ -648,7 +649,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
-		if (!intel_dp_supports_dsc(connector, pipe_config))
+		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
 			return -EINVAL;
 
 		if (!mst_stream_compute_config_limits(intel_dp, connector,
-- 
2.45.2

