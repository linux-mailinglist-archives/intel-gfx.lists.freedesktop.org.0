Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E08220EF3C
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 09:23:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9BD489B78;
	Tue, 30 Jun 2020 07:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D30789AC3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 07:23:26 +0000 (UTC)
IronPort-SDR: XKhoOyKYVzjr8tDSogDao70c02u6QfRzCSa/OvN1aWMMnfcwn34A2crNHjMo9rjYR8YPKy8sU0
 hOxF7IdS9ICg==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="126291938"
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="126291938"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 00:23:26 -0700
IronPort-SDR: 2y82K75T7KJkMGx5jVQwS7EKuenghySOjPo6dCtB9L92i3rIXFwMPDTQOa6HuKpPzYtc4Q26I5
 4mTZsancBBDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="295126423"
Received: from unknown (HELO joshikun.iind.intel.com) ([10.223.74.209])
 by orsmga002.jf.intel.com with ESMTP; 30 Jun 2020 00:23:24 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 05:56:59 +0530
Message-Id: <20200630002700.5451-3-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200630002700.5451-1-kunal1.joshi@intel.com>
References: <20200630002700.5451-1-kunal1.joshi@intel.com>
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
 drivers/gpu/drm/drm_edid.c         |  8 ++++---
 drivers/gpu/drm/drm_probe_helper.c | 38 ++++++++++++++++++++++++++----
 include/drm/drm_connector.h        |  2 ++
 4 files changed, 56 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index b7bd46033807..328a6a0dfe32 100644
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
+					      connector->base.id, connector->name);
+
+				connector->epoch_counter += 1;
+				DRM_DEBUG_KMS("Updating change counter to %llu\n",
+					      connector->epoch_counter);
+			}
+		}
+	}
+
 	drm_object_property_set_value(&connector->base,
 				      dev->mode_config.non_desktop_property,
 				      connector->display_info.non_desktop);
diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 920ac9ef6018..8b559b82a15e 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1632,7 +1632,6 @@ bool drm_edid_are_equal(const struct edid *edid1, const struct edid *edid2)
 		return false;
 
 	if (edid1) {
-
 		edid1_len = EDID_LENGTH * (1 + edid1->extensions);
 		edid2_len = EDID_LENGTH * (1 + edid2->extensions);
 
@@ -1647,7 +1646,6 @@ bool drm_edid_are_equal(const struct edid *edid1, const struct edid *edid2)
 }
 EXPORT_SYMBOL(drm_edid_are_equal);
 
-
 /**
  * drm_edid_block_valid - Sanity check the EDID block (base or extension)
  * @raw_edid: pointer to raw EDID block
@@ -2050,13 +2048,17 @@ EXPORT_SYMBOL(drm_probe_ddc);
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
index 09e872e61315..04a99c17b039 100644
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
+	u64 old_epoch_counter;
 
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
+		if (old_epoch_counter != connector->epoch_counter)
 			changed = true;
+
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
index fd543d1db9b2..6a451b86c454 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1329,6 +1329,8 @@ struct drm_connector {
 	enum drm_connector_force force;
 	/** @override_edid: has the EDID been overwritten through debugfs for testing? */
 	bool override_edid;
+	/** @epoch_counter: used to detect any other changes in connector, besides status */
+	u64 epoch_counter;
 
 	/**
 	 * @possible_encoders: Bit mask of encoders that can drive this
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
