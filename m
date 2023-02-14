Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0438D696199
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 12:00:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0AC10E87A;
	Tue, 14 Feb 2023 11:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75FC210E87A
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 11:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676372423; x=1707908423;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0BANjo/lT0i08FLHvwzfSwBcdvuRkkWCybM+6W8Gq7E=;
 b=UJszcKr3m3lCJhdB7Qta8n+DgiaHjjw1grP6tDUMQXPKZDVC35N/oC4Z
 msmKpilfhVVT+H800F60tzuPcELqlnoZHjTc9frJFX17L+Og9pneIFRXq
 N8WFNvjLhCG49mDUejt1/+ABJ6oX3jfgleaJvySwa8spYauHda/TLNceO
 5d598MMN0d7p399VIQUncqF9TOOIwoMgFu5KMqevu+e8g1YpFH+DmCdSq
 Qm3mNYwFhP1W4cnVjl9OBVTKmWUw/bFHpgUfyssidmN6k7pUufqGcUe11
 TNeuUEn57XYMEIn7nvld58hoc54wiuubXKofzOl5wG31g9C8xtwtppBv3 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="393535707"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="393535707"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:00:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="662503100"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="662503100"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 03:00:21 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 16:32:40 +0530
Message-Id: <20230214110240.3428-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230207074416.3209722-8-suraj.kandpal@intel.com>
References: <20230207074416.3209722-8-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v11] drm/i915/dsc: Add debugfs entry to validate DSC
 output formats
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

DSC_Output_Format_Sink_Support entry is added to i915_dsc_fec_support_show
to depict if sink supports DSC output formats (RGB/YCbCr420/YCbCr444).
Also, new debugfs entry is created to enforce output format. This is
required because of our driver policy. For ex. if a mode is supported
in both RGB and YCbCr420 output formats by the sink, our policy is to
try RGB first and fall back to YCbCr420, if mode cannot be shown
using RGB. So, to test other output formats like YCbCr420 or YCbCr444,
we need a debugfs entry (force_dsc_output_format) to force this
output format.

v2: -Func name changed to intel_output_format_name() (Jani N)
    -Return forced o/p format from intel_dp_output_format() (Jani N)
v3: -output_format_str[] to remain static (Jani N)

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 .../drm/i915/display/intel_crtc_state_dump.c  |  4 +-
 .../drm/i915/display/intel_crtc_state_dump.h  |  2 +
 .../drm/i915/display/intel_display_debugfs.c  | 77 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 +
 5 files changed, 86 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 2422d6ef5777..45655efc9468 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -121,7 +121,7 @@ static const char * const output_format_str[] = {
 	[INTEL_OUTPUT_FORMAT_YCBCR444] = "YCBCR4:4:4",
 };
 
-static const char *output_formats(enum intel_output_format format)
+const char *intel_output_format_name(enum intel_output_format format)
 {
 	if (format >= ARRAY_SIZE(output_format_str))
 		return "invalid";
@@ -179,7 +179,7 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		    "active: %s, output_types: %s (0x%x), output format: %s\n",
 		    str_yes_no(pipe_config->hw.active),
 		    buf, pipe_config->output_types,
-		    output_formats(pipe_config->output_format));
+		    intel_output_format_name(pipe_config->output_format));
 
 	drm_dbg_kms(&i915->drm,
 		    "cpu_transcoder: %s, pipe bpp: %i, dithering: %i\n",
diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
index 9399c35b7e5e..780f3f1190d7 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.h
@@ -8,9 +8,11 @@
 
 struct intel_crtc_state;
 struct intel_atomic_state;
+enum intel_output_format;
 
 void intel_crtc_state_dump(const struct intel_crtc_state *crtc_state,
 			   struct intel_atomic_state *state,
 			   const char *context);
+const char *intel_output_format_name(enum intel_output_format format);
 
 #endif /* __INTEL_CRTC_STATE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 9e2fb8626c96..e4b04c690e4f 100644
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
+	seq_printf(m, "DSC_Output_Format: %s\n", intel_output_format_name(crtc_state->output_format));
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
index 4a5f7c476305..fccb69a58111 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -76,6 +76,7 @@
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
+#include "intel_crtc_state_dump.h"
 
 /* DP DSC throughput values used for slice count calculations KPixels/s */
 #define DP_DSC_PEAK_PIXEL_RATE			2720000
@@ -810,6 +811,9 @@ intel_dp_output_format(struct intel_connector *connector,
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
+	if (intel_dp->force_dsc_output_format)
+		return intel_dp->force_dsc_output_format;
+
 	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
 		return INTEL_OUTPUT_FORMAT_RGB;
 
-- 
2.25.1

