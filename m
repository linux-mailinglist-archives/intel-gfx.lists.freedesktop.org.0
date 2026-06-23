Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VHIYMvNwOmpo9AcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 13:41:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 289E56B6CD9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 13:41:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=KFUbps+P;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B375A10EAC4;
	Tue, 23 Jun 2026 11:41:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7335E10EABD;
 Tue, 23 Jun 2026 11:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782214896; x=1813750896;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oFR3fKxp2rMoamXoQfp+HWnnM/ydmzyeIyOJDGCQOJg=;
 b=KFUbps+PcQmpZNm3VJjWGDn9gQIv3jDEzsqT+DDY6W+GohLZnt4NeS2p
 ucGPYA0DGe2Yx88ZMmy0+Sx8OE1a9CAj0jDbZWLGOO6MYp8O4Ka5819Dc
 QObxGekSjosllJhqeyUYKqfG3bUUWRtKQjaxkD6KOoqiZeucNj0AurXnk
 fYJeATjcLvZBNoSnZwrTyhqyHTRwpk5DTYnXyPayiySrcoWSn3h5poka1
 YB4f+L9OEBWIlLa2MIOLOKCCOOX/m1lBL1iFUrhrrLwegihutUXr9pLfD
 DJcpS8YGRAptQsC3d9l4oySYAo1Sx9xB1Ui4TjlhyVQrNsXXM7Xi6ZYXp Q==;
X-CSE-ConnectionGUID: Q7Bs8HPcRzSlKOLDiHD1/w==
X-CSE-MsgGUID: maiHV8BBSqSiM1JdTkQGlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82996788"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="82996788"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 04:41:36 -0700
X-CSE-ConnectionGUID: Vu+8Rh8nQ2qd17ZzCunMEg==
X-CSE-MsgGUID: f+qAel5wT9SbG2J6uEnxUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="249614954"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 04:41:34 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 4/5] drm/i915/panel: Adjust intel_panel_compute_config()
 calling convention
Date: Tue, 23 Jun 2026 14:41:29 +0300
Message-ID: <20260623114130.7333-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622213602.7244-5-ville.syrjala@linux.intel.com>
References: <20260622213602.7244-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 289E56B6CD9

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pass the full atomic state to intel_panel_compute_config(). We'll
need this for some upcoming VRR fastset tricks. And to accompany
full state we'll also need the crtc (or its state) as well.

v2: Rebase

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_panel.c | 21 +++++++++++++--------
 drivers/gpu/drm/i915/display/intel_panel.h |  6 ++++--
 drivers/gpu/drm/i915/display/intel_sdvo.c  |  4 ++--
 drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
 8 files changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 59184f2f805c..ea0cdb7822f3 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1672,7 +1672,7 @@ static int gen11_dsi_compute_config(struct intel_atomic_state *state,
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+	ret = intel_panel_compute_config(state, pipe_config, intel_connector);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b9324b590ee9..da8a94821c11 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3639,7 +3639,7 @@ intel_dp_compute_config(struct intel_atomic_state *state,
 	int ret = 0, link_bpp_x16;
 
 	if (intel_dp_is_edp(intel_dp)) {
-		ret = intel_panel_compute_config(connector, adjusted_mode);
+		ret = intel_panel_compute_config(state, pipe_config, connector);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 181722c41b96..f157699a7c4c 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -257,7 +257,7 @@ static int intel_dvo_compute_config(struct intel_atomic_state *state,
 	 * with the panel scaling set up to source from the H/VDisplay
 	 * of the original mode.
 	 */
-	ret = intel_panel_compute_config(connector, adjusted_mode);
+	ret = intel_panel_compute_config(state, pipe_config, connector);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 30e4809b36ac..872753478cf2 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -460,7 +460,7 @@ static int intel_lvds_compute_config(struct intel_atomic_state *state,
 	 * with the panel scaling set up to source from the H/VDisplay
 	 * of the original mode.
 	 */
-	ret = intel_panel_compute_config(connector, adjusted_mode);
+	ret = intel_panel_compute_config(state, crtc_state, connector);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 2b8401b6d4d6..faa24537ef63 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -219,9 +219,11 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
 	return connector->panel.vbt.drrs_type;
 }
 
-static int intel_panel_compute_config_vrr(struct intel_connector *connector,
-					  struct drm_display_mode *adjusted_mode)
+static int intel_panel_compute_config_vrr(struct intel_atomic_state *state,
+					  struct intel_crtc_state *crtc_state,
+					  struct intel_connector *connector)
 {
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_mode *fixed_mode;
 	int vrefresh, fixed_mode_vrefresh;
 
@@ -251,9 +253,11 @@ static int intel_panel_compute_config_vrr(struct intel_connector *connector,
 	return 0;
 }
 
-static int intel_panel_compute_config_fixed_rr(struct intel_connector *connector,
-					       struct drm_display_mode *adjusted_mode)
+static int intel_panel_compute_config_fixed_rr(struct intel_atomic_state *state,
+					       struct intel_crtc_state *crtc_state,
+					       struct intel_connector *connector)
 {
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_mode *fixed_mode;
 	int vrefresh, fixed_mode_vrefresh;
 
@@ -286,14 +290,15 @@ static int intel_panel_compute_config_fixed_rr(struct intel_connector *connector
 	return 0;
 }
 
-int intel_panel_compute_config(struct intel_connector *connector,
-			       struct drm_display_mode *adjusted_mode)
+int intel_panel_compute_config(struct intel_atomic_state *state,
+			       struct intel_crtc_state *crtc_state,
+			       struct intel_connector *connector)
 {
 	int ret;
 
-	ret = intel_panel_compute_config_vrr(connector, adjusted_mode);
+	ret = intel_panel_compute_config_vrr(state, crtc_state, connector);
 	if (ret)
-		ret = intel_panel_compute_config_fixed_rr(connector, adjusted_mode);
+		ret = intel_panel_compute_config_fixed_rr(state, crtc_state, connector);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 23bd227826c9..30c6078ecb1b 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -14,6 +14,7 @@ struct drm_connector;
 struct drm_connector_state;
 struct drm_display_mode;
 struct drm_edid;
+struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_display;
@@ -45,8 +46,9 @@ enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode,
 		       int *target_clock);
-int intel_panel_compute_config(struct intel_connector *connector,
-			       struct drm_display_mode *adjusted_mode);
+int intel_panel_compute_config(struct intel_atomic_state *state,
+			       struct intel_crtc_state *crtc_state,
+			       struct intel_connector *connector);
 void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
 				      bool use_alt_fixed_modes);
 void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connector);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 6b73c9a5ec7f..3075ef04df56 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1399,8 +1399,8 @@ static int intel_sdvo_compute_config(struct intel_atomic_state *state,
 		const struct drm_display_mode *fixed_mode;
 		int ret;
 
-		ret = intel_panel_compute_config(&intel_sdvo_connector->base,
-						 adjusted_mode);
+		ret = intel_panel_compute_config(state, pipe_config,
+						 &intel_sdvo_connector->base);
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index b89318f5bdc2..8829f365592e 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -281,7 +281,7 @@ static int intel_dsi_compute_config(struct intel_atomic_state *state,
 	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
-	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+	ret = intel_panel_compute_config(state, pipe_config, intel_connector);
 	if (ret)
 		return ret;
 
-- 
2.53.0

