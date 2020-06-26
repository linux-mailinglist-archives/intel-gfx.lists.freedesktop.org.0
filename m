Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C11620B5AC
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 18:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459AB6ECCC;
	Fri, 26 Jun 2020 16:10:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B529B6E139
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 16:10:02 +0000 (UTC)
IronPort-SDR: eLtA/kWWBce+iv+Cz/t2u1VJfjMXkMWtm4Bwni7iwC1gsjuma5uoS9TGuB4Z1lVmbfeLdRBPgU
 b0el2uBlLXLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="133758586"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="133758586"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 09:10:02 -0700
IronPort-SDR: U+EAdcaKDcW3jFs8U4HSTGlV/2TYPowKw5G3gsDgIFK/mDuLrQys35SmLlnJC3gdXJ+I43omfl
 PS14O3uP1cDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="479868686"
Received: from unknown (HELO joshikun.iind.intel.com) ([10.223.74.209])
 by fmsmga006.fm.intel.com with ESMTP; 26 Jun 2020 09:10:00 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 14:43:32 +0530
Message-Id: <20200626091333.17516-3-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200626091333.17516-1-kunal1.joshi@intel.com>
References: <20200626091333.17516-1-kunal1.joshi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 2/3] drm: Introduce epoch counter to
 drm_connector
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
Cc: daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

This counter will be used by drm_helper_probe_detect caller to determine
if anything had changed(including edid, connection status and etc).
Hardware specific driver detect hooks are responsible for updating this
counter when some change is detected to notify the drm part,
which can trigger for example hotplug event.

Also now call drm_connector_update_edid_property
right after we get edid always to make sure there is a
unified way to handle edid change, without having to
change tons of source code as currently
drm_connector_update_edid_property is called only in
certain cases like reprobing and not right after edid is
actually updated.

v2: Added documentation for the new counter. Rename change_counter to
    epoch_counter.

Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=105540

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/drm_connector.c    | 16 +++++++++++++
 drivers/gpu/drm/drm_edid.c         |  6 ++++-
 drivers/gpu/drm/drm_probe_helper.c | 38 ++++++++++++++++++++++++++----
 include/drm/drm_connector.h        |  2 ++
 4 files changed, 56 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index b7bd46033807..332686297e45 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -269,6 +269,7 @@ int drm_connector_init(struct drm_device *dev,
 	INIT_LIST_HEAD(&connector->modes);
 	mutex_init(&connector->mutex);
 	connector->edid_blob_ptr = NULL;
+	connector->epoch_counter = 0;
 	connector->tile_blob_ptr = NULL;
 	connector->status = connector_status_unknown;
 	connector->display_info.panel_orientation =
@@ -1979,6 +1980,7 @@ int drm_connector_update_edid_property(struct drm_connector *connector,
 	struct drm_device *dev = connector->dev;
 	size_t size = 0;
 	int ret;
+	const struct edid *old_edid;
 
 	/* ignore requests to set edid when overridden */
 	if (connector->override_edid)
@@ -2002,6 +2004,20 @@ int drm_connector_update_edid_property(struct drm_connector *connector,
 
 	drm_update_tile_info(connector, edid);
 
+	if (connector->edid_blob_ptr) {
+		old_edid = (const struct edid *)connector->edid_blob_ptr->data;
+		if (old_edid) {
+			if (!drm_edid_are_equal(edid, old_edid)) {
+				DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Edid was changed.\n",
+				    connector->base.id, connector->name);
+
+				connector->epoch_counter += 1;
+				DRM_DEBUG_KMS("Updating change counter to %llu\n",
+				    connector->epoch_counter);
+			}
+		}
+	}
+
 	drm_object_property_set_value(&connector->base,
 				      dev->mode_config.non_desktop_property,
 				      connector->display_info.non_desktop);
diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 920ac9ef6018..b7530db4a93b 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2050,13 +2050,17 @@ EXPORT_SYMBOL(drm_probe_ddc);
 struct edid *drm_get_edid(struct drm_connector *connector,
 			  struct i2c_adapter *adapter)
 {
+	struct edid *edid;
+
 	if (connector->force == DRM_FORCE_OFF)
 		return NULL;
 
 	if (connector->force == DRM_FORCE_UNSPECIFIED && !drm_probe_ddc(adapter))
 		return NULL;
 
-	return drm_do_get_edid(connector, drm_do_probe_ddc_edid, adapter);
+	edid = drm_do_get_edid(connector, drm_do_probe_ddc_edid, adapter);
+	drm_connector_update_edid_property(connector, edid);
+	return edid;
 }
 EXPORT_SYMBOL(drm_get_edid);
 
diff --git a/drivers/gpu/drm/drm_probe_helper.c b/drivers/gpu/drm/drm_probe_helper.c
index 09e872e61315..7378c61e7fcc 100644
--- a/drivers/gpu/drm/drm_probe_helper.c
+++ b/drivers/gpu/drm/drm_probe_helper.c
@@ -292,6 +292,9 @@ drm_helper_probe_detect_ctx(struct drm_connector *connector, bool force)
 	if (WARN_ON(ret < 0))
 		ret = connector_status_unknown;
 
+	if (ret != connector->status)
+		connector->epoch_counter += 1;
+
 	drm_modeset_drop_locks(&ctx);
 	drm_modeset_acquire_fini(&ctx);
 
@@ -325,11 +328,16 @@ drm_helper_probe_detect(struct drm_connector *connector,
 		return ret;
 
 	if (funcs->detect_ctx)
-		return funcs->detect_ctx(connector, ctx, force);
+		ret = funcs->detect_ctx(connector, ctx, force);
 	else if (connector->funcs->detect)
-		return connector->funcs->detect(connector, force);
+		ret = connector->funcs->detect(connector, force);
 	else
-		return connector_status_connected;
+		ret = connector_status_connected;
+
+	if (ret != connector->status)
+		connector->epoch_counter += 1;
+
+	return ret;
 }
 EXPORT_SYMBOL(drm_helper_probe_detect);
 
@@ -779,6 +787,7 @@ bool drm_helper_hpd_irq_event(struct drm_device *dev)
 	struct drm_connector_list_iter conn_iter;
 	enum drm_connector_status old_status;
 	bool changed = false;
+	uint64_t old_epoch_counter;
 
 	if (!dev->mode_config.poll_enabled)
 		return false;
@@ -792,20 +801,39 @@ bool drm_helper_hpd_irq_event(struct drm_device *dev)
 
 		old_status = connector->status;
 
+		old_epoch_counter = connector->epoch_counter;
+
+		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Old epoch counter %llu\n", connector->base.id,
+			      connector->name,
+			      old_epoch_counter);
+
 		connector->status = drm_helper_probe_detect(connector, NULL, false);
 		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] status updated from %s to %s\n",
 			      connector->base.id,
 			      connector->name,
 			      drm_get_connector_status_name(old_status),
 			      drm_get_connector_status_name(connector->status));
-		if (old_status != connector->status)
+
+		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] New epoch counter %llu\n",
+			      connector->base.id,
+			      connector->name,
+			      connector->epoch_counter);
+
+		/*
+		 * Check if epoch counter had changed, meaning that we need
+		 * to send a uevent.
+		 */
+		if (old_epoch_counter != connector->epoch_counter) {
 			changed = true;
+		}
 	}
 	drm_connector_list_iter_end(&conn_iter);
 	mutex_unlock(&dev->mode_config.mutex);
 
-	if (changed)
+	if (changed) {
 		drm_kms_helper_hotplug_event(dev);
+		DRM_DEBUG_KMS("Sent hotplug event\n");
+	}
 
 	return changed;
 }
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index fd543d1db9b2..e82b367cdfc8 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1329,6 +1329,8 @@ struct drm_connector {
 	enum drm_connector_force force;
 	/** @override_edid: has the EDID been overwritten through debugfs for testing? */
 	bool override_edid;
+	/** @epoch_counter: used to detect any other changes in connector, besides status */
+	uint64_t epoch_counter;
 
 	/**
 	 * @possible_encoders: Bit mask of encoders that can drive this
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
