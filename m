Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8952F39C0B9
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 21:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D205E6F8DA;
	Fri,  4 Jun 2021 19:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCAEC6F8DB
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 19:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622836142;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=i7r9TWcgEdnAGyikVOJMxJ17E3tf0VQmUxB2pkCGXNY=;
 b=FNjLK9LJai6rRBj0jwoJ7rajMTAGSVFpDHKQgu2nDy0jfeI1UWtQ7sFN3LR+KghkZO+/Mh
 uWLs9Ttzpno8Utf0de1tCM655S8YQP8etBJN9SQ4EA24H4t0WA/XzYfdkbJDsB7iY8IQ8r
 fDbKWwyBPdJPisHC6AOrsEuCQZ9LYxc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-490-EPtZ8LMsMMmpIXLvHA9B0w-1; Fri, 04 Jun 2021 15:48:58 -0400
X-MC-Unique: EPtZ8LMsMMmpIXLvHA9B0w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6D0E107ACE6;
 Fri,  4 Jun 2021 19:48:56 +0000 (UTC)
Received: from x1.localdomain (ovpn-112-54.ams2.redhat.com [10.36.112.54])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C31A3620DE;
 Fri,  4 Jun 2021 19:48:51 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Fri,  4 Jun 2021 21:48:35 +0200
Message-Id: <20210604194840.14655-4-hdegoede@redhat.com>
In-Reply-To: <20210604194840.14655-1-hdegoede@redhat.com>
References: <20210604194840.14655-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: [Intel-gfx] [PATCH 3/8] drm/connector: Add
 drm_connector_find_by_fwnode() function (v3)
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, linux-usb@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a function to find a connector based on a fwnode.

This will be used by the new drm_connector_oob_hotplug_event()
function which is added by the next patch in this patch-set.

Changes in v2:
- Complete rewrite to use a global connector list in drm_connector.c
  rather then using a class-dev-iter in drm_sysfs.c

Changes in v3:
- Add forward declaration for struct fwnode_handle to drm_crtc_internal.h
  (fixes warning reported by kernel test robot <lkp@intel.com>)

Tested-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/gpu/drm/drm_connector.c     | 50 +++++++++++++++++++++++++++++
 drivers/gpu/drm/drm_crtc_internal.h |  2 ++
 include/drm/drm_connector.h         |  8 +++++
 3 files changed, 60 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index eb3bd362c23f..14644053a678 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -65,6 +65,14 @@
  * support can instead use e.g. drm_helper_hpd_irq_event().
  */
 
+/*
+ * Global connector list for drm_connector_find_by_fwnode().
+ * Note drm_connector_[un]register() first take connector->lock and then
+ * take the connector_list_lock.
+ */
+static DEFINE_MUTEX(connector_list_lock);
+static LIST_HEAD(connector_list);
+
 struct drm_conn_prop_enum_list {
 	int type;
 	const char *name;
@@ -267,6 +275,7 @@ int drm_connector_init(struct drm_device *dev,
 		goto out_put_type_id;
 	}
 
+	INIT_LIST_HEAD(&connector->global_connector_list_entry);
 	INIT_LIST_HEAD(&connector->probed_modes);
 	INIT_LIST_HEAD(&connector->modes);
 	mutex_init(&connector->mutex);
@@ -534,6 +543,9 @@ int drm_connector_register(struct drm_connector *connector)
 	/* Let userspace know we have a new connector */
 	drm_sysfs_hotplug_event(connector->dev);
 
+	mutex_lock(&connector_list_lock);
+	list_add_tail(&connector->global_connector_list_entry, &connector_list);
+	mutex_unlock(&connector_list_lock);
 	goto unlock;
 
 err_debugfs:
@@ -562,6 +574,10 @@ void drm_connector_unregister(struct drm_connector *connector)
 		return;
 	}
 
+	mutex_lock(&connector_list_lock);
+	list_del_init(&connector->global_connector_list_entry);
+	mutex_unlock(&connector_list_lock);
+
 	if (connector->funcs->early_unregister)
 		connector->funcs->early_unregister(connector);
 
@@ -2542,6 +2558,40 @@ int drm_mode_getconnector(struct drm_device *dev, void *data,
 	return ret;
 }
 
+/**
+ * drm_connector_find_by_fwnode - Find a connector based on the associated fwnode
+ * @fwnode: fwnode for which to find the matching drm_connector
+ *
+ * This functions looks up a drm_connector based on its associated fwnode. When
+ * a connector is found a reference to the connector is returned. The caller must
+ * call drm_connector_put() to release this reference when it is done with the
+ * connector.
+ *
+ * Returns: A reference to the found connector or an ERR_PTR().
+ */
+struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode)
+{
+	struct drm_connector *connector, *found = ERR_PTR(-ENODEV);
+
+	if (!fwnode)
+		return ERR_PTR(-ENODEV);
+
+	mutex_lock(&connector_list_lock);
+
+	list_for_each_entry(connector, &connector_list, global_connector_list_entry) {
+		if (connector->fwnode == fwnode ||
+		    (connector->fwnode && connector->fwnode->secondary == fwnode)) {
+			drm_connector_get(connector);
+			found = connector;
+			break;
+		}
+	}
+
+	mutex_unlock(&connector_list_lock);
+
+	return found;
+}
+
 
 /**
  * DOC: Tile group
diff --git a/drivers/gpu/drm/drm_crtc_internal.h b/drivers/gpu/drm/drm_crtc_internal.h
index 54d4cf1233e9..1e676a41d58b 100644
--- a/drivers/gpu/drm/drm_crtc_internal.h
+++ b/drivers/gpu/drm/drm_crtc_internal.h
@@ -57,6 +57,7 @@ struct drm_property;
 struct edid;
 struct kref;
 struct work_struct;
+struct fwnode_handle;
 
 /* drm_crtc.c */
 int drm_mode_crtc_set_obj_prop(struct drm_mode_object *obj,
@@ -185,6 +186,7 @@ int drm_connector_set_obj_prop(struct drm_mode_object *obj,
 int drm_connector_create_standard_properties(struct drm_device *dev);
 const char *drm_get_connector_force_name(enum drm_connector_force force);
 void drm_connector_free_work_fn(struct work_struct *work);
+struct drm_connector *drm_connector_find_by_fwnode(struct fwnode_handle *fwnode);
 
 /* IOCTL */
 int drm_connector_property_set_ioctl(struct drm_device *dev,
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 56aae0d5e2f8..b4b08c7a538e 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -1242,6 +1242,14 @@ struct drm_connector {
 	 */
 	struct list_head head;
 
+	/**
+	 * @global_connector_list_entry:
+	 *
+	 * Connector entry in the global connector-list, used by
+	 * drm_connector_find_by_fwnode().
+	 */
+	struct list_head global_connector_list_entry;
+
 	/** @base: base KMS object */
 	struct drm_mode_object base;
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
