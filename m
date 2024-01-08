Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF37826D6B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 13:07:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2D810E202;
	Mon,  8 Jan 2024 12:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2DA410E0A8
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 12:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704715651; x=1736251651;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+Slr+n3v3wKoJDUyEUnxm39XR7l6kvpHmfAAm0bHiaU=;
 b=UQceFxzzZvHXx6VkqkGdkGsc2jREp9EnHKF5oN4MTdAhRu2jPikI+tB6
 TDOjPjjzftaGxNO1cocqJl5Z1zxgepTS2J18+31n4p/RFnFvVqJ2qsi2D
 zYosPKlHD+y+Ll84o4fyhjApvF0y2X9/ptlk6wAetoS5hKIZYxq7wGuQp
 Q6/CFRrsINAMSyT8Jjq9QgithD1Iw9A56vkA605d7xFEN36P64fGoxgmE
 O6WPZFcbeVUI/IpiwH6qm/BneYFn7Z45+571hveEcYQIQt6nmr53toI25
 gQxcq9lFHTmzR/r+xu0aM1LNCZyPIo3SEiaZ0N8BCx+rGFJlHk2IOsoSM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="19361472"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="19361472"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 04:07:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="757605113"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="757605113"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga006.jf.intel.com with ESMTP; 08 Jan 2024 04:07:28 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Add bigjoiner force enable option to debugfs
Date: Mon,  8 Jan 2024 14:07:23 +0200
Message-Id: <20240108120725.20057-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
References: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
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

v6: - Assume now always that m->private is intel_connector
    - Fixed other similar conflicts

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 59 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 3 files changed, 63 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d951edb366871..353e71b4e1db2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1413,6 +1413,22 @@ out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
 	return ret;
 }
 
+static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
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
@@ -1434,12 +1450,39 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
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
@@ -1527,6 +1570,15 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
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
@@ -1608,6 +1660,13 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 				    connector, &i915_dsc_fractional_bpp_fops);
 	}
 
+	if (DISPLAY_VER(i915) >= 11 &&
+	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
+		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
+				    &connector->base, &i915_bigjoiner_enable_fops);
+	}
+
 	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
 	    connector_type == DRM_MODE_CONNECTOR_eDP ||
 	    connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b9b9d9f2bc0ba..e4c5a44dd02f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1768,6 +1768,8 @@ struct intel_dp {
 	bool is_mst;
 	int active_mst_links;
 
+	bool force_bigjoiner_enable;
+
 	/* connector directly attached - won't be use for modeset in mst world */
 	struct intel_connector *attached_connector;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9ff0cbd9c0df5..525ab926582d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1208,7 +1208,8 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 	if (!intel_dp_can_bigjoiner(intel_dp))
 		return false;
 
-	return clock > i915->max_dotclk_freq || hdisplay > 5120;
+	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
+	       intel_dp->force_bigjoiner_enable;
 }
 
 static enum drm_mode_status
-- 
2.37.3

