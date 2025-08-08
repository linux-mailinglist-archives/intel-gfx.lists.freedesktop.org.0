Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAF2B1E3DD
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 09:52:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F70910E8C8;
	Fri,  8 Aug 2025 07:52:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Skxi4Ktx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5961210E8C8;
 Fri,  8 Aug 2025 07:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754639565; x=1786175565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oTAkk8AJhrd7WOAgqc/lbEekHqlsnbDwmv2uhNVztgQ=;
 b=Skxi4KtxYDuIvGF6OBTvOf/e20ykbx/5LcF8QzK8zctENImM9JgG7JHm
 bbvbv2+7yY+uIdvMKX7IrXbfSd3GKAmvkTrEA3GbfvkpzmugdiYDOxtAV
 cznVRPRpw/aDt6+oZolMlgVW0xkZIUt2xap3eWA/P/AW6gsNaUm4OcYnI
 ES+88K+9UYzdWoc3tTVr50Mn163l/UMzC/D93JZ2MhcLaQq4JIP4041Vy
 wIp2ot3YEO+jwp9ygQguIFKH/RUcNZeMBcryMERiang2mgIuiZtQ+yuRX
 vZ6Y8W71p1KqDCLPar83wrIYhfkfJJluXVqpcSd+g/06vplwFfp/YEsxY g==;
X-CSE-ConnectionGUID: w2Zy32CYRhWNlFT+Q8Dk6A==
X-CSE-MsgGUID: cdCAGPhTQkOnCosQHkpt7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74439099"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="74439099"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:52:45 -0700
X-CSE-ConnectionGUID: Tt3k2YhpRzu1enIqYXngzw==
X-CSE-MsgGUID: Fk1Vu79xRz+ErBGS7JjBXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="169481611"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:52:43 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915/debugfs: Add debugfs entry to prefer YCbCr 4:2:0
 output
Date: Fri,  8 Aug 2025 13:22:41 +0530
Message-ID: <20250808075351.304612-2-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250808075351.304612-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20250808075351.304612-1-dibin.moolakadan.subrahmanian@intel.com>
MIME-Version: 1.0
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

Introduce a new `prefer_sink_yuv420` flag in `intel_connector`, exposed
via a per-connector debugfs entry: `i915_prefer_sink_yuv420`, for both
HDMI and DP connectors.

This flag allows users to override the default RGB output format and prefer
YCbCr 4:2:0.

This is especially useful for validating IGT tests related to scaling
and color under YUV420 modes.

Enablement of this feature in HDMI and DP output paths will follow in
subsequent patches.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 75 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  6 ++
 2 files changed, 81 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 10dddec3796f..bd18c9968c69 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1304,6 +1304,75 @@ static const struct file_operations i915_joiner_fops = {
 	.write = i915_joiner_write
 };
 
+static int i915_prefer_sink_yuv420_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	struct drm_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	int ret;
+
+	if (!encoder)
+		return -ENODEV;
+
+	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	crtc = connector->base.state->crtc;
+	if (connector->base.status != connector_status_connected || !crtc) {
+		ret = -ENODEV;
+		goto out;
+	}
+
+	crtc_state = to_intel_crtc_state(crtc->state);
+	seq_printf(m, "prefer_sink_yuv420:%s sink_format: %x\n",
+		   str_yes_no(connector->prefer_sink_yuv420), crtc_state->sink_format);
+
+out:
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+	return ret;
+}
+
+static ssize_t i915_prefer_sink_yuv420_write(struct file *file,
+					     const char __user *ubuf,
+					     size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	int prefer_sink_yuv420 = 0;
+	int ret;
+
+	if (!encoder)
+		return -ENODEV;
+
+	ret = kstrtoint_from_user(ubuf, len, 0, &prefer_sink_yuv420);
+	if (ret < 0)
+		return ret;
+
+	connector->prefer_sink_yuv420 = !!prefer_sink_yuv420;
+	*offp += len;
+
+	return len;
+}
+
+static int i915_prefer_sink_yuv420_open(struct inode *inode,
+					struct file *file)
+{
+	return single_open(file, i915_prefer_sink_yuv420_show, inode->i_private);
+}
+
+static const struct file_operations i915_prefer_sink_yuv420_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_prefer_sink_yuv420_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_prefer_sink_yuv420_write
+};
+
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
  * @connector: pointer to a registered intel_connector
@@ -1359,6 +1428,12 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
 		debugfs_create_file("i915_lpsp_capability", 0444, root,
 				    connector, &i915_lpsp_capability_fops);
+
+	if (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
+	    connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
+		debugfs_create_file("i915_prefer_sink_yuv420", 0644, root,
+				    connector, &i915_prefer_sink_yuv420_fops);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 35596f3921e8..b25bc7b2759a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -564,6 +564,12 @@ struct intel_connector {
 	struct work_struct modeset_retry_work;
 
 	struct intel_hdcp hdcp;
+
+	/**
+	 * Indicates that the driver should prefer using YCbCr 4:2:0 output format
+	 * when the sink supports it. This flag can be toggled via debugfs.
+	 */
+	bool prefer_sink_yuv420;
 };
 
 struct intel_digital_connector_state {
-- 
2.43.0

