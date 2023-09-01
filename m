Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC4C78FE07
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:05:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E096010E7CE;
	Fri,  1 Sep 2023 13:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 281F410E7CC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573507; x=1725109507;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hq7C+2Dm8zQg7zqGfsMIA3n9p4rQuJO0R5KuVQAF03A=;
 b=mUUJaigtfI3yHsnrbAn38Tym7hzS+3gQIgYJ8OXniImp7vmft5GEsJI7
 13ElJiOskeVUg5e+XkC0Vi4aNTBzLro3ouFNGCKj0NY+BuQlq6NR4Nxm/
 Xy8bhSI5b58ggWSb0IqlMKHITUw5yDcySAJyTeURM1HvDOlAeXW/43K4z
 kCRe6uKDyB/vX6Qoo2lJVWe4GFMMu2ug4PitW2YKO+1Owa0PFHWHI4zqF
 cfNMaRUgYfZjzhNo2WhODvkn24GF6Vvi+5d05oSPnlh0fD+mYun61kF9s
 UxWdBvagI0jYXXmPNFAFtiJuCL7q7Gjt/GOKUPKanI64vHxTtV8BkmHTf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361240630"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361240630"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:05:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="774994967"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="774994967"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 01 Sep 2023 06:05:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:05:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:35 +0300
Message-ID: <20230901130440.2085-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/12] drm/i915: Relocate is_in_vrr_range()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move is_in_vrr_range() into intel_vrr.c in anticipation of
more users, and rename it accordingly.

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 17 ++++-------------
 drivers/gpu/drm/i915/display/intel_vrr.c   |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h   |  1 +
 3 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 9232a305b1e6..086cb8dbe22c 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -59,15 +59,6 @@ intel_panel_preferred_fixed_mode(struct intel_connector *connector)
 					struct drm_display_mode, head);
 }
 
-static bool is_in_vrr_range(struct intel_connector *connector, int vrefresh)
-{
-	const struct drm_display_info *info = &connector->base.display_info;
-
-	return intel_vrr_is_capable(connector) &&
-		vrefresh >= info->monitor_range.min_vfreq &&
-		vrefresh <= info->monitor_range.max_vfreq;
-}
-
 static bool is_best_fixed_mode(struct intel_connector *connector,
 			       int vrefresh, int fixed_mode_vrefresh,
 			       const struct drm_display_mode *best_mode)
@@ -81,8 +72,8 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
 	 * vrefresh, which we can then reduce to match the requested
 	 * vrefresh by extending the vblank length.
 	 */
-	if (is_in_vrr_range(connector, vrefresh) &&
-	    is_in_vrr_range(connector, fixed_mode_vrefresh) &&
+	if (intel_vrr_is_in_range(connector, vrefresh) &&
+	    intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
 	    fixed_mode_vrefresh < vrefresh)
 		return false;
 
@@ -224,8 +215,8 @@ int intel_panel_compute_config(struct intel_connector *connector,
 	 * Assume that we shouldn't muck about with the
 	 * timings if they don't land in the VRR range.
 	 */
-	is_vrr = is_in_vrr_range(connector, vrefresh) &&
-		is_in_vrr_range(connector, fixed_mode_vrefresh);
+	is_vrr = intel_vrr_is_in_range(connector, vrefresh) &&
+		intel_vrr_is_in_range(connector, fixed_mode_vrefresh);
 
 	if (!is_vrr) {
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 88e4759b538b..6ef782538337 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -42,6 +42,15 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
 }
 
+bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh)
+{
+	const struct drm_display_info *info = &connector->base.display_info;
+
+	return intel_vrr_is_capable(connector) &&
+		vrefresh >= info->monitor_range.min_vfreq &&
+		vrefresh <= info->monitor_range.max_vfreq;
+}
+
 void
 intel_vrr_check_modeset(struct intel_atomic_state *state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index de16960c4929..89937858200d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -14,6 +14,7 @@ struct intel_connector;
 struct intel_crtc_state;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
+bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-- 
2.41.0

