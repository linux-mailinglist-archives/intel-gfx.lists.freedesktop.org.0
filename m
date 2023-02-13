Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 111A269513F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 21:00:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7172F10E704;
	Mon, 13 Feb 2023 20:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0866310E704
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 20:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676318447; x=1707854447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jP2oq8XMsqvp0x1t7ZuSdoAkOSF4YXiHZCedSIzctdo=;
 b=ddBd+8pL2O/TMYS6pk4fr7akxIZko250rCA6VoSKsq08r4IQSwzkHH9e
 vKqD3Il7sxYSEFyfof4ZmYpE5kNLWM9SFO2Ug497toWfqBJA0ImvsuVr2
 ip6V06HgOVmjdO2dK3gzt33NsNBI9tEQ8DHk1uIzVOxcjVhVqeT64aUK7
 nEvFlUbiwAQFvtUzM2+nWLVZzR45tB/kFa5346P2uitgobpI3qGIJ+6V7
 YMw/dw9imGHXOyE1bLAz2XukZl00EBhd/ctGkoA4WSVJB7UP1/sF6DkBS
 b+3cVfkCrmGbCi5xO3mQRxr+ArHwg0OaoCuTi1xO+sfHEC011ArQEOcjT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393385844"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="393385844"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:00:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="699273023"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="699273023"
Received: from tkatila-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:00:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Feb 2023 22:00:01 +0200
Message-Id: <6acf7b4c54a453bf4c47bfabc0000afe80bd0375.1676317696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1676317696.git.jani.nikula@intel.com>
References: <cover.1676317696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915/wm: move watermark debugfs to
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
 .../drm/i915/display/intel_display_debugfs.c  | 219 +----------------
 drivers/gpu/drm/i915/display/intel_wm.c       | 226 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wm.h       |   1 +
 3 files changed, 229 insertions(+), 217 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 953cdffb3a66..25013f303c82 100644
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
@@ -30,7 +29,7 @@
 #include "intel_pm.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
-#include "skl_watermark.h"
+#include "intel_wm.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 {
@@ -1283,217 +1282,6 @@ static int i915_displayport_test_type_show(struct seq_file *m, void *data)
 }
 DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_type);
 
-static void wm_latency_show(struct seq_file *m, const u16 wm[8])
-{
-	struct drm_i915_private *dev_priv = m->private;
-	int level;
-
-	drm_modeset_lock_all(&dev_priv->drm);
-
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
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
-	int level;
-	int ret;
-	char tmp[32];
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
-	if (ret != dev_priv->display.wm.num_levels)
-		return -EINVAL;
-
-	drm_modeset_lock_all(&dev_priv->drm);
-
-	for (level = 0; level < dev_priv->display.wm.num_levels; level++)
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
@@ -1574,9 +1362,6 @@ static const struct {
 	const struct file_operations *fops;
 } intel_display_debugfs_files[] = {
 	{"i915_fifo_underrun_reset", &i915_fifo_underrun_reset_ops},
-	{"i915_pri_wm_latency", &i915_pri_wm_latency_fops},
-	{"i915_spr_wm_latency", &i915_spr_wm_latency_fops},
-	{"i915_cur_wm_latency", &i915_cur_wm_latency_fops},
 	{"i915_dp_test_data", &i915_displayport_test_data_fops},
 	{"i915_dp_test_type", &i915_displayport_test_type_fops},
 	{"i915_dp_test_active", &i915_displayport_test_active_fops},
@@ -1603,7 +1388,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 	intel_hpd_debugfs_register(i915);
-	skl_watermark_debugfs_register(i915);
+	intel_wm_debugfs_register(i915);
 }
 
 static int i915_panel_show(struct seq_file *m, void *data)
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index 15fda0829c2f..b8626641d052 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -299,3 +299,229 @@ void intel_wm_init(struct drm_i915_private *i915)
 	else
 		i9xx_wm_init(i915);
 }
+
+static void wm_latency_show(struct seq_file *m, const u16 wm[8])
+{
+	struct drm_i915_private *dev_priv = m->private;
+	int level;
+
+	drm_modeset_lock_all(&dev_priv->drm);
+
+	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
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
+	int level;
+	int ret;
+	char tmp[32];
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
+	if (ret != dev_priv->display.wm.num_levels)
+		return -EINVAL;
+
+	drm_modeset_lock_all(&dev_priv->drm);
+
+	for (level = 0; level < dev_priv->display.wm.num_levels; level++)
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
index a5233e7e5e8d..2d22ea949e7f 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -33,5 +33,6 @@ void intel_print_wm_latency(struct drm_i915_private *i915,
 			    const char *name, const u16 wm[]);
 void intel_wm_sanitize(struct drm_i915_private *i915);
 void intel_wm_init(struct drm_i915_private *i915);
+void intel_wm_debugfs_register(struct drm_i915_private *i915);
 
 #endif /* __INTEL_WM_H__ */
-- 
2.34.1

