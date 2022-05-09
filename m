Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C3A51FC12
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 14:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4586510EEE5;
	Mon,  9 May 2022 12:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 661BB10EEE0;
 Mon,  9 May 2022 12:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652097884; x=1683633884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kOyXWZinlsi4z3i9F7AOiRllbEsMh4HdMJuUcE6zefs=;
 b=ew+rAQZtegbzspzE1UIUmuZLFt1yelpd4wpJPkHC4U6wC0fKcj1PvD/D
 NUX3vlHkrk6SEIuEmIbLPKVy2xmQQHOfQsFZtlTxWUu5ORlfSPeJGi9wi
 eDhV8VseViAiCD3DoBtRXCo8J/gZX4/evp8DPvmiCHoSTRoe0hYtPitY5
 3vIIXP3w0CklcFAhXn3RxANBfOMqi2VNok7OPXIKFGfCUI1MIi5M2iNw4
 nbeRwCh+psH2HBLIGo9NCqnr8/jyszB863FjVkddE5YFQKuE1/MtLD0JT
 Gas+zYKpbr6IR/hubZdWCrCKRQdj9bh6ViiecUGSuAfW5uHckx7YyxgRQ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="256563815"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="256563815"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 05:04:43 -0700
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="550993103"
Received: from csawicki-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.129.3])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 05:04:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  9 May 2022 15:03:13 +0300
Message-Id: <aac7dd14ce8c266491e9dfae12cad00fecdcd2e3.1652097712.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1652097712.git.jani.nikula@intel.com>
References: <cover.1652097712.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/25] drm/edid: convert mode_in_range() and
 drm_monitor_supports_rb() to drm_edid
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We'll need to propagate drm_edid everywhere.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 27 ++++++++++++++-------------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index bea8f33c58ad..364949e146a9 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2645,16 +2645,16 @@ is_rb(const struct detailed_timing *descriptor, void *data)
 
 /* EDID 1.4 defines this explicitly.  For EDID 1.3, we guess, badly. */
 static bool
-drm_monitor_supports_rb(const struct edid *edid)
+drm_monitor_supports_rb(const struct drm_edid *drm_edid)
 {
-	if (edid->revision >= 4) {
+	if (drm_edid->edid->revision >= 4) {
 		bool ret = false;
 
-		drm_for_each_detailed_block(edid, is_rb, &ret);
+		drm_for_each_detailed_block(drm_edid->edid, is_rb, &ret);
 		return ret;
 	}
 
-	return ((edid->input & DRM_EDID_INPUT_DIGITAL) != 0);
+	return ((drm_edid->edid->input & DRM_EDID_INPUT_DIGITAL) != 0);
 }
 
 static void
@@ -2838,7 +2838,7 @@ static struct drm_display_mode *drm_mode_std(struct drm_connector *connector,
 	}
 
 	/* check whether it can be found in default mode table */
-	if (drm_monitor_supports_rb(drm_edid->edid)) {
+	if (drm_monitor_supports_rb(drm_edid)) {
 		mode = drm_mode_find_dmt(dev, hsize, vsize, vrefresh_rate,
 					 true);
 		if (mode)
@@ -3077,10 +3077,11 @@ range_pixel_clock(const struct edid *edid, const u8 *t)
 	return t[9] * 10000 + 5001;
 }
 
-static bool
-mode_in_range(const struct drm_display_mode *mode, const struct edid *edid,
-	      const struct detailed_timing *timing)
+static bool mode_in_range(const struct drm_display_mode *mode,
+			  const struct drm_edid *drm_edid,
+			  const struct detailed_timing *timing)
 {
+	const struct edid *edid = drm_edid->edid;
 	u32 max_clock;
 	const u8 *t = (const u8 *)timing;
 
@@ -3099,7 +3100,7 @@ mode_in_range(const struct drm_display_mode *mode, const struct edid *edid,
 		if (t[13] && mode->hdisplay > 8 * (t[13] + (256 * (t[12]&0x3))))
 			return false;
 
-	if (mode_is_rb(mode) && !drm_monitor_supports_rb(edid))
+	if (mode_is_rb(mode) && !drm_monitor_supports_rb(drm_edid))
 		return false;
 
 	return true;
@@ -3132,7 +3133,7 @@ static int drm_dmt_modes_for_range(struct drm_connector *connector,
 	struct drm_device *dev = connector->dev;
 
 	for (i = 0; i < ARRAY_SIZE(drm_dmt_modes); i++) {
-		if (mode_in_range(drm_dmt_modes + i, drm_edid->edid, timing) &&
+		if (mode_in_range(drm_dmt_modes + i, drm_edid, timing) &&
 		    valid_inferred_mode(connector, drm_dmt_modes + i)) {
 			newmode = drm_mode_duplicate(dev, &drm_dmt_modes[i]);
 			if (newmode) {
@@ -3174,7 +3175,7 @@ static int drm_gtf_modes_for_range(struct drm_connector *connector,
 			return modes;
 
 		drm_mode_fixup_1366x768(newmode);
-		if (!mode_in_range(newmode, drm_edid->edid, timing) ||
+		if (!mode_in_range(newmode, drm_edid, timing) ||
 		    !valid_inferred_mode(connector, newmode)) {
 			drm_mode_destroy(dev, newmode);
 			continue;
@@ -3194,7 +3195,7 @@ static int drm_cvt_modes_for_range(struct drm_connector *connector,
 	int i, modes = 0;
 	struct drm_display_mode *newmode;
 	struct drm_device *dev = connector->dev;
-	bool rb = drm_monitor_supports_rb(drm_edid->edid);
+	bool rb = drm_monitor_supports_rb(drm_edid);
 
 	for (i = 0; i < ARRAY_SIZE(extra_modes); i++) {
 		const struct minimode *m = &extra_modes[i];
@@ -3204,7 +3205,7 @@ static int drm_cvt_modes_for_range(struct drm_connector *connector,
 			return modes;
 
 		drm_mode_fixup_1366x768(newmode);
-		if (!mode_in_range(newmode, drm_edid->edid, timing) ||
+		if (!mode_in_range(newmode, drm_edid, timing) ||
 		    !valid_inferred_mode(connector, newmode)) {
 			drm_mode_destroy(dev, newmode);
 			continue;
-- 
2.30.2

