Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B61EA4ED87D
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:28:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2DD510F30B;
	Thu, 31 Mar 2022 11:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E0C10F30B
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648726122; x=1680262122;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=P7PmGhTh3lLnwqIT7hapjJjqF3J92ku93h4AGGCVPrw=;
 b=V90PXZDxQJclEnQ7v/UUt33lJ030yYLVatlPoKvvCG3CAb0sbl4oGqqq
 JGgNf8QxwQ1QagXU41pFqiTSHvAzrHNio7hI5ryoX/fwPGQyA63axXlGv
 vsn/XoMPxzl7384VNuxskB4r5Pm1sF3mPdzyExU+so5vKZPFvz/z3Flwj
 1B7PkFgt/UG6ZT3yKHSeYIIQatTzXeQ368J+T572btofPNC44GHu5t1pz
 OrT3jG5HEVk7Le1JrSwZRrPce0UPAcNEWzG8nxSjZC744TrpFpfPqA2Dr
 TIidKC91ykLMCZto1I9V6z7IQSB/ibXS1HHhZafz/lLGWaIOYZWO0F+VH Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="241953375"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="241953375"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:28:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566393235"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga008.jf.intel.com with SMTP; 31 Mar 2022 04:28:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:28:39 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 14:28:17 +0300
Message-Id: <20220331112822.11462-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/11] drm/i915: Stop duplicating the EDID
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
 drivers/gpu/drm/i915/display/intel_panel.c | 62 ++++++++++------------
 1 file changed, 29 insertions(+), 33 deletions(-)

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
 
-	fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
 	drm_dbg_kms(&dev_priv->drm,
-		    "[CONNECTOR:%d:%s] using first mode from EDID: " DRM_MODE_FMT "\n",
+		    "[CONNECTOR:%d:%s] using %s EDID fixed mode: " DRM_MODE_FMT "\n",
 		    connector->base.base.id, connector->base.name,
+		    fixed_mode->type & DRM_MODE_TYPE_PREFERRED ? "preferred" : "first",
 		    DRM_MODE_ARG(fixed_mode));
 
-	list_add_tail(&fixed_mode->head, &connector->panel.fixed_modes);
+	fixed_mode->type |= DRM_MODE_TYPE_PREFERRED;
+
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

