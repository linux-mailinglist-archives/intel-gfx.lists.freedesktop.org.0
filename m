Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 895E255457B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 12:59:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D0910E4AD;
	Wed, 22 Jun 2022 10:59:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D4D10E425;
 Wed, 22 Jun 2022 10:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655895577; x=1687431577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bbB51acTGPOWA7xvjKqLHwKkMncyJceYVR8Xxzw/U/4=;
 b=IJMzCmnNCvZh4uQFKg9qzL5RVnsx5kkMktbtGIjz+n1QYfZGUCWnNtrv
 xCMjpD1tfD+7bWUaKlgDGGRQA8zcUmXNwrIVjH1/HXSLzW/A/In86oYMW
 HJr0z92v4FiwmWcdsz/p65j0g2jExMBGfrmQFPHmnfQs79gN7VA9gXxG9
 NYcIyCpWb6EFme2jYuBZ1VWTAj7pFu2hHKVomiY4cf04uyKsQrCnx9C8Q
 cbC44Tmj+G2nArDZz58BHsq7vP5/cUfYx9StbllZO7OHEsvBptR7vjZWr
 HIv6mxar3DfaKZAzqehZRzTExhCNfG51n8FbJ3AmChl7UQSG4I0/yWkMU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10385"; a="263420348"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="263420348"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 03:59:36 -0700
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="592136705"
Received: from snowacki-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.111])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 03:59:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 22 Jun 2022 13:59:15 +0300
Message-Id: <205b3b8905375506dc9f508fe18652c226cc6a50.1655895388.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655895388.git.jani.nikula@intel.com>
References: <cover.1655895388.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/13] drm/edid: move
 drm_connector_update_edid_property() to drm_edid.c
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

The function needs access to drm_edid.c internals more than
drm_connector.c. We can make drm_reset_display_info(),
drm_add_display_info() and drm_update_tile_info() static. There will be
more benefits with follow-up struct drm_edid refactoring.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_connector.c     | 74 -------------------------
 drivers/gpu/drm/drm_crtc_internal.h |  3 -
 drivers/gpu/drm/drm_edid.c          | 86 +++++++++++++++++++++++++++--
 3 files changed, 81 insertions(+), 82 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 28ea0f8196b9..2b9a8972eff1 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -2078,80 +2078,6 @@ int drm_connector_set_tile_property(struct drm_connector *connector)
 }
 EXPORT_SYMBOL(drm_connector_set_tile_property);
 
-/**
- * drm_connector_update_edid_property - update the edid property of a connector
- * @connector: drm connector
- * @edid: new value of the edid property
- *
- * This function creates a new blob modeset object and assigns its id to the
- * connector's edid property.
- * Since we also parse tile information from EDID's displayID block, we also
- * set the connector's tile property here. See drm_connector_set_tile_property()
- * for more details.
- *
- * Returns:
- * Zero on success, negative errno on failure.
- */
-int drm_connector_update_edid_property(struct drm_connector *connector,
-				       const struct edid *edid)
-{
-	struct drm_device *dev = connector->dev;
-	size_t size = 0;
-	int ret;
-	const struct edid *old_edid;
-
-	/* ignore requests to set edid when overridden */
-	if (connector->override_edid)
-		return 0;
-
-	if (edid)
-		size = EDID_LENGTH * (1 + edid->extensions);
-
-	/* Set the display info, using edid if available, otherwise
-	 * resetting the values to defaults. This duplicates the work
-	 * done in drm_add_edid_modes, but that function is not
-	 * consistently called before this one in all drivers and the
-	 * computation is cheap enough that it seems better to
-	 * duplicate it rather than attempt to ensure some arbitrary
-	 * ordering of calls.
-	 */
-	if (edid)
-		drm_add_display_info(connector, edid);
-	else
-		drm_reset_display_info(connector);
-
-	drm_update_tile_info(connector, edid);
-
-	if (connector->edid_blob_ptr) {
-		old_edid = (const struct edid *)connector->edid_blob_ptr->data;
-		if (old_edid) {
-			if (!drm_edid_are_equal(edid, old_edid)) {
-				DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Edid was changed.\n",
-					      connector->base.id, connector->name);
-
-				connector->epoch_counter += 1;
-				DRM_DEBUG_KMS("Updating change counter to %llu\n",
-					      connector->epoch_counter);
-			}
-		}
-	}
-
-	drm_object_property_set_value(&connector->base,
-				      dev->mode_config.non_desktop_property,
-				      connector->display_info.non_desktop);
-
-	ret = drm_property_replace_global_blob(dev,
-					       &connector->edid_blob_ptr,
-					       size,
-					       edid,
-					       &connector->base,
-					       dev->mode_config.edid_property);
-	if (ret)
-		return ret;
-	return drm_connector_set_tile_property(connector);
-}
-EXPORT_SYMBOL(drm_connector_update_edid_property);
-
 /**
  * drm_connector_set_link_status_property - Set link status property of a connector
  * @connector: drm connector
diff --git a/drivers/gpu/drm/drm_crtc_internal.h b/drivers/gpu/drm/drm_crtc_internal.h
index 63279e984342..aecab5308bae 100644
--- a/drivers/gpu/drm/drm_crtc_internal.h
+++ b/drivers/gpu/drm/drm_crtc_internal.h
@@ -286,6 +286,3 @@ int drm_mode_page_flip_ioctl(struct drm_device *dev,
 
 /* drm_edid.c */
 void drm_mode_fixup_1366x768(struct drm_display_mode *mode);
-void drm_reset_display_info(struct drm_connector *connector);
-u32 drm_add_display_info(struct drm_connector *connector, const struct edid *edid);
-void drm_update_tile_info(struct drm_connector *connector, const struct edid *edid);
diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 2bdaf1e34a9d..36bf7b0fe8d9 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5928,8 +5928,7 @@ static void drm_update_mso(struct drm_connector *connector,
 /* A connector has no EDID information, so we've got no EDID to compute quirks from. Reset
  * all of the values which would have been set from EDID
  */
-void
-drm_reset_display_info(struct drm_connector *connector)
+static void drm_reset_display_info(struct drm_connector *connector)
 {
 	struct drm_display_info *info = &connector->display_info;
 
@@ -6043,7 +6042,7 @@ static u32 update_display_info(struct drm_connector *connector,
 	return quirks;
 }
 
-u32 drm_add_display_info(struct drm_connector *connector, const struct edid *edid)
+static u32 drm_add_display_info(struct drm_connector *connector, const struct edid *edid)
 {
 	struct drm_edid drm_edid;
 
@@ -6207,6 +6206,83 @@ static int drm_edid_connector_update(struct drm_connector *connector,
 	return num_modes;
 }
 
+static void drm_update_tile_info(struct drm_connector *connector,
+				 const struct edid *edid);
+
+/**
+ * drm_connector_update_edid_property - update the edid property of a connector
+ * @connector: drm connector
+ * @edid: new value of the edid property
+ *
+ * This function creates a new blob modeset object and assigns its id to the
+ * connector's edid property.
+ * Since we also parse tile information from EDID's displayID block, we also
+ * set the connector's tile property here. See drm_connector_set_tile_property()
+ * for more details.
+ *
+ * Returns:
+ * Zero on success, negative errno on failure.
+ */
+int drm_connector_update_edid_property(struct drm_connector *connector,
+				       const struct edid *edid)
+{
+	struct drm_device *dev = connector->dev;
+	size_t size = 0;
+	int ret;
+	const struct edid *old_edid;
+
+	/* ignore requests to set edid when overridden */
+	if (connector->override_edid)
+		return 0;
+
+	if (edid)
+		size = EDID_LENGTH * (1 + edid->extensions);
+
+	/*
+	 * Set the display info, using edid if available, otherwise resetting
+	 * the values to defaults. This duplicates the work done in
+	 * drm_add_edid_modes, but that function is not consistently called
+	 * before this one in all drivers and the computation is cheap enough
+	 * that it seems better to duplicate it rather than attempt to ensure
+	 * some arbitrary ordering of calls.
+	 */
+	if (edid)
+		drm_add_display_info(connector, edid);
+	else
+		drm_reset_display_info(connector);
+
+	drm_update_tile_info(connector, edid);
+
+	if (connector->edid_blob_ptr) {
+		old_edid = (const struct edid *)connector->edid_blob_ptr->data;
+		if (old_edid) {
+			if (!drm_edid_are_equal(edid, old_edid)) {
+				DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Edid was changed.\n",
+					      connector->base.id, connector->name);
+
+				connector->epoch_counter += 1;
+				DRM_DEBUG_KMS("Updating change counter to %llu\n",
+					      connector->epoch_counter);
+			}
+		}
+	}
+
+	drm_object_property_set_value(&connector->base,
+				      dev->mode_config.non_desktop_property,
+				      connector->display_info.non_desktop);
+
+	ret = drm_property_replace_global_blob(dev,
+					       &connector->edid_blob_ptr,
+					       size,
+					       edid,
+					       &connector->base,
+					       dev->mode_config.edid_property);
+	if (ret)
+		return ret;
+	return drm_connector_set_tile_property(connector);
+}
+EXPORT_SYMBOL(drm_connector_update_edid_property);
+
 /**
  * drm_add_edid_modes - add modes from EDID data, if available
  * @connector: connector we're probing
@@ -6645,8 +6721,8 @@ static void _drm_update_tile_info(struct drm_connector *connector,
 	}
 }
 
-void drm_update_tile_info(struct drm_connector *connector,
-			  const struct edid *edid)
+static void drm_update_tile_info(struct drm_connector *connector,
+				 const struct edid *edid)
 {
 	struct drm_edid drm_edid;
 
-- 
2.30.2

