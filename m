Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6771E65D048
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 11:06:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEF6E10E551;
	Wed,  4 Jan 2023 10:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B508B10E54F;
 Wed,  4 Jan 2023 10:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672826799; x=1704362799;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uk3NrwGRtX+Uk//1PHtlbhdpIH2v9aKPVG+cMTKKL6A=;
 b=TxecHXanFhocp9KzFbC+fus/Cm3LYBMAZr3zdQWZzOVgSx3r1YNZDEBU
 Cqk1un2LJfoFnavlxeKYE3uKXFsENkbSddFI55BxTzFOkw8Y9WLHx6xKH
 fR6LLlVWEFLbxm57Z0E5uzcmjPluEEYcN8xkLED80UYZK/FUiz7cz/aLS
 Lop5/aOCvM2xkdvOsQDEeOFOuCar8Km7lvoBE7oLrtgwosnS9qUl1z6mZ
 bSam1GXj6Uaesv3qmOZ0EiBHV9d4JYAxpX1SJeiDe3RspiMeNn7pAPuXM
 XyVXKCUBifLqmeEvTd2TsSDGw/0arAlzuycUVPNv3Gyg7I2uLlPg173ha A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="301588880"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="301588880"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 02:06:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="762627714"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="762627714"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.25.63])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 02:06:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  4 Jan 2023 12:05:28 +0200
Message-Id: <d55049dd9b2e48e63103f2dfa49bc9b25dd57f82.1672826282.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1672826282.git.jani.nikula@intel.com>
References: <cover.1672826282.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 13/22] drm/edid: stop passing quirks around
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

Now that quirks are stored in display info, we can just look them up
using the connector instead of having to pass them around.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 34 +++++++++++++++-------------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index fd8d056e38c1..6bc0432046c8 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -96,7 +96,6 @@ struct detailed_mode_closure {
 	struct drm_connector *connector;
 	const struct drm_edid *drm_edid;
 	bool preferred;
-	u32 quirks;
 	int modes;
 };
 
@@ -2887,9 +2886,9 @@ static u32 edid_get_quirks(const struct drm_edid *drm_edid)
  * Walk the mode list for connector, clearing the preferred status on existing
  * modes and setting it anew for the right mode ala quirks.
  */
-static void edid_fixup_preferred(struct drm_connector *connector,
-				 u32 quirks)
+static void edid_fixup_preferred(struct drm_connector *connector)
 {
+	const struct drm_display_info *info = &connector->display_info;
 	struct drm_display_mode *t, *cur_mode, *preferred_mode;
 	int target_refresh = 0;
 	int cur_vrefresh, preferred_vrefresh;
@@ -2897,9 +2896,9 @@ static void edid_fixup_preferred(struct drm_connector *connector,
 	if (list_empty(&connector->probed_modes))
 		return;
 
-	if (quirks & EDID_QUIRK_PREFER_LARGE_60)
+	if (info->quirks & EDID_QUIRK_PREFER_LARGE_60)
 		target_refresh = 60;
-	if (quirks & EDID_QUIRK_PREFER_LARGE_75)
+	if (info->quirks & EDID_QUIRK_PREFER_LARGE_75)
 		target_refresh = 75;
 
 	preferred_mode = list_first_entry(&connector->probed_modes,
@@ -3401,9 +3400,9 @@ drm_mode_do_interlace_quirk(struct drm_display_mode *mode,
  */
 static struct drm_display_mode *drm_mode_detailed(struct drm_connector *connector,
 						  const struct drm_edid *drm_edid,
-						  const struct detailed_timing *timing,
-						  u32 quirks)
+						  const struct detailed_timing *timing)
 {
+	const struct drm_display_info *info = &connector->display_info;
 	struct drm_device *dev = connector->dev;
 	struct drm_display_mode *mode;
 	const struct detailed_pixel_timing *pt = &timing->data.pixel_data;
@@ -3437,7 +3436,7 @@ static struct drm_display_mode *drm_mode_detailed(struct drm_connector *connecto
 		return NULL;
 	}
 
-	if (quirks & EDID_QUIRK_FORCE_REDUCED_BLANKING) {
+	if (info->quirks & EDID_QUIRK_FORCE_REDUCED_BLANKING) {
 		mode = drm_cvt_mode(dev, hactive, vactive, 60, true, false, false);
 		if (!mode)
 			return NULL;
@@ -3449,7 +3448,7 @@ static struct drm_display_mode *drm_mode_detailed(struct drm_connector *connecto
 	if (!mode)
 		return NULL;
 
-	if (quirks & EDID_QUIRK_135_CLOCK_TOO_HIGH)
+	if (info->quirks & EDID_QUIRK_135_CLOCK_TOO_HIGH)
 		mode->clock = 1088 * 10;
 	else
 		mode->clock = le16_to_cpu(timing->pixel_clock) * 10;
@@ -3472,7 +3471,7 @@ static struct drm_display_mode *drm_mode_detailed(struct drm_connector *connecto
 
 	drm_mode_do_interlace_quirk(mode, pt);
 
-	if (quirks & EDID_QUIRK_DETAILED_SYNC_PP) {
+	if (info->quirks & EDID_QUIRK_DETAILED_SYNC_PP) {
 		mode->flags |= DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC;
 	} else {
 		mode->flags |= (pt->misc & DRM_EDID_PT_HSYNC_POSITIVE) ?
@@ -3485,12 +3484,12 @@ static struct drm_display_mode *drm_mode_detailed(struct drm_connector *connecto
 	mode->width_mm = pt->width_mm_lo | (pt->width_height_mm_hi & 0xf0) << 4;
 	mode->height_mm = pt->height_mm_lo | (pt->width_height_mm_hi & 0xf) << 8;
 
-	if (quirks & EDID_QUIRK_DETAILED_IN_CM) {
+	if (info->quirks & EDID_QUIRK_DETAILED_IN_CM) {
 		mode->width_mm *= 10;
 		mode->height_mm *= 10;
 	}
 
-	if (quirks & EDID_QUIRK_DETAILED_USE_MAXIMUM_SIZE) {
+	if (info->quirks & EDID_QUIRK_DETAILED_USE_MAXIMUM_SIZE) {
 		mode->width_mm = drm_edid->edid->width_cm * 10;
 		mode->height_mm = drm_edid->edid->height_cm * 10;
 	}
@@ -4003,8 +4002,7 @@ do_detailed_mode(const struct detailed_timing *timing, void *c)
 		return;
 
 	newmode = drm_mode_detailed(closure->connector,
-				    closure->drm_edid, timing,
-				    closure->quirks);
+				    closure->drm_edid, timing);
 	if (!newmode)
 		return;
 
@@ -4027,15 +4025,13 @@ do_detailed_mode(const struct detailed_timing *timing, void *c)
  * add_detailed_modes - Add modes from detailed timings
  * @connector: attached connector
  * @drm_edid: EDID block to scan
- * @quirks: quirks to apply
  */
 static int add_detailed_modes(struct drm_connector *connector,
-			      const struct drm_edid *drm_edid, u32 quirks)
+			      const struct drm_edid *drm_edid)
 {
 	struct detailed_mode_closure closure = {
 		.connector = connector,
 		.drm_edid = drm_edid,
-		.quirks = quirks,
 	};
 
 	if (drm_edid->edid->revision >= 4)
@@ -6684,7 +6680,7 @@ static int _drm_edid_connector_update(struct drm_connector *connector,
 	 *
 	 * XXX order for additional mode types in extension blocks?
 	 */
-	num_modes += add_detailed_modes(connector, drm_edid, info->quirks);
+	num_modes += add_detailed_modes(connector, drm_edid);
 	num_modes += add_cvt_modes(connector, drm_edid);
 	num_modes += add_standard_modes(connector, drm_edid);
 	num_modes += add_established_modes(connector, drm_edid);
@@ -6695,7 +6691,7 @@ static int _drm_edid_connector_update(struct drm_connector *connector,
 		num_modes += add_inferred_modes(connector, drm_edid);
 
 	if (info->quirks & (EDID_QUIRK_PREFER_LARGE_60 | EDID_QUIRK_PREFER_LARGE_75))
-		edid_fixup_preferred(connector, info->quirks);
+		edid_fixup_preferred(connector);
 
 	if (info->quirks & EDID_QUIRK_FORCE_6BPC)
 		info->bpc = 6;
-- 
2.34.1

