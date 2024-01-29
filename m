Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86427840019
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 09:30:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0771112525;
	Mon, 29 Jan 2024 08:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BA81112525
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 08:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706517013; x=1738053013;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cJUELVOgHc5Fxh7PWSTXA5ydVjlp7uLjShAv2Cw3tsg=;
 b=eEhkuKb15a8mcCbkMq48Gkkvi+kt9k4qZgQYjA1J/AcmPI1TzFE5q+ow
 mP0AqLKw138ZjioNBapWgJhlp9QxhTUNxRQ3SVV6iv61un8VCME1wpkFl
 jTGyclCsQl5kXK6tBYwFzHrX+bR1x4YsylPvuGZyxKyG7g04YOy3LsmTC
 O/sBPXcAPLhmDkz0hYnjXUA4J3p4qgp5inG8Ijobv2xJOYFeRVtyg+zhp
 uIut7nF4ClyEm+PWO3j4SEK/iOxw0k8Hh2170+GDFTvscyMFxDMf7/t8e
 0ThkfIHvxKFsFDh0CqtEL5xXsOs5fgSXEVmiV6uc+Doje8AyEGyd1+LaS g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="9998597"
X-IronPort-AV: E=Sophos;i="6.05,226,1701158400"; 
   d="scan'208";a="9998597"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 00:28:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10967"; a="910987186"
X-IronPort-AV: E=Sophos;i="6.05,226,1701158400"; d="scan'208";a="910987186"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga004.jf.intel.com with ESMTP; 29 Jan 2024 00:28:44 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Add bigjoiner force enable option to debugfs
Date: Mon, 29 Jan 2024 10:28:43 +0200
Message-Id: <20240129082843.5258-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240118110205.15787-1-stanislav.lisovskiy@intel.com>
References: <20240118110205.15787-1-stanislav.lisovskiy@intel.com>
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
index d951edb366871..8bb56ba2902ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1413,6 +1413,20 @@ out:	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
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
@@ -1434,6 +1448,30 @@ static ssize_t i915_dsc_output_format_write(struct file *file,
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
@@ -1527,6 +1565,8 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
 	.write = i915_dsc_fractional_bpp_write
 };
 
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_bigjoiner_enable);
+
 /*
  * Returns the Current CRTC's bpc.
  * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
@@ -1608,6 +1648,13 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
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
index ae2e8cff9d691..db38f2b8178a8 100644
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
index ab415f41924d7..d70890ca2b47d 100644
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
2.37.3

