Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0I0TB61Y82lfzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:27:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB914A36B3
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 15:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7D2D10E65B;
	Thu, 30 Apr 2026 13:27:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SAaj1o82";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D061D10E5A7;
 Thu, 30 Apr 2026 13:27:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777555625; x=1809091625;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sMGeKrI0K1wsdgvf5xAinZgYSFIyba717RaPm1AhArM=;
 b=SAaj1o82ksmugZvLGJc8F1YjGRQEkXF4Aaheb5wIRHiZFIgwW0m/VjL1
 jHsj4RrwMKY9UbD9TpXybe45L05qmCoRPem0WgIf2LhdTKCITsnMPvy6+
 rC7Y3H+PUwPB7F/ZJ75lsIAdktOWB6O2FXo+s2RB+CohNniOGY9QIrM70
 Van0aal4yjz2niqXRMXkkCaUdT529I0pHFyQadnTN/HzebFaHocFLD8Mu
 egyMvdHN0UHIq/PlU2MP2EFzdYWrMp0YxxVxrVzkf9UctoXu2nyyHwx5D
 8A9KXW+WTxKg+nDls784cus/cjuUkjofu2/Em0qMbidVuPXZasXucvmmC Q==;
X-CSE-ConnectionGUID: dH+UWMOmSi67uprdr6M2hg==
X-CSE-MsgGUID: aAq3GBb9STW5e9onikve+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78398725"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78398725"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:27:05 -0700
X-CSE-ConnectionGUID: NSDknNayQ8SqbREw4tGfKg==
X-CSE-MsgGUID: tUgZp8VhTWeMrSGzVQDxyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="257919874"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 06:27:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/5] drm/i915/intel_panel: Avoid calls to
 intel_panel_fixed_mode() in mode_valid
Date: Thu, 30 Apr 2026 18:42:17 +0530
Message-ID: <20260430131220.3891497-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: BDB914A36B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Currently, most callers of intel_panel_mode_valid() also call
intel_panel_fixed_mode(). This is done either to check for the presence of
a fixed mode for the connector or to get the clock of the fixed mode, which
is then compared against the max dotclock for the pipe.

Since intel_panel_mode_valid() already calls intel_panel_fixed_mode()
internally, we can avoid yet another call to intel_panel_fixed_mode() from
the caller.

Remove the redundant call to intel_panel_fixed_mode() in mode_valid paths.
To get the clock for the fixed mode, extend the helper
intel_panel_mode_valid() to accept 'target_clock' as an out param.
The 'target_clock' can then be used by the callers to check against the
max dotclock.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    |  8 ++------
 drivers/gpu/drm/i915/display/intel_dsi.c   |  7 +++----
 drivers/gpu/drm/i915/display/intel_dvo.c   | 15 +++------------
 drivers/gpu/drm/i915/display/intel_lvds.c  |  7 +++----
 drivers/gpu/drm/i915/display/intel_panel.c |  9 ++++++++-
 drivers/gpu/drm/i915/display/intel_panel.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 +++-----
 7 files changed, 24 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8631df908b07..eef85598bcd9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1571,7 +1571,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	struct intel_connector *connector = to_intel_connector(_connector);
 	const struct drm_display_info *info = &connector->base.display_info;
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	enum drm_mode_status status;
 
@@ -1588,13 +1587,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
 		return MODE_H_ILLEGAL;
 
-	fixed_mode = intel_panel_fixed_mode(connector, mode);
-	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
-		status = intel_panel_mode_valid(connector, mode);
+	if (intel_dp_is_edp(intel_dp)) {
+		status = intel_panel_mode_valid(connector, mode, &target_clock);
 		if (status != MODE_OK)
 			return status;
-
-		target_clock = fixed_mode->clock;
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 9005c1f5d857..3a111f041071 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -63,18 +63,17 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
-	const struct drm_display_mode *fixed_mode =
-		intel_panel_fixed_mode(intel_connector, mode);
 	int max_dotclk = display->cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
+	int target_clock;
 
 	drm_dbg_kms(display->drm, "\n");
 
-	status = intel_panel_mode_valid(intel_connector, mode);
+	status = intel_panel_mode_valid(intel_connector, mode, &target_clock);
 	if (status != MODE_OK)
 		return status;
 
-	if (fixed_mode->clock > max_dotclk)
+	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
 	return intel_mode_valid_max_plane_size(display, mode, 1);
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 405b33aca9dd..65015477abed 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -223,8 +223,6 @@ intel_dvo_mode_valid(struct drm_connector *_connector,
 	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
-	const struct drm_display_mode *fixed_mode =
-		intel_panel_fixed_mode(connector, mode);
 	int max_dotclk = display->cdclk.max_dotclk_freq;
 	int target_clock = mode->clock;
 	enum drm_mode_status status;
@@ -234,16 +232,9 @@ intel_dvo_mode_valid(struct drm_connector *_connector,
 		return status;
 
 	/* XXX: Validate clock range */
-
-	if (fixed_mode) {
-		enum drm_mode_status status;
-
-		status = intel_panel_mode_valid(connector, mode);
-		if (status != MODE_OK)
-			return status;
-
-		target_clock = fixed_mode->clock;
-	}
+	status = intel_panel_mode_valid(connector, mode, &target_clock);
+	if (status != MODE_OK)
+		return status;
 
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index cc6d4bfcff10..ab6ba08ac091 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -395,20 +395,19 @@ intel_lvds_mode_valid(struct drm_connector *_connector,
 {
 	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
-	const struct drm_display_mode *fixed_mode =
-		intel_panel_fixed_mode(connector, mode);
 	int max_pixclk = display->cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
+	int target_clock;
 
 	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
 		return status;
 
-	status = intel_panel_mode_valid(connector, mode);
+	status = intel_panel_mode_valid(connector, mode, &target_clock);
 	if (status != MODE_OK)
 		return status;
 
-	if (fixed_mode->clock > max_pixclk)
+	if (target_clock > max_pixclk)
 		return MODE_CLOCK_HIGH;
 
 	return MODE_OK;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 2a20aaaaac39..20c548eea6da 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -396,11 +396,15 @@ intel_panel_detect(struct drm_connector *connector, bool force)
 
 enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
-		       const struct drm_display_mode *mode)
+		       const struct drm_display_mode *mode,
+		       int *target_clock)
 {
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(connector, mode);
 
+	if (target_clock)
+		*target_clock = mode->clock;
+
 	if (!fixed_mode)
 		return MODE_OK;
 
@@ -413,6 +417,9 @@ intel_panel_mode_valid(struct intel_connector *connector,
 	if (drm_mode_vrefresh(mode) != drm_mode_vrefresh(fixed_mode))
 		return MODE_PANEL;
 
+	if (target_clock)
+		*target_clock = fixed_mode->clock;
+
 	return MODE_OK;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 56a6412cf0fb..23bd227826c9 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -43,7 +43,8 @@ int intel_panel_get_modes(struct intel_connector *connector);
 enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
 enum drm_mode_status
 intel_panel_mode_valid(struct intel_connector *connector,
-		       const struct drm_display_mode *mode);
+		       const struct drm_display_mode *mode,
+		       int *target_clock);
 int intel_panel_compute_config(struct intel_connector *connector,
 			       struct drm_display_mode *adjusted_mode);
 void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index e7aaa5b203fd..7843eb13f2e3 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1967,15 +1967,13 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 
 	if (IS_LVDS(intel_sdvo_connector)) {
 		enum drm_mode_status status;
-		const struct drm_display_mode *fixed_mode;
+		int target_clock;
 
-		status = intel_panel_mode_valid(&intel_sdvo_connector->base, mode);
+		status = intel_panel_mode_valid(&intel_sdvo_connector->base, mode, &target_clock);
 		if (status != MODE_OK)
 			return status;
 
-		fixed_mode = intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
-
-		if (fixed_mode && fixed_mode->clock > max_dotclk)
+		if (target_clock > max_dotclk)
 			return MODE_CLOCK_HIGH;
 	}
 
-- 
2.45.2

