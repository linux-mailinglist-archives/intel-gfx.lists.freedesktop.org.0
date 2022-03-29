Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCAF4EAFF0
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:08:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3B3610F0B9;
	Tue, 29 Mar 2022 15:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387B110F0B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566509; x=1680102509;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6DJoNxy+kmYN839ZluqpM76FzVGlzE7awsUGgBxaDrU=;
 b=nM0YnY4AlqLSH44rgVTAV7hMYDY+cfDu+knNEQF3ShsnUFXLnUiCr/zC
 ANt+CstYG+MGuhPAbLDj+lo/1IjpAXQxo63Twb9W8CP0uib07cKqqVFwv
 VWzbo3N963wMRudOGKqU5wZnqeqXK8rI1wcAXTPiwCa/4ADlQJsC7tMg8
 j2Ls0cGXx/nkM107c7C717E3mbYBGK4T5SQA/+dgYmO9HJvcLZw9s7UIN
 9bKinysA8Mqi2c38otaWHuHOfu0+Ygibg+ZesvluzsbnK5gVKxsGynP6V
 IaMvc1zrG/Dk1jq5juYmHAmHn+dSJvwwbOiQORi60AE0JJYWPGHHbVKcN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="256849218"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="256849218"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:08:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="639356888"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by FMSMGA003.fm.intel.com with SMTP; 29 Mar 2022 08:08:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:08:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:38 +0300
Message-Id: <20220329150742.31783-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
References: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: Allow an arbitrary number of
 downclock modes
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

Remove the "two fixed modes only" limit and grab as many
downclock modes from the EDID as we can find.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 44 +++++++---------------
 1 file changed, 13 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 5d08b2bf27ec..d359c8050fdc 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -159,42 +159,24 @@ static bool is_downclock_mode(const struct drm_display_mode *downclock_mode,
 		downclock_mode->clock < fixed_mode->clock;
 }
 
-static void intel_panel_add_edid_downclock_mode(struct intel_connector *connector)
+static void intel_panel_add_edid_downclock_modes(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_preferred_fixed_mode(connector);
-	struct drm_display_mode *scan, *best_mode = NULL;
-	int best_clock = fixed_mode->clock;
+	struct drm_display_mode *mode, *next;
 
-	list_for_each_entry(scan, &connector->base.probed_modes, head) {
-		/*
-		 * If one mode has the same resolution with the fixed_panel
-		 * mode while they have the different refresh rate, it means
-		 * that the reduced downclock is found. In such
-		 * case we can set the different FPx0/1 to dynamically select
-		 * between low and high frequency.
-		 */
-		if (is_downclock_mode(scan, fixed_mode) &&
-		    scan->clock < best_clock) {
-			/*
-			 * The downclock is already found. But we
-			 * expect to find the lower downclock.
-			 */
-			best_clock = scan->clock;
-			best_mode = scan;
-		}
+	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, head) {
+		if (!is_downclock_mode(mode, fixed_mode))
+			continue;
+
+		drm_dbg_kms(&dev_priv->drm,
+			    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
+			    connector->base.base.id, connector->base.name,
+			    DRM_MODE_ARG(mode));
+
+		list_move_tail(&mode->head, &connector->panel.fixed_modes);
 	}
-
-	if (!best_mode)
-		return;
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
-		    connector->base.base.id, connector->base.name,
-		    DRM_MODE_ARG(best_mode));
-
-	list_move_tail(&best_mode->head, &connector->panel.fixed_modes);
 }
 
 static void intel_panel_add_edid_fixed_mode(struct intel_connector *connector)
@@ -243,7 +225,7 @@ void intel_panel_add_edid_fixed_modes(struct intel_connector *connector, bool ha
 {
 	intel_panel_add_edid_fixed_mode(connector);
 	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
-		intel_panel_add_edid_downclock_mode(connector);
+		intel_panel_add_edid_downclock_modes(connector);
 	intel_panel_destroy_probed_modes(connector);
 }
 
-- 
2.34.1

