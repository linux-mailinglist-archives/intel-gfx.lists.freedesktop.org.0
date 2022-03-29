Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A004EAFE7
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:08:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555B110E8C6;
	Tue, 29 Mar 2022 15:08:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8FD110EC01
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566483; x=1680102483;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UTef0DOJD/H/3+29A+vt7W31PxmyQ97qSCvD+3uisbU=;
 b=lIiNNPDRuVOASb6LnKcaQvAzXpxkAuu2mbWwxo6sctaEZig1ZgqXeJBK
 Qw3XzMY3um7EjSGoZTYUAzmg/cBxyYYQbYdZ2h7yQqQhEmGjMhFWCzn8J
 iQKBJ+1WtECvurkjMF9j1jghJyHIr1oPVKAZtZJFYN6/Ys+RfHy3JX9jQ
 QBfoFS20+kO3hT9x70o0svnX72tQtXP0yavAT9gqD5pXeD9A2S8legkb3
 bueEcsoG7cgtJybYb63+kcsjGYxq70FEH9zryLI1T5uqav2t1/C5PVQgC
 X8SoRgU01UTVHrfnj3PbCpBcoMJ7BbF02pfqgM0urgrCKt+ghv5WEETI/ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="345707141"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="345707141"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:08:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="518979381"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga002.jf.intel.com with SMTP; 29 Mar 2022 08:08:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:08:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:37 +0300
Message-Id: <20220329150742.31783-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
References: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/11] drm/i915: Stop duplicating the EDID
 fixed/downclock modes
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

Instead of duplicating the fixed/downclock modes we can just grab
the originals straight from the probed_modes list and keep them.
The next .get_modes() is going to repopulate the probed_modes list
anyway so whatever we leave there is just going to sit around until
that time wasting memory. In fact let's clear out the probed modes
list entirely to make sure we get 100% consistent behaviour starting
already from the very first real .get_modes().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 66 ++++++++++------------
 1 file changed, 31 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 3b1da9aa023f..5d08b2bf27ec 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -164,8 +164,7 @@ static void intel_panel_add_edid_downclock_mode(struct intel_connector *connecto
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_preferred_fixed_mode(connector);
-	const struct drm_display_mode *scan, *best_mode = NULL;
-	struct drm_display_mode *downclock_mode;
+	struct drm_display_mode *scan, *best_mode = NULL;
 	int best_clock = fixed_mode->clock;
 
 	list_for_each_entry(scan, &connector->base.probed_modes, head) {
@@ -190,58 +189,54 @@ static void intel_panel_add_edid_downclock_mode(struct intel_connector *connecto
 	if (!best_mode)
 		return;
 
-	downclock_mode = drm_mode_duplicate(&dev_priv->drm, best_mode);
-	if (!downclock_mode)
-		return;
-
 	drm_dbg_kms(&dev_priv->drm,
-		    "[CONNECTOR:%d:%s] using downclock mode from EDID: " DRM_MODE_FMT "\n",
+		    "[CONNECTOR:%d:%s] using EDID downclock mode: " DRM_MODE_FMT "\n",
 		    connector->base.base.id, connector->base.name,
-		    DRM_MODE_ARG(downclock_mode));
+		    DRM_MODE_ARG(best_mode));
 
-	list_add_tail(&downclock_mode->head, &connector->panel.fixed_modes);
+	list_move_tail(&best_mode->head, &connector->panel.fixed_modes);
 }
 
 static void intel_panel_add_edid_fixed_mode(struct intel_connector *connector)
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-	const struct drm_display_mode *scan;
-	struct drm_display_mode *fixed_mode;
+	struct drm_display_mode *scan, *fixed_mode = NULL;
 
 	if (list_empty(&connector->base.probed_modes))
 		return;
 
-	/* prefer fixed mode from EDID if available */
+	/* make sure the preferred mode is first */
 	list_for_each_entry(scan, &connector->base.probed_modes, head) {
-		if ((scan->type & DRM_MODE_TYPE_PREFERRED) == 0)
-			continue;
-
-		fixed_mode = drm_mode_duplicate(&dev_priv->drm, scan);
-		if (!fixed_mode)
-			return;
-
-		drm_dbg_kms(&dev_priv->drm,
-			    "[CONNECTOR:%d:%s] using preferred mode from EDID: " DRM_MODE_FMT "\n",
-			    connector->base.base.id, connector->base.name,
-			    DRM_MODE_ARG(fixed_mode));
-
-		list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
-		return;
+		if (scan->type & DRM_MODE_TYPE_PREFERRED) {
+			fixed_mode = scan;
+			break;
+		}
 	}
 
-	scan = list_first_entry(&connector->base.probed_modes,
-				typeof(*scan), head);
-	fixed_mode = drm_mode_duplicate(&dev_priv->drm, scan);
 	if (!fixed_mode)
-		return;
+		fixed_mode = list_first_entry(&connector->base.probed_modes,
+					      typeof(*fixed_mode), head);
+
+	drm_dbg_kms(&dev_priv->drm,
+		    "[CONNECTOR:%d:%s] using %s EDID fixed mode: " DRM_MODE_FMT "\n",
+		    connector->base.base.id, connector->base.name,
+		    fixed_mode->type & DRM_MODE_TYPE_PREFERRED ? "preferred" : "first",
+		    DRM_MODE_ARG(fixed_mode));
 
 	fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
-	drm_dbg_kms(&dev_priv->drm,
-		    "[CONNECTOR:%d:%s] using first mode from EDID: " DRM_MODE_FMT "\n",
-		    connector->base.base.id, connector->base.name,
-		    DRM_MODE_ARG(fixed_mode));
 
-	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
+	list_move_tail(&fixed_mode->head, &connector->panel.fixed_modes);
+}
+
+static void intel_panel_destroy_probed_modes(struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_display_mode *mode, *next;
+
+	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, head) {
+		list_del(&mode->head);
+		drm_mode_destroy(&i915->drm, mode);
+	}
 }
 
 void intel_panel_add_edid_fixed_modes(struct intel_connector *connector, bool has_drrs)
@@ -249,6 +244,7 @@ void intel_panel_add_edid_fixed_modes(struct intel_connector *connector, bool ha
 	intel_panel_add_edid_fixed_mode(connector);
 	if (intel_panel_preferred_fixed_mode(connector) && has_drrs)
 		intel_panel_add_edid_downclock_mode(connector);
+	intel_panel_destroy_probed_modes(connector);
 }
 
 static void intel_panel_add_fixed_mode(struct intel_connector *connector,
-- 
2.34.1

