Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA322873864
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 15:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662A110EE71;
	Wed,  6 Mar 2024 14:07:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iw5LNLDj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B15D10EE6B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 14:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709734058; x=1741270058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UM9S6doqkrV1EBlIq8lNQPTcEdeSvt7o7nqtROtnkT4=;
 b=iw5LNLDjzlvWFsQWAW4ZQSAbr/iRzQDAS+WyIRAIvINWC6U22kKSinVD
 URUojVL8TmdrEERTyZInj5mnsLmwfqB4rhxwMnUb61Q0yjr6sKu9oIb/x
 uWZUkYouUnV7OzqF85VxaA14VA9tnWrpmkkmJLZgCh9GMSW/zm4+4M1sg
 i/qjF+HipNX6SrbhPSCDjAYfOeWItdLsiwAuX6IUJ2JThbHP7awURt1LR
 R5pkEaJo4pqjxeLV/WBarQqv4MD14DYo2FKyCAH6nQToNP6MLc7wPC/r3
 H3g45DWYqROh2R+4aZ9lvF+9oNcUV+RiJQ8n0DeFbDQoce+u874y+sfRS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="7288467"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="7288467"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="32915301"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jani Nikula <jani.nikula@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v3 4/6] drm/i915/mst: use the MST mode detected previously
Date: Wed,  6 Mar 2024 16:07:15 +0200
Message-Id: <687899161d4ba5030ed0b604c23906d97c8f17fc.1709733981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709733981.git.jani.nikula@intel.com>
References: <cover.1709733981.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Drop the duplicate read of DP_MSTM_CAP DPCD register, and the duplicate
logic for choosing MST mode, and store the chosen mode in struct
intel_dp. Rename intel_dp_configure_mst() to intel_dp_mst_configure()
while at it.

v2: Rebase on drm_dp_mst_detect() returning the mode, not bool

Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 21 ++++++++-----------
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e67cd5b02e84..1d3234f471c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1798,6 +1798,7 @@ struct intel_dp {
 
 	bool is_mst;
 	int active_mst_links;
+	enum drm_dp_mst_mode mst_detect;
 
 	/* connector directly attached - won't be use for modeset in mst world */
 	struct intel_connector *attached_connector;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9c0fbd2eb62b..41f83d01a884 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4099,19 +4099,17 @@ intel_dp_mst_detect(struct intel_dp *intel_dp)
 }
 
 static void
-intel_dp_configure_mst(struct intel_dp *intel_dp)
+intel_dp_mst_configure(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd) == DRM_DP_MST;
-
 	if (!intel_dp_mst_source_support(intel_dp))
 		return;
 
-	intel_dp->is_mst = sink_can_mst &&
-		i915->display.params.enable_dp_mst;
+	intel_dp->is_mst = intel_dp->mst_detect != DRM_DP_SST;
 
-	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
-					intel_dp->is_mst);
+	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr, intel_dp->is_mst);
+
+	/* Avoid stale info on the next detect cycle. */
+	intel_dp->mst_detect = DRM_DP_SST;
 }
 
 static bool
@@ -5392,7 +5390,6 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	enum drm_dp_mst_mode mst_detect;
 	u8 *dpcd = intel_dp->dpcd;
 	u8 type;
 
@@ -5404,7 +5401,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 	if (!intel_dp_get_dpcd(intel_dp))
 		return connector_status_disconnected;
 
-	mst_detect = intel_dp_mst_detect(intel_dp);
+	intel_dp->mst_detect = intel_dp_mst_detect(intel_dp);
 
 	/* if there's no downstream port, we're done */
 	if (!drm_dp_is_branch(dpcd))
@@ -5417,7 +5414,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 		connector_status_connected : connector_status_disconnected;
 	}
 
-	if (mst_detect == DRM_DP_MST)
+	if (intel_dp->mst_detect == DRM_DP_MST)
 		return connector_status_connected;
 
 	/* If no HPD, poke DDC gently */
@@ -5749,7 +5746,7 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
 
-	intel_dp_configure_mst(intel_dp);
+	intel_dp_mst_configure(intel_dp);
 
 	/*
 	 * TODO: Reset link params when switching to MST mode, until MST
-- 
2.39.2

