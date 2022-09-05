Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8C25AD8B4
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:01:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F288F10E476;
	Mon,  5 Sep 2022 18:01:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A86E410E475
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 18:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662400894; x=1693936894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mmLl2uT0VzOkMcKRCAEK+GdNbBah3eHN01MtrC6BYUo=;
 b=RgN19A4qjituud8Vb/vqBcHiWPvHVhg36EsyJ2s2umUq/etOvYzifpSk
 zp1LeHnkD5DkobaFAx0Cb1+UA7VJjlooAPtdQ4wD2DqEeiUXwouiIWNp9
 EndVX68UDF0KFnb9yAaYrKzcDQveTH9VBhWDEKYvSgRwDdwgJ3S4LRerU
 Zc3VV2TDZNHMf8Oaz8eobFTUY6/KF3UOz9N22NXvtqIfJKfk2yeCqGRLT
 NdiAIad8lV05y58RdgO3ehl8a37WOvWRKA1sKcqb0ejfn66/vgu5QswIF
 T2iz6rZDXeKYIZGuxX3hc6wVsWJ+YVyUYKi/sYEEK5QNOM/F9ZfyRSKTq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="276828273"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="276828273"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675367513"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:01:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 21:01:05 +0300
Message-Id: <0d02434a882bef2d87ddbeb9c4e746c4ae0f69bf.1662400767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662400767.git.jani.nikula@intel.com>
References: <cover.1662400767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/ipc: move IPC debugfs to
 intel_ipc.c
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

Follow the new direction for debugfs files, moving the details where the
implementation is. It seems quite natural intel_ipc.c is the place that
controls IPC details, even for debugfs, not intel_display_debugfs.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 54 +----------------
 drivers/gpu/drm/i915/display/intel_ipc.c      | 60 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_ipc.h      |  1 +
 3 files changed, 62 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index a85e6219b403..f4e0a2b119e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -983,58 +983,6 @@ static int i915_shared_dplls_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static int i915_ipc_status_show(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = m->private;
-
-	seq_printf(m, "Isochronous Priority Control: %s\n",
-		   str_yes_no(intel_ipc_is_enabled(dev_priv)));
-	return 0;
-}
-
-static int i915_ipc_status_open(struct inode *inode, struct file *file)
-{
-	struct drm_i915_private *dev_priv = inode->i_private;
-
-	if (!HAS_IPC(dev_priv))
-		return -ENODEV;
-
-	return single_open(file, i915_ipc_status_show, dev_priv);
-}
-
-static ssize_t i915_ipc_status_write(struct file *file, const char __user *ubuf,
-				     size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
-	intel_wakeref_t wakeref;
-	bool enable;
-	int ret;
-
-	ret = kstrtobool_from_user(ubuf, len, &enable);
-	if (ret < 0)
-		return ret;
-
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
-		if (!intel_ipc_is_enabled(dev_priv) && enable)
-			drm_info(&dev_priv->drm,
-				 "Enabling IPC: WM will be proper only after next commit\n");
-		dev_priv->ipc_enabled = enable;
-		intel_ipc_enable(dev_priv);
-	}
-
-	return len;
-}
-
-static const struct file_operations i915_ipc_status_fops = {
-	.owner = THIS_MODULE,
-	.open = i915_ipc_status_open,
-	.read = seq_read,
-	.llseek = seq_lseek,
-	.release = single_release,
-	.write = i915_ipc_status_write
-};
-
 static int i915_ddb_info(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1911,7 +1859,6 @@ static const struct {
 	{"i915_dp_test_active", &i915_displayport_test_active_fops},
 	{"i915_hpd_storm_ctl", &i915_hpd_storm_ctl_fops},
 	{"i915_hpd_short_storm_ctl", &i915_hpd_short_storm_ctl_fops},
-	{"i915_ipc_status", &i915_ipc_status_fops},
 	{"i915_drrs_ctl", &i915_drrs_ctl_fops},
 	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
 };
@@ -1935,6 +1882,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
+	intel_ipc_debugfs_register(i915);
 }
 
 static int i915_panel_show(struct seq_file *m, void *data)
diff --git a/drivers/gpu/drm/i915/display/intel_ipc.c b/drivers/gpu/drm/i915/display/intel_ipc.c
index 71afec42d374..389d7d8012d9 100644
--- a/drivers/gpu/drm/i915/display/intel_ipc.c
+++ b/drivers/gpu/drm/i915/display/intel_ipc.c
@@ -54,3 +54,63 @@ void intel_ipc_init(struct drm_i915_private *i915)
 
 	intel_ipc_enable(i915);
 }
+
+static int intel_ipc_status_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *i915 = m->private;
+
+	seq_printf(m, "Isochronous Priority Control: %s\n",
+		   str_yes_no(intel_ipc_is_enabled(i915)));
+	return 0;
+}
+
+static int intel_ipc_status_open(struct inode *inode, struct file *file)
+{
+	struct drm_i915_private *i915 = inode->i_private;
+
+	if (!HAS_IPC(i915))
+		return -ENODEV;
+
+	return single_open(file, intel_ipc_status_show, i915);
+}
+
+static ssize_t intel_ipc_status_write(struct file *file, const char __user *ubuf,
+				      size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct drm_i915_private *i915 = m->private;
+	intel_wakeref_t wakeref;
+	bool enable;
+	int ret;
+
+	ret = kstrtobool_from_user(ubuf, len, &enable);
+	if (ret < 0)
+		return ret;
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		if (!intel_ipc_is_enabled(i915) && enable)
+			drm_info(&i915->drm,
+				 "Enabling IPC: WM will be proper only after next commit\n");
+		i915->ipc_enabled = enable;
+		intel_ipc_enable(i915);
+	}
+
+	return len;
+}
+
+static const struct file_operations intel_ipc_status_fops = {
+	.owner = THIS_MODULE,
+	.open = intel_ipc_status_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = intel_ipc_status_write
+};
+
+void intel_ipc_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root,
+			    i915, &intel_ipc_status_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_ipc.h b/drivers/gpu/drm/i915/display/intel_ipc.h
index 1a82d8ee07da..06e23d89d249 100644
--- a/drivers/gpu/drm/i915/display/intel_ipc.h
+++ b/drivers/gpu/drm/i915/display/intel_ipc.h
@@ -13,5 +13,6 @@ struct drm_i915_private;
 void intel_ipc_init(struct drm_i915_private *i915);
 void intel_ipc_enable(struct drm_i915_private *i915);
 bool intel_ipc_is_enabled(struct drm_i915_private *i915);
+void intel_ipc_debugfs_register(struct drm_i915_private *i915);
 
 #endif /* __INTEL_IPC_H__ */
-- 
2.34.1

