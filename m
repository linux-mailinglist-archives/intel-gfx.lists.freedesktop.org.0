Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9C39F4781
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:30:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2731710E8B1;
	Tue, 17 Dec 2024 09:29:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="awszYtfS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD25E10E8A3;
 Tue, 17 Dec 2024 09:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427789; x=1765963789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dRjS0B7gRSIwEWBlWemipUW9I5v70PtUFvdiVJ9r6Ks=;
 b=awszYtfSaR+0/sHLjtiVD4OhDlQatw80nnIIyRPnU/J7dS3z/bLeLmQT
 30/byvPymYjmA4eEu64YefevnFqq3h/UbNl/L/h7j8bXP5uwkabjfrJct
 A4dZZyOoeglm4sj1HpHtkBY16wBYRd+FYjLW+xl/yi5qWWLaXEuMr87W2
 a6Hgvc50KPt6lRybOhrAkksH9PA3EWZc6JSsnw1zHIV4zQyBdzF/xe0fE
 M82I01VHqJFJoW0DRIy0JWFJfcQHIclpR8G61KQ5mpEKY/Xa18B5qU2s7
 BMx61XTCW7Ai8kjHJtV16+9Ipq9ySmKyE1XrREtXopfnmdCB2/ciAjo85 A==;
X-CSE-ConnectionGUID: imzIi4CHQ5WUYnVJyxMsKA==
X-CSE-MsgGUID: CYiH+7MPTLmgn/lJ34KjAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34976125"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34976125"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:48 -0800
X-CSE-ConnectionGUID: ndJ/iiHrSVi/DgmvTlM05g==
X-CSE-MsgGUID: vv0SKdP2Q5SLTfVrPyfc1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="98052406"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:29:47 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 01/14] drm/i915/dp: Refactor FEC support check in
 intel_dp_supports_dsc
Date: Tue, 17 Dec 2024 15:02:31 +0530
Message-ID: <20241217093244.3938132-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
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

v2: Pass intel_dp to adjust_limits_for_dsc_hblank_expansion_quirk
instead of deriving it from connector. (Jani)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  8 +++++---
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
 3 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fba3af338280..908b9887f89b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1627,13 +1627,15 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
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
@@ -2373,7 +2375,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
 		 !intel_dp_is_uhbr(pipe_config));
 
-	if (!intel_dp_supports_dsc(connector, pipe_config))
+	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
 		return -EINVAL;
 
 	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a1fd21c3b792..03dde9756bdc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -170,7 +170,8 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
 			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *pipe_config);
 
-bool intel_dp_supports_dsc(const struct intel_connector *connector,
+bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
+			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state);
 
 u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 326ff20a5a49..4217350eefb0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -519,7 +519,8 @@ hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
 }
 
 static bool
-adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *connector,
+adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
+					     const struct intel_connector *connector,
 					     const struct intel_crtc_state *crtc_state,
 					     struct link_config_limits *limits,
 					     bool dsc)
@@ -532,7 +533,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
 		return true;
 
 	if (!dsc) {
-		if (intel_dp_supports_dsc(connector, crtc_state)) {
+		if (intel_dp_supports_dsc(intel_dp, connector, crtc_state)) {
 			drm_dbg_kms(display->drm,
 				    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC needed by hblank expansion quirk\n",
 				    crtc->base.base.id, crtc->base.name,
@@ -588,7 +589,8 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
 					    limits))
 		return false;
 
-	return adjust_limits_for_dsc_hblank_expansion_quirk(connector,
+	return adjust_limits_for_dsc_hblank_expansion_quirk(intel_dp,
+							    connector,
 							    crtc_state,
 							    limits,
 							    dsc);
@@ -651,7 +653,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
-		if (!intel_dp_supports_dsc(connector, pipe_config))
+		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
 			return -EINVAL;
 
 		if (!mst_stream_compute_config_limits(intel_dp, connector,
-- 
2.45.2

