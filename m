Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XY55Jr5wOmpS9AcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 13:40:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B8A6B6CB8
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 13:40:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XspGjGuU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D5410EAC6;
	Tue, 23 Jun 2026 11:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D5E710E542;
 Tue, 23 Jun 2026 11:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782214842; x=1813750842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WOJqwPji2wEZ40PUVx+I0U9IvyiUCxesuWq4kYfCqZY=;
 b=XspGjGuUTg+x1vjzAsDokRxtLyo1d78PAYf1vm+rWKnkZbBVqnJqwHfq
 8/30Eqp/JT1/UAHLbUI7UrrRkxvxfQ+iqJaYjy8JbsJODXvctVNIkqrXD
 qelyNCgV+C/V5ssnwH0ThGdo1nsVDMpTvb8DZPn+9cXm2GWQaBvMq2Jya
 AadFJCQcVwMFXlD33v3jDdmj9uaIjm7JB53MqbE/9YeEFefduIH5V63rL
 V4U4mvqob8c4u2EsvGpAd7tG28RizW8MB2RnljDbcBdwXqHdi3cRMYtWA
 4o+HY76l2asjTg7Kx9kn9G9CNCgTz3cvXE5TrUPzzD7Me/Ero3Qcu1dhX Q==;
X-CSE-ConnectionGUID: q/bbyNXfQEaI5+1hMJbGiQ==
X-CSE-MsgGUID: ekYmRU5MRsaORpd+aReIgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="94447654"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="94447654"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 04:40:41 -0700
X-CSE-ConnectionGUID: XnrGywHeQGCSuLsOB+07OQ==
X-CSE-MsgGUID: g+Bk4Ss1QRK3E5w7dlkI+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="248614346"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 04:40:39 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 1/5] drm/i915/panel: Split VRR vs. fixed refresh rate fixed
 mode selection into separate stages
Date: Tue, 23 Jun 2026 14:40:35 +0300
Message-ID: <20260623114035.7185-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622213602.7244-2-ville.syrjala@linux.intel.com>
References: <20260622213602.7244-2-ville.syrjala@linux.intel.com>
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
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C2B8A6B6CB8

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Split the VRR vs. fixed refresh rate fixed mode selection into two
completely separate stages. First try the VRR method, which will
only accept fixed modes that are in the VRR range and whose refresh
rate is equal or higher to the user's requested mode's refresh rate.
If the VRR method doesn't find anything we fall back to the fixed
refresh rate method of simply looking for the fixed mode with the
closest refresh rate to the user's request.

The main benefit is that we will only perform the VRR vtotal adjustment
on fixed modes that have equal or higher refresh rate to the user's
requested mode, thus we will never end up in a situation where we'd
have to shrink the fixed mode's vtotal. This avoids any risk of ending
up with a vtotal that is too short.

v2: Drop redundant intel_panel_fixed_mode() call (Ankit)

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 126 ++++++++++++++-------
 1 file changed, 85 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 81fb349ece5f..2b8401b6d4d6 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -67,21 +67,43 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
 	if (!best_mode)
 		return true;
 
-	/*
-	 * With VRR always pick a mode with equal/higher than requested
-	 * vrefresh, which we can then reduce to match the requested
-	 * vrefresh by extending the vblank length.
-	 */
-	if (intel_vrr_is_in_range(connector, vrefresh) &&
-	    intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
-	    fixed_mode_vrefresh < vrefresh)
-		return false;
-
 	/* pick the fixed_mode that is closest in terms of vrefresh */
 	return abs(fixed_mode_vrefresh - vrefresh) <
 		abs(drm_mode_vrefresh(best_mode) - vrefresh);
 }
 
+static const struct drm_display_mode *
+intel_panel_fixed_mode_vrr(struct intel_connector *connector,
+			   const struct drm_display_mode *mode)
+{
+	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
+	int vrefresh = drm_mode_vrefresh(mode);
+
+	if (!intel_vrr_is_in_range(connector, vrefresh))
+		return NULL;
+
+	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
+		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
+
+		if (!intel_vrr_is_in_range(connector, fixed_mode_vrefresh))
+			continue;
+
+		/*
+		 * With VRR always pick a mode with equal/higher than requested
+		 * vrefresh, which we can then reduce to match the requested
+		 * vrefresh by extending the vblank length.
+		 */
+		if (fixed_mode_vrefresh < vrefresh)
+			continue;
+
+		if (is_best_fixed_mode(connector, vrefresh,
+				       fixed_mode_vrefresh, best_mode))
+			best_mode = fixed_mode;
+	}
+
+	return best_mode;
+}
+
 const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
@@ -197,47 +219,22 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
 	return connector->panel.vbt.drrs_type;
 }
 
-int intel_panel_compute_config(struct intel_connector *connector,
-			       struct drm_display_mode *adjusted_mode)
+static int intel_panel_compute_config_vrr(struct intel_connector *connector,
+					  struct drm_display_mode *adjusted_mode)
 {
-	const struct drm_display_mode *fixed_mode =
-		intel_panel_fixed_mode(connector, adjusted_mode);
+	const struct drm_display_mode *fixed_mode;
 	int vrefresh, fixed_mode_vrefresh;
-	bool is_vrr;
 
+	fixed_mode = intel_panel_fixed_mode_vrr(connector, adjusted_mode);
 	if (!fixed_mode)
-		return 0;
+		return -EINVAL;
 
 	vrefresh = drm_mode_vrefresh(adjusted_mode);
 	fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
 
-	/*
-	 * Assume that we shouldn't muck about with the
-	 * timings if they don't land in the VRR range.
-	 */
-	is_vrr = intel_vrr_is_in_range(connector, vrefresh) &&
-		intel_vrr_is_in_range(connector, fixed_mode_vrefresh);
-
-	if (!is_vrr) {
-		/*
-		 * We don't want to lie too much to the user about the refresh
-		 * rate they're going to get. But we have to allow a bit of latitude
-		 * for Xorg since it likes to automagically cook up modes with slightly
-		 * off refresh rates.
-		 */
-		if (abs(vrefresh - fixed_mode_vrefresh) > 1) {
-			drm_dbg_kms(connector->base.dev,
-				    "[CONNECTOR:%d:%s] Requested mode vrefresh (%d Hz) does not match fixed mode vrefresh (%d Hz)\n",
-				    connector->base.base.id, connector->base.name,
-				    vrefresh, fixed_mode_vrefresh);
-
-			return -EINVAL;
-		}
-	}
-
 	drm_mode_copy(adjusted_mode, fixed_mode);
 
-	if (is_vrr && fixed_mode_vrefresh != vrefresh) {
+	if (fixed_mode_vrefresh != vrefresh) {
 		int vsync_start_offset = adjusted_mode->vtotal - adjusted_mode->vsync_start;
 		int vsync_end_offset = adjusted_mode->vtotal - adjusted_mode->vsync_end;
 
@@ -254,6 +251,53 @@ int intel_panel_compute_config(struct intel_connector *connector,
 	return 0;
 }
 
+static int intel_panel_compute_config_fixed_rr(struct intel_connector *connector,
+					       struct drm_display_mode *adjusted_mode)
+{
+	const struct drm_display_mode *fixed_mode;
+	int vrefresh, fixed_mode_vrefresh;
+
+	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
+	if (!fixed_mode)
+		return 0;
+
+	vrefresh = drm_mode_vrefresh(adjusted_mode);
+	fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
+
+	/*
+	 * We don't want to lie too much to the user about the refresh
+	 * rate they're going to get. But we have to allow a bit of latitude
+	 * for Xorg since it likes to automagically cook up modes with slightly
+	 * off refresh rates.
+	 */
+	if (abs(vrefresh - fixed_mode_vrefresh) > 1) {
+		drm_dbg_kms(connector->base.dev,
+			    "[CONNECTOR:%d:%s] Requested mode vrefresh (%d Hz) does not match fixed mode vrefresh (%d Hz)\n",
+			    connector->base.base.id, connector->base.name,
+			    vrefresh, fixed_mode_vrefresh);
+
+		return -EINVAL;
+	}
+
+	drm_mode_copy(adjusted_mode, fixed_mode);
+
+	drm_mode_set_crtcinfo(adjusted_mode, 0);
+
+	return 0;
+}
+
+int intel_panel_compute_config(struct intel_connector *connector,
+			       struct drm_display_mode *adjusted_mode)
+{
+	int ret;
+
+	ret = intel_panel_compute_config_vrr(connector, adjusted_mode);
+	if (ret)
+		ret = intel_panel_compute_config_fixed_rr(connector, adjusted_mode);
+
+	return ret;
+}
+
 static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
-- 
2.53.0

