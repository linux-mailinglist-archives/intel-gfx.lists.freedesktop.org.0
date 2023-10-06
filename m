Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1253D7BBA0D
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 16:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B30DF10E00D;
	Fri,  6 Oct 2023 14:15:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA7B10E00D
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696601753; x=1728137753;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RZO9JqyJGoykIm/yCfghIXR7JYDHTySA+P3ou7HJNc8=;
 b=WlByytPQeiBFe9Ime+dnvKMr9Fnj5CdBpVTnQhZU7WA5GYd7i/j0Bqb6
 tXeFZLFSIw9CjMyFLq3PP6FEhMuvZKRaTdWNUDt51wDYty2DbKfikZl6V
 vKuGeuZFrVEeeNTVX+JFh6tBIddxz2CNLlH82OwT2otKuUU39KNbD2ehV
 DGNbJG3TWqys+RVyhs+uix20oP+r0j5p19F1dJ+6air4+d+tHYj09ytCA
 +tQLciafFhWF2IWmNR2o4HEi94ksUxJrXmW6kRslwvzWKOXXqdYkPwsgo
 L8bbsXnV+O8OPYKhDRhHwtCWJJyv9JhnOcX6oAAPsTFU/hE9U6EOSv3gR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="387636580"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="387636580"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 07:15:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="702070144"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="702070144"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga003.jf.intel.com with ESMTP; 06 Oct 2023 07:15:51 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 17:15:50 +0300
Message-Id: <20231006141550.25918-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add bigjoiner force enable option to
 debugfs
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For validation purposes, it might be useful to be able to
force Bigjoiner mode, even if current dotclock/resolution
do not require that.
Lets add such to option to debugfs.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 71 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 3 files changed, 75 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index f6d7c4d45fae..5855c6de91a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1399,6 +1399,35 @@ out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
 	return ret;
 }
 
+static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+	struct drm_device *dev = connector->dev;
+	struct drm_crtc *crtc;
+	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	int ret;
+
+	if (!encoder)
+		return -ENODEV;
+
+	ret = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	crtc = connector->state->crtc;
+	if (connector->status != connector_status_connected || !crtc) {
+		ret = -ENODEV;
+		goto out;
+	}
+
+	seq_printf(m, "Bigjoiner enable: %d\n", intel_dp->force_bigjoiner_en);
+
+out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+
+	return ret;
+}
+
 static ssize_t i915_dsc_output_format_write(struct file *file,
 					    const char __user *ubuf,
 					    size_t len, loff_t *offp)
@@ -1420,12 +1449,39 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
 	return len;
 }
 
+static ssize_t i915_bigjoiner_enable_fops_write(struct file *file,
+						const char __user *ubuf,
+						size_t len, loff_t *offp)
+{
+	struct drm_connector *connector =
+		((struct seq_file *)file->private_data)->private;
+	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	int bigjoiner_en = 0;
+	int ret;
+
+	ret = kstrtoint_from_user(ubuf, len, 0, &bigjoiner_en);
+	if (ret < 0)
+		return ret;
+
+	intel_dp->force_bigjoiner_en = bigjoiner_en;
+	*offp += len;
+
+	return len;
+}
+
 static int i915_dsc_output_format_open(struct inode *inode,
 				       struct file *file)
 {
 	return single_open(file, i915_dsc_output_format_show, inode->i_private);
 }
 
+static int i915_bigjoiner_enable_open(struct inode *inode,
+				      struct file *file)
+{
+	return single_open(file, i915_bigjoiner_enable_show, inode->i_private);
+}
+
 static const struct file_operations i915_dsc_output_format_fops = {
 	.owner = THIS_MODULE,
 	.open = i915_dsc_output_format_open,
@@ -1435,6 +1491,15 @@ static const struct file_operations i915_dsc_output_format_fops = {
 	.write = i915_dsc_output_format_write
 };
 
+static const struct file_operations i915_bigjoiner_enable_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_bigjoiner_enable_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_bigjoiner_enable_fops_write
+};
+
 /*
  * Returns the Current CRTC's bpc.
  * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
@@ -1514,6 +1579,12 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
 				    connector, &i915_dsc_output_format_fops);
 	}
 
+	if (intel_dp_can_bigjoiner(enc_to_intel_dp(intel_connector->encoder)) &&
+	    connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort) {
+		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
+				    connector, &i915_bigjoiner_enable_fops);
+	}
+
 	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
 	    connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
 	    connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8d8b2f8d37a9..ecec8a25838e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1753,6 +1753,8 @@ struct intel_dp {
 	bool is_mst;
 	int active_mst_links;
 
+	bool force_bigjoiner_en;
+
 	/* connector directly attached - won't be use for modeset in mst world */
 	struct intel_connector *attached_connector;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f0f43aeabd21..6665214bd332 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1153,7 +1153,8 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 	if (!intel_dp_can_bigjoiner(intel_dp))
 		return false;
 
-	return clock > i915->max_dotclk_freq || hdisplay > 5120;
+	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
+	       intel_dp->force_bigjoiner_en;
 }
 
 static enum drm_mode_status
-- 
2.37.3

