Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C666D68EC0F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 10:49:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7EB610E732;
	Wed,  8 Feb 2023 09:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFDC510E738
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 09:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675849772; x=1707385772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=utraN2UOcHNblG8a3pcwBYCIzU79gKYgqYh8y22+nvw=;
 b=Jf0sEbO28dFRk01qNHT5w/OQ8bTRDyUYzhWJa5hdo2wptRdd+PBkaiP/
 U1IY4F0BzH3PT/YNVTGLD0wT89mwXis/w2l4Ccfj14eG5rT4LxEPxNciz
 4aWwR58DNOK4h1I23H+DlN93goSAVehyFlF263ai/z33WJq+QY2SVMPdP
 oXouOPghThabUi+1knTzwGYUiTmeu4Mql5wuBUnxX0LC6SWD1bUftexM/
 dnhyD32Vutqqe8GdvFywA1Th79HKHAYd7nBdrUHGI8MPh4Wqo6edhwQ2W
 suJFRqDTHxOs7jcXLsNQ6c6lVqJQQXjugXIsqrfo2PukcfGJri27BnNHO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="394348232"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="394348232"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="697619081"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="697619081"
Received: from joergber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.82])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 11:48:47 +0200
Message-Id: <399cdb41c0aa9257e9ff0cce7220f97d2b76b723.1675849634.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675849634.git.jani.nikula@intel.com>
References: <cover.1675849634.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/wm: move watermark debugfs to
 intel_wm.c
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

Follow the new convention of placing debugfs with the code.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 224 +----------------
 drivers/gpu/drm/i915/display/intel_wm.c       | 232 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wm.h       |   1 +
 3 files changed, 234 insertions(+), 223 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 4ab86cec683e..25013f303c82 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -11,7 +11,6 @@
 #include "i915_debugfs.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
-#include "i9xx_wm.h"
 #include "intel_de.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_power.h"
@@ -31,7 +30,6 @@
 #include "intel_psr.h"
 #include "intel_sprite.h"
 #include "intel_wm.h"
-#include "skl_watermark.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 {
@@ -1284,223 +1282,6 @@ static int i915_displayport_test_type_show(struct seq_file *m, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_type);
 
-static void wm_latency_show(struct seq_file *m, const u16 wm[8])
-{
-	struct drm_i915_private *dev_priv = m->private;
-	int level;
-	int num_levels;
-
-	num_levels = intel_wm_num_levels(dev_priv);
-
-	drm_modeset_lock_all(&dev_priv->drm);
-
-	for (level = 0; level < num_levels; level++) {
-		unsigned int latency = wm[level];
-
-		/*
-		 * - WM1+ latency values in 0.5us units
-		 * - latencies are in us on gen9/vlv/chv
-		 */
-		if (DISPLAY_VER(dev_priv) >= 9 ||
-		    IS_VALLEYVIEW(dev_priv) ||
-		    IS_CHERRYVIEW(dev_priv) ||
-		    IS_G4X(dev_priv))
-			latency *= 10;
-		else if (level > 0)
-			latency *= 5;
-
-		seq_printf(m, "WM%d %u (%u.%u usec)\n",
-			   level, wm[level], latency / 10, latency % 10);
-	}
-
-	drm_modeset_unlock_all(&dev_priv->drm);
-}
-
-static int pri_wm_latency_show(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = m->private;
-	const u16 *latencies;
-
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
-	else
-		latencies = dev_priv->display.wm.pri_latency;
-
-	wm_latency_show(m, latencies);
-
-	return 0;
-}
-
-static int spr_wm_latency_show(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = m->private;
-	const u16 *latencies;
-
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
-	else
-		latencies = dev_priv->display.wm.spr_latency;
-
-	wm_latency_show(m, latencies);
-
-	return 0;
-}
-
-static int cur_wm_latency_show(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = m->private;
-	const u16 *latencies;
-
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
-	else
-		latencies = dev_priv->display.wm.cur_latency;
-
-	wm_latency_show(m, latencies);
-
-	return 0;
-}
-
-static int pri_wm_latency_open(struct inode *inode, struct file *file)
-{
-	struct drm_i915_private *dev_priv = inode->i_private;
-
-	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
-		return -ENODEV;
-
-	return single_open(file, pri_wm_latency_show, dev_priv);
-}
-
-static int spr_wm_latency_open(struct inode *inode, struct file *file)
-{
-	struct drm_i915_private *dev_priv = inode->i_private;
-
-	if (HAS_GMCH(dev_priv))
-		return -ENODEV;
-
-	return single_open(file, spr_wm_latency_show, dev_priv);
-}
-
-static int cur_wm_latency_open(struct inode *inode, struct file *file)
-{
-	struct drm_i915_private *dev_priv = inode->i_private;
-
-	if (HAS_GMCH(dev_priv))
-		return -ENODEV;
-
-	return single_open(file, cur_wm_latency_show, dev_priv);
-}
-
-static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
-				size_t len, loff_t *offp, u16 wm[8])
-{
-	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
-	u16 new[8] = { 0 };
-	int num_levels;
-	int level;
-	int ret;
-	char tmp[32];
-
-	num_levels = intel_wm_num_levels(dev_priv);
-
-	if (len >= sizeof(tmp))
-		return -EINVAL;
-
-	if (copy_from_user(tmp, ubuf, len))
-		return -EFAULT;
-
-	tmp[len] = '\0';
-
-	ret = sscanf(tmp, "%hu %hu %hu %hu %hu %hu %hu %hu",
-		     &new[0], &new[1], &new[2], &new[3],
-		     &new[4], &new[5], &new[6], &new[7]);
-	if (ret != num_levels)
-		return -EINVAL;
-
-	drm_modeset_lock_all(&dev_priv->drm);
-
-	for (level = 0; level < num_levels; level++)
-		wm[level] = new[level];
-
-	drm_modeset_unlock_all(&dev_priv->drm);
-
-	return len;
-}
-
-
-static ssize_t pri_wm_latency_write(struct file *file, const char __user *ubuf,
-				    size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
-	u16 *latencies;
-
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
-	else
-		latencies = dev_priv->display.wm.pri_latency;
-
-	return wm_latency_write(file, ubuf, len, offp, latencies);
-}
-
-static ssize_t spr_wm_latency_write(struct file *file, const char __user *ubuf,
-				    size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
-	u16 *latencies;
-
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
-	else
-		latencies = dev_priv->display.wm.spr_latency;
-
-	return wm_latency_write(file, ubuf, len, offp, latencies);
-}
-
-static ssize_t cur_wm_latency_write(struct file *file, const char __user *ubuf,
-				    size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct drm_i915_private *dev_priv = m->private;
-	u16 *latencies;
-
-	if (DISPLAY_VER(dev_priv) >= 9)
-		latencies = dev_priv->display.wm.skl_latency;
-	else
-		latencies = dev_priv->display.wm.cur_latency;
-
-	return wm_latency_write(file, ubuf, len, offp, latencies);
-}
-
-static const struct file_operations i915_pri_wm_latency_fops = {
-	.owner = THIS_MODULE,
-	.open = pri_wm_latency_open,
-	.read = seq_read,
-	.llseek = seq_lseek,
-	.release = single_release,
-	.write = pri_wm_latency_write
-};
-
-static const struct file_operations i915_spr_wm_latency_fops = {
-	.owner = THIS_MODULE,
-	.open = spr_wm_latency_open,
-	.read = seq_read,
-	.llseek = seq_lseek,
-	.release = single_release,
-	.write = spr_wm_latency_write
-};
-
-static const struct file_operations i915_cur_wm_latency_fops = {
-	.owner = THIS_MODULE,
-	.open = cur_wm_latency_open,
-	.read = seq_read,
-	.llseek = seq_lseek,
-	.release = single_release,
-	.write = cur_wm_latency_write
-};
-
 static ssize_t
 i915_fifo_underrun_reset_write(struct file *filp,
 			       const char __user *ubuf,
@@ -1581,9 +1362,6 @@ static const struct {
 	const struct file_operations *fops;
 } intel_display_debugfs_files[] = {
 	{"i915_fifo_underrun_reset", &i915_fifo_underrun_reset_ops},
-	{"i915_pri_wm_latency", &i915_pri_wm_latency_fops},
-	{"i915_spr_wm_latency", &i915_spr_wm_latency_fops},
-	{"i915_cur_wm_latency", &i915_cur_wm_latency_fops},
 	{"i915_dp_test_data", &i915_displayport_test_data_fops},
 	{"i915_dp_test_type", &i915_displayport_test_type_fops},
 	{"i915_dp_test_active", &i915_displayport_test_active_fops},
@@ -1610,7 +1388,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 	intel_hpd_debugfs_register(i915);
-	skl_watermark_debugfs_register(i915);
+	intel_wm_debugfs_register(i915);
 }
 
 static int i915_panel_show(struct seq_file *m, void *data)
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index 632eeca32d7d..57b927a12614 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -307,3 +307,235 @@ void intel_wm_init(struct drm_i915_private *i915)
 	else
 		i9xx_wm_init(i915);
 }
+
+static void wm_latency_show(struct seq_file *m, const u16 wm[8])
+{
+	struct drm_i915_private *dev_priv = m->private;
+	int level;
+	int num_levels;
+
+	num_levels = intel_wm_num_levels(dev_priv);
+
+	drm_modeset_lock_all(&dev_priv->drm);
+
+	for (level = 0; level < num_levels; level++) {
+		unsigned int latency = wm[level];
+
+		/*
+		 * - WM1+ latency values in 0.5us units
+		 * - latencies are in us on gen9/vlv/chv
+		 */
+		if (DISPLAY_VER(dev_priv) >= 9 ||
+		    IS_VALLEYVIEW(dev_priv) ||
+		    IS_CHERRYVIEW(dev_priv) ||
+		    IS_G4X(dev_priv))
+			latency *= 10;
+		else if (level > 0)
+			latency *= 5;
+
+		seq_printf(m, "WM%d %u (%u.%u usec)\n",
+			   level, wm[level], latency / 10, latency % 10);
+	}
+
+	drm_modeset_unlock_all(&dev_priv->drm);
+}
+
+static int pri_wm_latency_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = m->private;
+	const u16 *latencies;
+
+	if (DISPLAY_VER(dev_priv) >= 9)
+		latencies = dev_priv->display.wm.skl_latency;
+	else
+		latencies = dev_priv->display.wm.pri_latency;
+
+	wm_latency_show(m, latencies);
+
+	return 0;
+}
+
+static int spr_wm_latency_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = m->private;
+	const u16 *latencies;
+
+	if (DISPLAY_VER(dev_priv) >= 9)
+		latencies = dev_priv->display.wm.skl_latency;
+	else
+		latencies = dev_priv->display.wm.spr_latency;
+
+	wm_latency_show(m, latencies);
+
+	return 0;
+}
+
+static int cur_wm_latency_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = m->private;
+	const u16 *latencies;
+
+	if (DISPLAY_VER(dev_priv) >= 9)
+		latencies = dev_priv->display.wm.skl_latency;
+	else
+		latencies = dev_priv->display.wm.cur_latency;
+
+	wm_latency_show(m, latencies);
+
+	return 0;
+}
+
+static int pri_wm_latency_open(struct inode *inode, struct file *file)
+{
+	struct drm_i915_private *dev_priv = inode->i_private;
+
+	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
+		return -ENODEV;
+
+	return single_open(file, pri_wm_latency_show, dev_priv);
+}
+
+static int spr_wm_latency_open(struct inode *inode, struct file *file)
+{
+	struct drm_i915_private *dev_priv = inode->i_private;
+
+	if (HAS_GMCH(dev_priv))
+		return -ENODEV;
+
+	return single_open(file, spr_wm_latency_show, dev_priv);
+}
+
+static int cur_wm_latency_open(struct inode *inode, struct file *file)
+{
+	struct drm_i915_private *dev_priv = inode->i_private;
+
+	if (HAS_GMCH(dev_priv))
+		return -ENODEV;
+
+	return single_open(file, cur_wm_latency_show, dev_priv);
+}
+
+static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
+				size_t len, loff_t *offp, u16 wm[8])
+{
+	struct seq_file *m = file->private_data;
+	struct drm_i915_private *dev_priv = m->private;
+	u16 new[8] = { 0 };
+	int num_levels;
+	int level;
+	int ret;
+	char tmp[32];
+
+	num_levels = intel_wm_num_levels(dev_priv);
+
+	if (len >= sizeof(tmp))
+		return -EINVAL;
+
+	if (copy_from_user(tmp, ubuf, len))
+		return -EFAULT;
+
+	tmp[len] = '\0';
+
+	ret = sscanf(tmp, "%hu %hu %hu %hu %hu %hu %hu %hu",
+		     &new[0], &new[1], &new[2], &new[3],
+		     &new[4], &new[5], &new[6], &new[7]);
+	if (ret != num_levels)
+		return -EINVAL;
+
+	drm_modeset_lock_all(&dev_priv->drm);
+
+	for (level = 0; level < num_levels; level++)
+		wm[level] = new[level];
+
+	drm_modeset_unlock_all(&dev_priv->drm);
+
+	return len;
+}
+
+static ssize_t pri_wm_latency_write(struct file *file, const char __user *ubuf,
+				    size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct drm_i915_private *dev_priv = m->private;
+	u16 *latencies;
+
+	if (DISPLAY_VER(dev_priv) >= 9)
+		latencies = dev_priv->display.wm.skl_latency;
+	else
+		latencies = dev_priv->display.wm.pri_latency;
+
+	return wm_latency_write(file, ubuf, len, offp, latencies);
+}
+
+static ssize_t spr_wm_latency_write(struct file *file, const char __user *ubuf,
+				    size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct drm_i915_private *dev_priv = m->private;
+	u16 *latencies;
+
+	if (DISPLAY_VER(dev_priv) >= 9)
+		latencies = dev_priv->display.wm.skl_latency;
+	else
+		latencies = dev_priv->display.wm.spr_latency;
+
+	return wm_latency_write(file, ubuf, len, offp, latencies);
+}
+
+static ssize_t cur_wm_latency_write(struct file *file, const char __user *ubuf,
+				    size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct drm_i915_private *dev_priv = m->private;
+	u16 *latencies;
+
+	if (DISPLAY_VER(dev_priv) >= 9)
+		latencies = dev_priv->display.wm.skl_latency;
+	else
+		latencies = dev_priv->display.wm.cur_latency;
+
+	return wm_latency_write(file, ubuf, len, offp, latencies);
+}
+
+static const struct file_operations i915_pri_wm_latency_fops = {
+	.owner = THIS_MODULE,
+	.open = pri_wm_latency_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = pri_wm_latency_write
+};
+
+static const struct file_operations i915_spr_wm_latency_fops = {
+	.owner = THIS_MODULE,
+	.open = spr_wm_latency_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = spr_wm_latency_write
+};
+
+static const struct file_operations i915_cur_wm_latency_fops = {
+	.owner = THIS_MODULE,
+	.open = cur_wm_latency_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = cur_wm_latency_write
+};
+
+void intel_wm_debugfs_register(struct drm_i915_private *i915)
+{
+	struct drm_minor *minor = i915->drm.primary;
+
+	debugfs_create_file("i915_pri_wm_latency", 0644, minor->debugfs_root,
+			    i915, &i915_pri_wm_latency_fops);
+
+	debugfs_create_file("i915_spr_wm_latency", 0644, minor->debugfs_root,
+			    i915, &i915_spr_wm_latency_fops);
+
+	debugfs_create_file("i915_cur_wm_latency", 0644, minor->debugfs_root,
+			    i915, &i915_cur_wm_latency_fops);
+
+	skl_watermark_debugfs_register(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index 06257e19be6f..39d1107cef8e 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -34,5 +34,6 @@ void intel_print_wm_latency(struct drm_i915_private *i915,
 void intel_wm_sanitize(struct drm_i915_private *i915);
 int intel_wm_num_levels(const struct drm_i915_private *i915);
 void intel_wm_init(struct drm_i915_private *i915);
+void intel_wm_debugfs_register(struct drm_i915_private *i915);
 
 #endif /* __INTEL_WM_H__ */
-- 
2.34.1

