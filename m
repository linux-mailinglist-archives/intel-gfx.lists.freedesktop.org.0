Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACF161EC45
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D1510E24D;
	Mon,  7 Nov 2022 07:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFDD10E1FC
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 07:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667806836; x=1699342836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a645WncmYnNosqLxQ4K+y36Nj18cvqO5jdsV85AOIrc=;
 b=WCKnTI4MrH86EZl0hTBCPccZY4+AIwiQxnq/UcQX+9iye48RInY7sK4N
 gXH+v+x4AxWjTWqRZ3RHeglw1//0vHSCq58N/Kx9p4jHIvfAAbjo/BsQm
 HZlxFG5zfaO/PBSB1O/xcr9fG2BJ/AJxUG1m4aUGyiHWCeAi/uMjnJChw
 XmIeDHPsmjJIfyg7vPJBbkkmdxTRnDg+nxypROQA3fT0exqKzQTUo13uY
 nE12yNAXa1SQ6aeO7zyWrBvc/ClIDDYMnb3zHNWcCaXuxscbvBQLjlhfB
 Y/rI5xX9axwag0go6cuPwS0ab7FOhoU4D7HQERakEA+w00CPUWXSw+OmQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="311482343"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="311482343"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:40:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="965051651"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="965051651"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga005.fm.intel.com with ESMTP; 06 Nov 2022 23:40:34 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 13:09:21 +0530
Message-Id: <20221107073923.1353049-7-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107073923.1353049-1-suraj.kandpal@intel.com>
References: <20221107073923.1353049-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 6/8] drm/i915/dsc: Add debugfs entry to
 validate DSC YCbCr420
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

DSC_YCBCR420_Sink_Support entry is added to i915_dsc_fec_support_show
to depict if sink supports DSC YCbCr420.
Also, new debugfs entry is created to enforce YCbCr420 output format.
This is required because of our driver policy.
If a mode is supported in both RGB and YCbCr420 output
formats by the sink, our policy is to try RGB first and
fall back to YCbCr420, if mode cannot be shown using RGB.
So, to test YCbCr420, we need a debugfs entry (force_dsc_ycbcr420)
to force thisoutput format; so that YCbCr420 code gets executed.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 85 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  1 +
 2 files changed, 86 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index cfc056a05bbf..2ccaf698cbfb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1770,6 +1770,9 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 			   str_yes_no(drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)));
 		seq_printf(m, "Force_DSC_Enable: %s\n",
 			   str_yes_no(intel_dp->force_dsc_en));
+		seq_printf(m, "DSC_YCBCR420_Sink_Support: %s\n",
+			   str_yes_no(drm_dp_dsc_sink_supports_format(intel_dp->dsc_dpcd,
+								      DP_DSC_YCbCr420_Native)));
 		if (!intel_dp_is_edp(intel_dp))
 			seq_printf(m, "FEC_Sink_Support: %s\n",
 				   str_yes_no(drm_dp_sink_supports_fec(intel_dp->fec_capable)));
@@ -1893,6 +1896,85 @@ static const struct file_operations i915_dsc_bpc_fops = {
 	.write = i915_dsc_bpc_write
 };
 
+static int i915_dsc_ycbcr420_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+	struct drm_device *dev = connector->dev;
+	struct drm_crtc *crtc;
+	struct intel_dp *intel_dp;
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
+	intel_dp = intel_attached_dp(to_intel_connector(connector));
+	crtc_state = to_intel_crtc_state(crtc->state);
+	seq_printf(m, "Force_DSC_YCBCR420_Enable: %s\n",
+		   str_yes_no(intel_dp->force_dsc_ycbcr420_en));
+
+out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+
+	return ret;
+}
+
+static ssize_t i915_dsc_ycbcr420_write(struct file *file,
+				       const char __user *ubuf,
+				       size_t len, loff_t *offp)
+{
+	struct drm_connector *connector =
+		((struct seq_file *)file->private_data)->private;
+	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	bool dsc_ycbcr420_enable = false;
+	int ret;
+
+	if (len == 0)
+		return 0;
+
+	drm_dbg(&i915->drm,
+		"Copied %zu bytes from user to force YCBCR420 for DSC\n", len);
+
+	ret = kstrtobool_from_user(ubuf, len, &dsc_ycbcr420_enable);
+	if (ret < 0)
+		return ret;
+
+	drm_dbg(&i915->drm, "Got %s for DSC YCBCR420 Enable\n",
+		(dsc_ycbcr420_enable) ? "true" : "false");
+	intel_dp->force_dsc_ycbcr420_en = dsc_ycbcr420_enable;
+
+	*offp += len;
+
+	return len;
+}
+
+static int i915_dsc_ycbcr420_open(struct inode *inode,
+				  struct file *file)
+{
+	return single_open(file, i915_dsc_ycbcr420_show, inode->i_private);
+}
+
+static const struct file_operations i915_dsc_ycbcr420_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_dsc_ycbcr420_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_dsc_ycbcr420_write
+};
+
 /*
  * Returns the Current CRTC's bpc.
  * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
@@ -1964,6 +2046,9 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
 
 		debugfs_create_file("i915_dsc_bpc", 0644, root,
 				    connector, &i915_dsc_bpc_fops);
+
+		debugfs_create_file("i915_dsc_ycbcr420", 0644, root,
+				    connector, &i915_dsc_ycbcr420_fops);
 	}
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c6abaaa46e17..4b982a0dadf6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1717,6 +1717,7 @@ struct intel_dp {
 
 	/* Display stream compression testing */
 	bool force_dsc_en;
+	bool force_dsc_ycbcr420_en;
 	int force_dsc_bpc;
 
 	bool hobl_failed;
-- 
2.25.1

