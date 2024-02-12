Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B91FE8513AF
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 13:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A6B10E0E3;
	Mon, 12 Feb 2024 12:42:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HpGpIjZB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA04910E0E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 12:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707741721; x=1739277721;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kxl/obSx3VFCFcoHzKzrZudQMJndWqiA+PL/h52Ek0E=;
 b=HpGpIjZBb+aWHpjFOrwOun0V7cu8eF/hb7BRSdxpfv1dMDpx6wozUJH6
 VrQ6RVPe49sg1/mvQzYjhmKgbu0nAbRA1Vt0p0+kdDrSrvRcS1eEetiPk
 Hzo/l2SuzddrKe+HbUQ3B5SH5VaqRITJPs6uKMoE4Nx75QOKmc0t57t4w
 6rtrnl64Q+yVCa+LBinMbJJS6qwj4uZgWR+wkj7BHY5DuMx0xk1ak/gtU
 TtdjYMfQcXPDJtyX3mmNKbZGRxFfduLbFqvwzsnIm0vbeYf2jdKxBKb2V
 AXxa5ZZfCdWNEeyVjaidFdb+N77lT6tN/KbT8dOWRNiZNqro8+0rNwZjT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10981"; a="1569523"
X-IronPort-AV: E=Sophos;i="6.06,263,1705392000"; 
   d="scan'208";a="1569523"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 04:41:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,263,1705392000"; 
   d="scan'208";a="7317222"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by orviesa004.jf.intel.com with ESMTP; 12 Feb 2024 04:41:57 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, ville.syrjala@linux.intel.com,
 jani.nikula@linux.intel.com
Subject: [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
Date: Mon, 12 Feb 2024 18:20:11 +0530
Message-ID: <20240212125011.66174-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.42.0
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

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

v7: - Move bigjoiner force option to intel_connector(Ville Syrjälä)
    - Use DEFINE_SHOW_STORE_ATTRIBUTE instead of defining fops
      manually.(Ville Syrjälä)

v8: - Pass intel_connector to debugfs_create_file, instead of drm_connector.
      (Jani Nikula)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 47 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
 3 files changed, 52 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 6f2d13c8ccf7..a962b48bcf13 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1391,6 +1391,20 @@ out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
 	return ret;
 }
 
+static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+	struct drm_crtc *crtc;
+
+	crtc = connector->base.state->crtc;
+	if (connector->base.status != connector_status_connected || !crtc)
+		return -ENODEV;
+
+	seq_printf(m, "Bigjoiner enable: %d\n", connector->force_bigjoiner_enable);
+
+	return 0;
+}
+
 static ssize_t i915_dsc_output_format_write(struct file *file,
 					    const char __user *ubuf,
 					    size_t len, loff_t *offp)
@@ -1412,6 +1426,30 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
 	return len;
 }
 
+static ssize_t i915_bigjoiner_enable_write(struct file *file,
+					   const char __user *ubuf,
+					   size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct drm_crtc *crtc;
+	bool bigjoiner_en = 0;
+	int ret;
+
+	crtc = connector->base.state->crtc;
+	if (connector->base.status != connector_status_connected || !crtc)
+		return -ENODEV;
+
+	ret = kstrtobool_from_user(ubuf, len, &bigjoiner_en);
+	if (ret < 0)
+		return ret;
+
+	connector->force_bigjoiner_enable = bigjoiner_en;
+	*offp += len;
+
+	return len;
+}
+
 static int i915_dsc_output_format_open(struct inode *inode,
 				       struct file *file)
 {
@@ -1505,6 +1543,8 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
 	.write = i915_dsc_fractional_bpp_write
 };
 
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_bigjoiner_enable);
+
 /*
  * Returns the Current CRTC's bpc.
  * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
@@ -1586,6 +1626,13 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 				    connector, &i915_dsc_fractional_bpp_fops);
 	}
 
+	if (DISPLAY_VER(i915) >= 11 &&
+	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
+		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
+				    connector, &i915_bigjoiner_enable_fops);
+	}
+
 	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
 	    connector_type == DRM_MODE_CONNECTOR_eDP ||
 	    connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 01eb6e4e6049..0d4012097db1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -626,6 +626,8 @@ struct intel_connector {
 
 	struct intel_dp *mst_port;
 
+	bool force_bigjoiner_enable;
+
 	struct {
 		struct drm_dp_aux *dsc_decompression_aux;
 		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5045c34a16be..217196196e50 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1205,11 +1205,13 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 			     int hdisplay, int clock)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
 
 	if (!intel_dp_can_bigjoiner(intel_dp))
 		return false;
 
-	return clock > i915->max_dotclk_freq || hdisplay > 5120;
+	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
+	       connector->force_bigjoiner_enable;
 }
 
 static enum drm_mode_status
-- 
2.42.0

