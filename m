Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C548269F1
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 09:58:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2408210E1F3;
	Mon,  8 Jan 2024 08:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85DF310E1FA
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 08:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704704314; x=1736240314;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hEkJqyUWRtWQtzfUMWgYvOfDgUGr68fgAGUxW1aLQ+U=;
 b=W7OzrBhI8idB0PNFIT+w6oPXz2IM1fp8bmN1Ynre6y25OJzHMH8Bumio
 naP+wpm/XR0rL3YLEbjCZbE7tCa5fiqe6Ds1MZnW5VABhEBVZcsiv2BX6
 XqCXwCMqcvTPD4Dyt4Jw1rQ+4qb7F5HazMVbmdsW/n1PtvMtHw75fBQFh
 4qo/OvV/C1lkEBTI/Diolcfjrmc2GYa43ydK7XJla9IKLOWVMAp9DOvOK
 tLWGQ4g8Lp6zN5jqfJfNJJTXSacxewBLNiYfO7m2D2ajQS0ViIsnO0fcj
 cVEh04fBwXN8YKkKL8NoZGZrBiDSF/AtIwsc08//6mhLnqhnELBMQCpLW g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="4623035"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; 
   d="scan'208";a="4623035"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 00:58:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="1112681011"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="1112681011"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jan 2024 00:58:32 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Add bigjoiner force enable option to debugfs
Date: Mon,  8 Jan 2024 10:58:28 +0200
Message-Id: <20240108085830.18584-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240108085830.18584-1-stanislav.lisovskiy@intel.com>
References: <20240108085830.18584-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

v2: - Apparently intel_dp_need_bigjoiner can't be used, when
      debugfs entry is created so lets just check manually
      the DISPLAY_VER.

v3: - Switch to intel_connector from drm_connector(Jani Nikula)
    - Remove redundant modeset lock(Jani Nikula)
    - Use kstrtobool_from_user for boolean value(Jani Nikula)

v4: - Apply the changes to proper function(Jani Nikula)

v5: - Removed unnecessary check from i915_bigjoiner_enable_show
      (Ville Syrjälä)
    - Added eDP connector check to intel_connector_debugfs_add
      (Ville Syrjälä)
    - Removed debug message in order to prevent dmesg flooding
      (Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 59 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 3 files changed, 63 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 915420d0cef8f..aa95ecf2458ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1414,6 +1414,22 @@ out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
 	return ret;
 }
 
+static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	struct intel_dp *intel_dp;
+
+	if (!encoder)
+		return -ENODEV;
+
+	intel_dp = enc_to_intel_dp(encoder);
+
+	seq_printf(m, "Bigjoiner enable: %d\n", intel_dp->force_bigjoiner_enable);
+
+	return 0;
+}
+
 static ssize_t i915_dsc_output_format_write(struct file *file,
 					    const char __user *ubuf,
 					    size_t len, loff_t *offp)
@@ -1435,12 +1451,39 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
 	return len;
 }
 
+static ssize_t i915_bigjoiner_enable_fops_write(struct file *file,
+						const char __user *ubuf,
+						size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	bool bigjoiner_en = 0;
+	int ret;
+
+	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
+	if (ret < 0)
+		return ret;
+
+	intel_dp->force_bigjoiner_enable = bigjoiner_en;
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
@@ -1529,6 +1572,15 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
 	.write = i915_dsc_fractional_bpp_write
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
@@ -1611,6 +1663,13 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
 				    connector, &i915_dsc_fractional_bpp_fops);
 	}
 
+	if (DISPLAY_VER(dev_priv) >= 11 &&
+	    (intel_connector->base.connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	     intel_connector->base.connector_type == DRM_MODE_CONNECTOR_eDP)) {
+		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
+				    &intel_connector->base, &i915_bigjoiner_enable_fops);
+	}
+
 	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
 	    connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
 	    connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9a44350ba05dd..559302ff79c1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1764,6 +1764,8 @@ struct intel_dp {
 	bool is_mst;
 	int active_mst_links;
 
+	bool force_bigjoiner_enable;
+
 	/* connector directly attached - won't be use for modeset in mst world */
 	struct intel_connector *attached_connector;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 54bd0bffa9f08..5b8411b9fc30b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1172,7 +1172,8 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 	if (!intel_dp_can_bigjoiner(intel_dp))
 		return false;
 
-	return clock > i915->max_dotclk_freq || hdisplay > 5120;
+	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
+	       intel_dp->force_bigjoiner_enable;
 }
 
 static enum drm_mode_status
-- 
2.37.3

