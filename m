Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2138868D0CC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 08:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DFE810E462;
	Tue,  7 Feb 2023 07:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1761C10E45E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 07:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675755938; x=1707291938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6xkz6BrVZpW5rigfL7YOkTwi1DKxV1AtUAetUFkdRT4=;
 b=Io59wLjTK5jEAKJKWfhEq0CxxQremGstuRcgc/i8MxBisQ5ItrV1qacZ
 mu3slSnAs0qIxHXQ0j486XSFInWuHU2IpCQItS7cd7I8P6SFrcLcJR/zf
 I/ctKickabqcqcLBkOhLNZ9ZnaEVUrGUFxDec3iVJE+00MRz9gcEjc8XK
 I35guybxCcl+I1y/tGvNv6jFPNJyBeYgZZ2OU0tA5ubmIosSPxWTHEOlN
 OtGTsVQV+21xUDxy7xCtMWjc38jNWkWSOF7h1gTV51UgrTL3my2Iu8ihL
 RM/MgseQsIarf97bwImmzLYG+BcqRSd8AmAr3V/wIAz6vMW3POVSOkbmW w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="317449184"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="317449184"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 23:45:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="840674697"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="840674697"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 06 Feb 2023 23:45:31 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Feb 2023 13:14:16 +0530
Message-Id: <20230207074416.3209722-8-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230207074416.3209722-1-suraj.kandpal@intel.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 7/7] drm/i915/dsc: Add debugfs entry to
 validate DSC output formats
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

From: Swati Sharma <swati2.sharma@intel.com>

DSC_Output_Format_Sink_Support entry is added to i915_dsc_fec_support_show
to depict if sink supports DSC output formats (RGB/YCbCr420/YCbCr444).
Also, new debugfs entry is created to enforce output format. This is
required because of our driver policy. For ex. if a mode is supported
in both RGB and YCbCr420 output formats by the sink, our policy is to
try RGB first and fall back to YCbCr420, if mode cannot be shown
using RGB. So, to test other output formats like YCbCr420 or YCbCr444,
we need a debugfs entry (force_dsc_output_format) to force this
output format.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  4 +-
 .../drm/i915/display/intel_crtc_state_dump.h  |  2 +
 .../drm/i915/display/intel_display_debugfs.c  | 77 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 11 +++
 5 files changed, 93 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 2422d6ef5777..9913f22e0f79 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -115,13 +115,13 @@ static void snprintf_output_types(char *buf, size_t len,
 	WARN_ON_ONCE(output_types != 0);
 }
 
-static const char * const output_format_str[] = {
+const char * const output_format_str[] = {
 	[INTEL_OUTPUT_FORMAT_RGB] = "RGB",
 	[INTEL_OUTPUT_FORMAT_YCBCR420] = "YCBCR4:2:0",
 	[INTEL_OUTPUT_FORMAT_YCBCR444] = "YCBCR4:4:4",
 };
 
-static const char *output_formats(enum intel_output_format format)
+const char *output_formats(enum intel_output_format format)
 {
 	if (format >= ARRAY_SIZE(output_format_str))
 		return "invalid";
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
index 9399c35b7e5e..daf0a7cc0702 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
@@ -8,9 +8,11 @@
 
 struct intel_crtc_state;
 struct intel_atomic_state;
+enum intel_output_format;
 
 void intel_crtc_state_dump(const struct intel_crtc_state *crtc_state,
 			   struct intel_atomic_state *state,
 			   const char *context);
+const char *output_formats(enum intel_output_format format);
 
 #endif /* __INTEL_CRTC_STATE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 9e2fb8626c96..27b7d8dafe66 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -12,6 +12,7 @@
 #include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_de.h"
+#include "intel_crtc_state_dump.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_power.h"
 #include "intel_display_power_well.h"
@@ -1770,6 +1771,13 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 			   str_yes_no(crtc_state->dsc.compression_enable));
 		seq_printf(m, "DSC_Sink_Support: %s\n",
 			   str_yes_no(drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)));
+		seq_printf(m, "DSC_Output_Format_Sink_Support: RGB: %s YCBCR420: %s YCBCR444: %s\n",
+			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
+								      DP_DSC_RGB)),
+			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
+								      DP_DSC_YCbCr420_Native)),
+			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
+								      DP_DSC_YCbCr444)));
 		seq_printf(m, "Force_DSC_Enable: %s\n",
 			   str_yes_no(intel_dp->force_dsc_en));
 		if (!intel_dp_is_edp(intel_dp))
@@ -1895,6 +1903,72 @@ static const struct file_operations i915_dsc_bpc_fops = {
 	.write = i915_dsc_bpc_write
 };
 
+static int i915_dsc_output_format_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+	struct drm_device *dev = connector->dev;
+	struct drm_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
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
+	crtc_state = to_intel_crtc_state(crtc->state);
+	seq_printf(m, "DSC_Output_Format: %s\n", output_formats(crtc_state->output_format));
+
+out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+
+	return ret;
+}
+
+static ssize_t i915_dsc_output_format_write(struct file *file,
+					    const char __user *ubuf,
+					    size_t len, loff_t *offp)
+{
+	struct drm_connector *connector =
+		((struct seq_file *)file->private_data)->private;
+	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	int dsc_output_format = 0;
+	int ret;
+
+	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_output_format);
+	if (ret < 0)
+		return ret;
+
+	intel_dp->force_dsc_output_format = dsc_output_format;
+	*offp += len;
+
+	return len;
+}
+
+static int i915_dsc_output_format_open(struct inode *inode,
+				       struct file *file)
+{
+	return single_open(file, i915_dsc_output_format_show, inode->i_private);
+}
+
+static const struct file_operations i915_dsc_output_format_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_dsc_output_format_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_dsc_output_format_write
+};
+
 /*
  * Returns the Current CRTC's bpc.
  * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
@@ -1966,6 +2040,9 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
 
 		debugfs_create_file("i915_dsc_bpc", 0644, root,
 				    connector, &i915_dsc_bpc_fops);
+
+		debugfs_create_file("i915_dsc_output_format", 0644, root,
+				    connector, &i915_dsc_output_format_fops);
 	}
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9ccae7a46020..9f7951b49c42 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1743,6 +1743,7 @@ struct intel_dp {
 
 	/* Display stream compression testing */
 	bool force_dsc_en;
+	int force_dsc_output_format;
 	int force_dsc_bpc;
 
 	bool hobl_failed;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 250d9cdd14b8..bd2d3d11e85b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -76,6 +76,7 @@
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
+#include "intel_crtc_state_dump.h"
 
 /* DP DSC throughput values used for slice count calculations KPixels/s */
 #define DP_DSC_PEAK_PIXEL_RATE			2720000
@@ -2063,6 +2064,16 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
 	bool ycbcr_420_only;
 	int ret;
 
+	if (intel_dp->force_dsc_output_format) {
+		crtc_state->output_format = intel_dp->force_dsc_output_format;
+		drm_dbg_kms(&i915->drm, "DSC output format forced to %s",
+			    output_formats(crtc_state->output_format));
+
+		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
+						   respect_downstream_limits);
+		return ret;
+	}
+
 	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
 
 	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
-- 
2.25.1

