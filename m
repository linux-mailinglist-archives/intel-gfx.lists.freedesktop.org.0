Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 816764ED880
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B0A10F2F7;
	Thu, 31 Mar 2022 11:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 733EE10F2F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:28:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648726136; x=1680262136;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=oQU1afBMopH44Vfv/nFzVFVaoxHT7GORKRJwLvtR6MU=;
 b=ed3ZgGiPIxtj9Qxpf39YId6OftnUrDqcLXVDY+qfO5tpYBjCilbdPPKd
 ZD8E1bYdKruCDhI/0GXGFlKR17s2eTT2AB2WLfD8tQ/iLLCPN4tHnSEou
 wwVkr27bmUqZTKMQ5tOESMFrgu732LpIFg+U0eL29rKybymkTaFos9ppu
 HcyFY29/fJyjO+JglB8oFkjEXiccI0Mazavs5zbCnOR+s2DagF3xd/YUk
 p2C0JbBbctyHIFlK33WMwBGUikL2Jvs9d25RhsADsrtmGBqHLId3z3GS9
 C+ycNSf4apBHi7Fg4g8DnlHMtvLOKy6vUY+ccBce+UohKVxH6JBKAqXMS Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="257383042"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="257383042"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:28:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="547286626"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga007.jf.intel.com with SMTP; 31 Mar 2022 04:28:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:28:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 14:28:18 +0300
Message-Id: <20220331112822.11462-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/11] drm/i915: Allow an arbitrary number of
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
 drivers/gpu/drm/i915/display/intel_panel.c | 42 +++++++---------------
 1 file changed, 12 insertions(+), 30 deletions(-)

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
-
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
-	}
+	struct drm_display_mode *mode, *next;
 
-	if (!best_mode)
-		return;
+	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, head) {
+		if (!is_downclock_mode(mode, fixed_mode))
+			continue;
 
-	drm_dbg_kms(&dev_priv->drm,
-		    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
-		    connector->base.base.id, connector->base.name,
-		    DRM_MODE_ARG(best_mode));
+		drm_dbg_kms(&dev_priv->drm,
+			    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
+			    connector->base.base.id, connector->base.name,
+			    DRM_MODE_ARG(mode));
 
-	list_move_tail(&best_mode->head, &connector->panel.fixed_modes);
+		list_move_tail(&mode->head, &connector->panel.fixed_modes);
+	}
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

