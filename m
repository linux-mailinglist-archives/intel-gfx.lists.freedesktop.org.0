Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7296B1204E6
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 13:07:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8F4089F2E;
	Mon, 16 Dec 2019 12:07:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B5E89EA3
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 12:07:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 04:07:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="416414021"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by fmsmga006.fm.intel.com with ESMTP; 16 Dec 2019 04:07:18 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 12:07:04 +0000
Message-Id: <20191216120704.958-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Add sysfs toggle to enable
 per-client engine stats
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

By default we are not collecting any per-engine and per-context
statistcs.

Add a new sysfs toggle to enable this facility:

$ echo 1 >/sys/class/drm/card0/clients/enable_stats

v2: Rebase.
v3: sysfs_attr_init.
v4: Scheduler caps.
v5: for_each_uabi_engine

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h   |  5 ++
 drivers/gpu/drm/i915/i915_sysfs.c | 76 +++++++++++++++++++++++++++++++
 2 files changed, 81 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index e9cefd9b55b5..e795e6fea6d3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1305,6 +1305,11 @@ struct drm_i915_private {
 		struct idr idr;
 
 		struct kobject *root;
+
+		struct {
+			bool enabled;
+			struct device_attribute attr;
+		} stats;
 	} clients;
 
 	struct i915_hdcp_comp_master *hdcp_master;
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 3ab50e29fddf..3443ff37b17a 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -554,9 +554,70 @@ static void i915_setup_error_capture(struct device *kdev) {}
 static void i915_teardown_error_capture(struct device *kdev) {}
 #endif
 
+static ssize_t
+show_client_stats(struct device *kdev, struct device_attribute *attr, char *buf)
+{
+	struct drm_i915_private *i915 =
+		container_of(attr, struct drm_i915_private, clients.stats.attr);
+
+	return snprintf(buf, PAGE_SIZE, "%u\n", i915->clients.stats.enabled);
+}
+
+static ssize_t
+store_client_stats(struct device *kdev, struct device_attribute *attr,
+		   const char *buf, size_t count)
+{
+	struct drm_i915_private *i915 =
+		container_of(attr, struct drm_i915_private, clients.stats.attr);
+	struct i915_drm_clients *clients = &i915->clients;
+	struct intel_engine_cs *engine;
+	bool disable = false;
+	bool enable = false;
+	bool val = false;
+	int ret;
+
+	 /* Use RCS as proxy for all engines. */
+	if (!(i915->caps.scheduler & I915_SCHEDULER_CAP_ENGINE_BUSY_STATS))
+		return -EINVAL;
+
+	ret = kstrtobool(buf, &val);
+	if (ret)
+		return ret;
+
+	/*
+	 * We use struct_mutex to allow one client at the time toggle the state.
+	 */
+	ret = i915_mutex_lock_interruptible(&i915->drm);
+	if (ret)
+		return ret;
+
+	if (val && !clients->stats.enabled)
+		enable = true;
+	else if (!val && clients->stats.enabled)
+		disable = true;
+
+	if (!enable && !disable)
+		goto out;
+
+	for_each_uabi_engine(engine, i915) {
+		if (enable)
+			WARN_ON_ONCE(intel_enable_engine_stats(engine));
+		else if (disable)
+			intel_disable_engine_stats(engine);
+	}
+
+	clients->stats.enabled = val;
+
+out:
+	mutex_unlock(&i915->drm.struct_mutex);
+
+	return count;
+}
+
 void i915_setup_sysfs(struct drm_i915_private *dev_priv)
 {
 	struct device *kdev = dev_priv->drm.primary->kdev;
+	struct device_attribute *attr;
 	int ret;
 
 	dev_priv->clients.root =
@@ -564,6 +625,18 @@ void i915_setup_sysfs(struct drm_i915_private *dev_priv)
 	if (!dev_priv->clients.root)
 		DRM_ERROR("Per-client sysfs setup failed\n");
 
+	attr = &dev_priv->clients.stats.attr;
+	sysfs_attr_init(&attr->attr);
+	attr->attr.name = "enable_stats";
+	attr->attr.mode = 0664;
+	attr->show = show_client_stats;
+	attr->store = store_client_stats;
+
+	ret = sysfs_create_file(dev_priv->clients.root,
+				(struct attribute *)attr);
+	if (ret)
+		DRM_ERROR("Per-client sysfs setup failed! (%d)\n", ret);
+
 #ifdef CONFIG_PM
 	if (HAS_RC6(dev_priv)) {
 		ret = sysfs_merge_group(&kdev->kobj,
@@ -625,6 +698,9 @@ void i915_teardown_sysfs(struct drm_i915_private *dev_priv)
 	sysfs_unmerge_group(&kdev->kobj, &rc6p_attr_group);
 #endif
 
+	sysfs_remove_file(dev_priv->clients.root,
+			  (struct attribute *)&dev_priv->clients.stats.attr);
+
 	if (dev_priv->clients.root)
 		kobject_put(dev_priv->clients.root);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
