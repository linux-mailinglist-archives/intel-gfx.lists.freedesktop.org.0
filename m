Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 657895B598E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5832A10E3DE;
	Mon, 12 Sep 2022 11:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4657A10E3CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662983131; x=1694519131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dlEGuRLlcMuzT4B0ma037AWoFloPJStbJ8EZ2p4BmgE=;
 b=AomCDTDlFayefb7Nj3VJSyiN6LU9ham9ljozCmCFnNfdLjM5Q/GMxwrn
 ShpZknMVwn7uJ8TYRhrZUgbRld23Ffg6wYqqf54B3pLmgLDqox9PBMiyD
 NgBkMdcQWpjEZE04gWte3chD1pxkhv/0CtELpZahMbTMnXTVa8IusNdBt
 Pc/K5F+WfyiXyIrs/k6Uo5yq1hXnwKaYnOdMj1RNmxjSKzzqhruKZEnw9
 fyMja47Lyi/ojX31YJJ2Rk1/RHu5DuvwtGBzqaoMtlHi6m8FBQx9c77rw
 1LURdbLnS9EcPUWXOPmE1hNdtdinaEK9bGsHbzvn52h/zam0VMFQ0+pes A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="284865108"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="284865108"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="593460164"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:45:13 +0300
Message-Id: <9d59b18f5dc06e86a48c1ce0f40d625f51e3e85a.1662983005.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662983005.git.jani.nikula@intel.com>
References: <cover.1662983005.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/ipc: move IPC debugfs to
 skl_watermark.c
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
implementation is. It seems quite natural skl_watermark.c is the place
that controls IPC details, even for debugfs, not
intel_display_debugfs.c.

Rename the functions and convert dev_priv->i915 while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 54 +---------------
 drivers/gpu/drm/i915/display/skl_watermark.c  | 61 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
 3 files changed, 63 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d2139cf4f825..338e92889ace 100644
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
-		   str_yes_no(skl_watermark_ipc_enabled(dev_priv)));
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
-		if (!skl_watermark_ipc_enabled(dev_priv) && enable)
-			drm_info(&dev_priv->drm,
-				 "Enabling IPC: WM will be proper only after next commit\n");
-		dev_priv->ipc_enabled = enable;
-		skl_watermark_ipc_update(dev_priv);
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
+	skl_watermark_ipc_debugfs_register(i915);
 }
 
 static int i915_panel_show(struct seq_file *m, void *data)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index df505ca6ef91..1f0efde29d96 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3465,3 +3465,64 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
 		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), val);
 	}
 }
+
+static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *i915 = m->private;
+
+	seq_printf(m, "Isochronous Priority Control: %s\n",
+		   str_yes_no(skl_watermark_ipc_enabled(i915)));
+	return 0;
+}
+
+static int skl_watermark_ipc_status_open(struct inode *inode, struct file *file)
+{
+	struct drm_i915_private *i915 = inode->i_private;
+
+	if (!HAS_IPC(i915))
+		return -ENODEV;
+
+	return single_open(file, skl_watermark_ipc_status_show, i915);
+}
+
+static ssize_t skl_watermark_ipc_status_write(struct file *file,
+					      const char __user *ubuf,
+					      size_t len, loff_t *offp)
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
+		if (!skl_watermark_ipc_enabled(i915) && enable)
+			drm_info(&i915->drm,
+				 "Enabling IPC: WM will be proper only after next commit\n");
+		i915->ipc_enabled = enable;
+		skl_watermark_ipc_update(i915);
+	}
+
+	return len;
+}
+
+static const struct file_operations skl_watermark_ipc_status_fops = {
+	.owner = THIS_MODULE,
+	.open = skl_watermark_ipc_status_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = skl_watermark_ipc_status_write
+};
+
+void skl_watermark_ipc_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root, i915,
+			    &skl_watermark_ipc_status_fops);
+}
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 7e5adef0c510..7a5a4e67cd73 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -47,6 +47,7 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
 void skl_watermark_ipc_init(struct drm_i915_private *i915);
 void skl_watermark_ipc_update(struct drm_i915_private *i915);
 bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
+void skl_watermark_ipc_debugfs_register(struct drm_i915_private *i915);
 
 void skl_wm_init(struct drm_i915_private *i915);
 
-- 
2.34.1

