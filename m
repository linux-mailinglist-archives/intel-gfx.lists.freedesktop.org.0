Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA4C5B3808
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 14:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8D510ED17;
	Fri,  9 Sep 2022 12:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FA2E10ED17
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 12:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662727359; x=1694263359;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vDytACm65BQvqoaHgLj/4cuOPr+iVW6fVtFU11yRP9A=;
 b=bmMj4EqM26vvG8olgbcvUrkIHAXIp3vpTlBvn/eg6Opm5O5tPUtBBJxv
 xkHfA47sKIAcQJtJujbODI38Lq8uxm/gqkSWx5tifUV/xzfzrXPsrGt3k
 V9ebJSLxb7OEPCjCZdTJfQr6vg29Vg+PYQl2aYYSpntuaNkJlBCVhTWNm
 PrleH564bU4p09z+yibRW1Ir1hLind/H984q4c4y7Id/h1tpT7I3HTDnf
 LX6bsHqHXcoqen1hv956HuPgLVnFdKGiYa2Jb24Ux7JwqkfnWkf6ZeSTR
 hDVkksoLC7ejVKKBVVg9oinXGNds7Ujzbl7uIF5O40bz4hg2j38Wl15Ln g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298267551"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="298267551"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 05:42:38 -0700
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="677145695"
Received: from abaruah-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.45.217])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 05:42:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 15:42:33 +0300
Message-Id: <20220909124234.2124050-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hotplug: move hotplug storm
 debugfs to intel_hotplug.c
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

The debugfs should be where the implementation details are.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 160 +----------------
 drivers/gpu/drm/i915/display/intel_hotplug.c  | 166 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_hotplug.h  |   1 +
 3 files changed, 169 insertions(+), 158 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 5dc364e9db49..486256749dbc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -22,6 +22,7 @@
 #include "intel_fbdev.h"
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
+#include "intel_hotplug.h"
 #include "intel_panel.h"
 #include "intel_pm.h"
 #include "intel_psr.h"
@@ -1617,162 +1618,6 @@ static const struct file_operations i915_cur_wm_latency_fops = {
 	.write = cur_wm_latency_write
 };
 
-static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = m->private;
-	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
-
-	/* Synchronize with everything first in case there's been an HPD
-	 * storm, but we haven't finished handling it in the kernel yet
-	 */
-	intel_synchronize_irq(dev_priv);
-	flush_work(&dev_priv->display.hotplug.dig_port_work);
-	flush_delayed_work(&dev_priv->display.hotplug.hotplug_work);
-
-	seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
-	seq_printf(m, "Detected: %s\n",
-		   str_yes_no(delayed_work_pending(&hotplug->reenable_work)));
-
-	return 0;
-}
-
-static ssize_t i915_hpd_storm_ctl_write(struct file *file,
-					const char __user *ubuf, size_t len,
-					loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
-	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
-	unsigned int new_threshold;
-	int i;
-	char *newline;
-	char tmp[16];
-
-	if (len >= sizeof(tmp))
-		return -EINVAL;
-
-	if (copy_from_user(tmp, ubuf, len))
-		return -EFAULT;
-
-	tmp[len] = '\0';
-
-	/* Strip newline, if any */
-	newline = strchr(tmp, '\n');
-	if (newline)
-		*newline = '\0';
-
-	if (strcmp(tmp, "reset") == 0)
-		new_threshold = HPD_STORM_DEFAULT_THRESHOLD;
-	else if (kstrtouint(tmp, 10, &new_threshold) != 0)
-		return -EINVAL;
-
-	if (new_threshold > 0)
-		drm_dbg_kms(&dev_priv->drm,
-			    "Setting HPD storm detection threshold to %d\n",
-			    new_threshold);
-	else
-		drm_dbg_kms(&dev_priv->drm, "Disabling HPD storm detection\n");
-
-	spin_lock_irq(&dev_priv->irq_lock);
-	hotplug->hpd_storm_threshold = new_threshold;
-	/* Reset the HPD storm stats so we don't accidentally trigger a storm */
-	for_each_hpd_pin(i)
-		hotplug->stats[i].count = 0;
-	spin_unlock_irq(&dev_priv->irq_lock);
-
-	/* Re-enable hpd immediately if we were in an irq storm */
-	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
-
-	return len;
-}
-
-static int i915_hpd_storm_ctl_open(struct inode *inode, struct file *file)
-{
-	return single_open(file, i915_hpd_storm_ctl_show, inode->i_private);
-}
-
-static const struct file_operations i915_hpd_storm_ctl_fops = {
-	.owner = THIS_MODULE,
-	.open = i915_hpd_storm_ctl_open,
-	.read = seq_read,
-	.llseek = seq_lseek,
-	.release = single_release,
-	.write = i915_hpd_storm_ctl_write
-};
-
-static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = m->private;
-
-	seq_printf(m, "Enabled: %s\n",
-		   str_yes_no(dev_priv->display.hotplug.hpd_short_storm_enabled));
-
-	return 0;
-}
-
-static int
-i915_hpd_short_storm_ctl_open(struct inode *inode, struct file *file)
-{
-	return single_open(file, i915_hpd_short_storm_ctl_show,
-			   inode->i_private);
-}
-
-static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
-					      const char __user *ubuf,
-					      size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
-	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
-	char *newline;
-	char tmp[16];
-	int i;
-	bool new_state;
-
-	if (len >= sizeof(tmp))
-		return -EINVAL;
-
-	if (copy_from_user(tmp, ubuf, len))
-		return -EFAULT;
-
-	tmp[len] = '\0';
-
-	/* Strip newline, if any */
-	newline = strchr(tmp, '\n');
-	if (newline)
-		*newline = '\0';
-
-	/* Reset to the "default" state for this system */
-	if (strcmp(tmp, "reset") == 0)
-		new_state = !HAS_DP_MST(dev_priv);
-	else if (kstrtobool(tmp, &new_state) != 0)
-		return -EINVAL;
-
-	drm_dbg_kms(&dev_priv->drm, "%sabling HPD short storm detection\n",
-		    new_state ? "En" : "Dis");
-
-	spin_lock_irq(&dev_priv->irq_lock);
-	hotplug->hpd_short_storm_enabled = new_state;
-	/* Reset the HPD storm stats so we don't accidentally trigger a storm */
-	for_each_hpd_pin(i)
-		hotplug->stats[i].count = 0;
-	spin_unlock_irq(&dev_priv->irq_lock);
-
-	/* Re-enable hpd immediately if we were in an irq storm */
-	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
-
-	return len;
-}
-
-static const struct file_operations i915_hpd_short_storm_ctl_fops = {
-	.owner = THIS_MODULE,
-	.open = i915_hpd_short_storm_ctl_open,
-	.read = seq_read,
-	.llseek = seq_lseek,
-	.release = single_release,
-	.write = i915_hpd_short_storm_ctl_write,
-};
-
 static int i915_drrs_ctl_set(void *data, u64 val)
 {
 	struct drm_i915_private *dev_priv = data;
@@ -1908,8 +1753,6 @@ static const struct {
 	{"i915_dp_test_data", &i915_displayport_test_data_fops},
 	{"i915_dp_test_type", &i915_displayport_test_type_fops},
 	{"i915_dp_test_active", &i915_displayport_test_active_fops},
-	{"i915_hpd_storm_ctl", &i915_hpd_storm_ctl_fops},
-	{"i915_hpd_short_storm_ctl", &i915_hpd_short_storm_ctl_fops},
 	{"i915_ipc_status", &i915_ipc_status_fops},
 	{"i915_drrs_ctl", &i915_drrs_ctl_fops},
 	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
@@ -1934,6 +1777,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
+	intel_hpd_debugfs_register(i915);
 }
 
 static int i915_panel_show(struct seq_file *m, void *data)
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index f7a2f485b177..4faae25d76c0 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -767,3 +767,169 @@ void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin)
 	dev_priv->display.hotplug.stats[pin].state = HPD_ENABLED;
 	spin_unlock_irq(&dev_priv->irq_lock);
 }
+
+static int i915_hpd_storm_ctl_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = m->private;
+	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
+
+	/* Synchronize with everything first in case there's been an HPD
+	 * storm, but we haven't finished handling it in the kernel yet
+	 */
+	intel_synchronize_irq(dev_priv);
+	flush_work(&dev_priv->display.hotplug.dig_port_work);
+	flush_delayed_work(&dev_priv->display.hotplug.hotplug_work);
+
+	seq_printf(m, "Threshold: %d\n", hotplug->hpd_storm_threshold);
+	seq_printf(m, "Detected: %s\n",
+		   str_yes_no(delayed_work_pending(&hotplug->reenable_work)));
+
+	return 0;
+}
+
+static ssize_t i915_hpd_storm_ctl_write(struct file *file,
+					const char __user *ubuf, size_t len,
+					loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct drm_i915_private *dev_priv = m->private;
+	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
+	unsigned int new_threshold;
+	int i;
+	char *newline;
+	char tmp[16];
+
+	if (len >= sizeof(tmp))
+		return -EINVAL;
+
+	if (copy_from_user(tmp, ubuf, len))
+		return -EFAULT;
+
+	tmp[len] = '\0';
+
+	/* Strip newline, if any */
+	newline = strchr(tmp, '\n');
+	if (newline)
+		*newline = '\0';
+
+	if (strcmp(tmp, "reset") == 0)
+		new_threshold = HPD_STORM_DEFAULT_THRESHOLD;
+	else if (kstrtouint(tmp, 10, &new_threshold) != 0)
+		return -EINVAL;
+
+	if (new_threshold > 0)
+		drm_dbg_kms(&dev_priv->drm,
+			    "Setting HPD storm detection threshold to %d\n",
+			    new_threshold);
+	else
+		drm_dbg_kms(&dev_priv->drm, "Disabling HPD storm detection\n");
+
+	spin_lock_irq(&dev_priv->irq_lock);
+	hotplug->hpd_storm_threshold = new_threshold;
+	/* Reset the HPD storm stats so we don't accidentally trigger a storm */
+	for_each_hpd_pin(i)
+		hotplug->stats[i].count = 0;
+	spin_unlock_irq(&dev_priv->irq_lock);
+
+	/* Re-enable hpd immediately if we were in an irq storm */
+	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
+
+	return len;
+}
+
+static int i915_hpd_storm_ctl_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, i915_hpd_storm_ctl_show, inode->i_private);
+}
+
+static const struct file_operations i915_hpd_storm_ctl_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_hpd_storm_ctl_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_hpd_storm_ctl_write
+};
+
+static int i915_hpd_short_storm_ctl_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = m->private;
+
+	seq_printf(m, "Enabled: %s\n",
+		   str_yes_no(dev_priv->display.hotplug.hpd_short_storm_enabled));
+
+	return 0;
+}
+
+static int
+i915_hpd_short_storm_ctl_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, i915_hpd_short_storm_ctl_show,
+			   inode->i_private);
+}
+
+static ssize_t i915_hpd_short_storm_ctl_write(struct file *file,
+					      const char __user *ubuf,
+					      size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct drm_i915_private *dev_priv = m->private;
+	struct intel_hotplug *hotplug = &dev_priv->display.hotplug;
+	char *newline;
+	char tmp[16];
+	int i;
+	bool new_state;
+
+	if (len >= sizeof(tmp))
+		return -EINVAL;
+
+	if (copy_from_user(tmp, ubuf, len))
+		return -EFAULT;
+
+	tmp[len] = '\0';
+
+	/* Strip newline, if any */
+	newline = strchr(tmp, '\n');
+	if (newline)
+		*newline = '\0';
+
+	/* Reset to the "default" state for this system */
+	if (strcmp(tmp, "reset") == 0)
+		new_state = !HAS_DP_MST(dev_priv);
+	else if (kstrtobool(tmp, &new_state) != 0)
+		return -EINVAL;
+
+	drm_dbg_kms(&dev_priv->drm, "%sabling HPD short storm detection\n",
+		    new_state ? "En" : "Dis");
+
+	spin_lock_irq(&dev_priv->irq_lock);
+	hotplug->hpd_short_storm_enabled = new_state;
+	/* Reset the HPD storm stats so we don't accidentally trigger a storm */
+	for_each_hpd_pin(i)
+		hotplug->stats[i].count = 0;
+	spin_unlock_irq(&dev_priv->irq_lock);
+
+	/* Re-enable hpd immediately if we were in an irq storm */
+	flush_delayed_work(&dev_priv->display.hotplug.reenable_work);
+
+	return len;
+}
+
+static const struct file_operations i915_hpd_short_storm_ctl_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_hpd_short_storm_ctl_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_hpd_short_storm_ctl_write,
+};
+
+void intel_hpd_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_hpd_storm_ctl", 0644, minor->debugfs_root,
+			    i915, &i915_hpd_storm_ctl_fops);
+	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, minor->debugfs_root,
+			    i915, &i915_hpd_short_storm_ctl_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index b87e95d606e6..aa84e381d6c3 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -28,5 +28,6 @@ enum hpd_pin intel_hpd_pin_default(struct drm_i915_private *dev_priv,
 				   enum port port);
 bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
 void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
+void intel_hpd_debugfs_register(struct drm_i915_private *i915);
 
 #endif /* __INTEL_HOTPLUG_H__ */
-- 
2.34.1

