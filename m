Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0686368EC11
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 10:49:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33A0210E730;
	Wed,  8 Feb 2023 09:49:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 837CC10E730
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 09:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675849770; x=1707385770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4S1IKf5fYMlVwRFzTbEoitUJTKABfW7Giiioras+4lo=;
 b=WGbXaB9zN1b+vh3zzhcAyGJ2TidWW3gjR5+3gSmugFMHRHl6IqWFsMft
 LfALsfQPYqXnH5hLB+7NcJgZLA9Llp/GEta/FgMNYppZaBQ+f3RqMSTOP
 MsEBpXMF67QntkxBMDlaPPIFGiTPREIdDdOe62q+Lx07yXD/wU1eNWwN8
 V/x16afFl1R9cfWOkPbIr3qsI6jkfum45WwT9WLLBgF7/oVrDW6DIl9El
 vTr2bCdiTAHhjMhseEjbewGkU1pHY/YFa2lJdnOUeV5WAqKGqXthJ5vmF
 mBPZEgw8pVrvbycdB9fXmsRxGkpvTR48ad5UtxLSMGI2SuqoDmtCbxnLZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="357146056"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="357146056"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="775944456"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="775944456"
Received: from joergber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.82])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 11:48:44 +0200
Message-Id: <0fff191f465704ba277f8e37142e3ba58a9048bd.1675849634.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675849634.git.jani.nikula@intel.com>
References: <cover.1675849634.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/10] drm/i915/wm:
 s/intel_wm_num_levels/g4x_wm_num_levels/
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rename intel_wm_num_levels() to g4x_wm_num_levels() to make the name
available for generic watermark code.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 889c901aa3e7..1247a23e29af 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -592,7 +592,7 @@ static bool is_enabling(int old, int new, int threshold)
 	return old < threshold && new >= threshold;
 }
 
-static int intel_wm_num_levels(struct drm_i915_private *dev_priv)
+static int g4x_wm_num_levels(struct drm_i915_private *dev_priv)
 {
 	return dev_priv->display.wm.max_level + 1;
 }
@@ -936,7 +936,7 @@ static bool g4x_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	bool dirty = false;
 
-	for (; level < intel_wm_num_levels(dev_priv); level++) {
+	for (; level < g4x_wm_num_levels(dev_priv); level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 
 		dirty |= raw->plane[plane_id] != value;
@@ -955,7 +955,7 @@ static bool g4x_raw_fbc_wm_set(struct intel_crtc_state *crtc_state,
 	/* NORMAL level doesn't have an FBC watermark */
 	level = max(level, G4X_WM_LEVEL_SR);
 
-	for (; level < intel_wm_num_levels(dev_priv); level++) {
+	for (; level < g4x_wm_num_levels(dev_priv); level++) {
 		struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];
 
 		dirty |= raw->fbc != value;
@@ -974,7 +974,7 @@ static bool g4x_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	int num_levels = intel_wm_num_levels(to_i915(plane->base.dev));
+	int num_levels = g4x_wm_num_levels(to_i915(plane->base.dev));
 	enum plane_id plane_id = plane->id;
 	bool dirty = false;
 	int level;
@@ -1534,7 +1534,7 @@ static void vlv_invalidate_wms(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	for (; level < intel_wm_num_levels(dev_priv); level++) {
+	for (; level < g4x_wm_num_levels(dev_priv); level++) {
 		enum plane_id plane_id;
 
 		for_each_plane_id_on_crtc(crtc, plane_id)
@@ -1561,7 +1561,7 @@ static bool vlv_raw_plane_wm_set(struct intel_crtc_state *crtc_state,
 				 int level, enum plane_id plane_id, u16 value)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	int num_levels = intel_wm_num_levels(dev_priv);
+	int num_levels = g4x_wm_num_levels(dev_priv);
 	bool dirty = false;
 
 	for (; level < num_levels; level++) {
@@ -1580,7 +1580,7 @@ static bool vlv_raw_plane_wm_compute(struct intel_crtc_state *crtc_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum plane_id plane_id = plane->id;
-	int num_levels = intel_wm_num_levels(to_i915(plane->base.dev));
+	int num_levels = g4x_wm_num_levels(to_i915(plane->base.dev));
 	int level;
 	bool dirty = false;
 
@@ -1648,7 +1648,7 @@ static int _vlv_compute_pipe_wm(struct intel_crtc_state *crtc_state)
 	int level;
 
 	/* initially allow all levels */
-	wm_state->num_levels = intel_wm_num_levels(dev_priv);
+	wm_state->num_levels = g4x_wm_num_levels(dev_priv);
 	/*
 	 * Note that enabling cxsr with no primary/sprite planes
 	 * enabled can wedge the pipe. Hence we only allow cxsr
@@ -3613,7 +3613,7 @@ static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 		struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
 		enum plane_id plane_id = plane->id;
-		int level, num_levels = intel_wm_num_levels(dev_priv);
+		int level, num_levels = g4x_wm_num_levels(dev_priv);
 
 		if (plane_state->uapi.visible)
 			continue;
@@ -3768,7 +3768,7 @@ static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 		struct intel_plane_state *plane_state =
 			to_intel_plane_state(plane->base.state);
 		enum plane_id plane_id = plane->id;
-		int level, num_levels = intel_wm_num_levels(dev_priv);
+		int level, num_levels = g4x_wm_num_levels(dev_priv);
 
 		if (plane_state->uapi.visible)
 			continue;
-- 
2.34.1

