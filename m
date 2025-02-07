Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E6EA2BB41
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 07:16:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD43010E073;
	Fri,  7 Feb 2025 06:16:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TXnwqT3K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 836DD10E073;
 Fri,  7 Feb 2025 06:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738908903; x=1770444903;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LqoT2jR7N8X1/ryUf17NHJUkdD6ZT5SD5lNDTMrILK0=;
 b=TXnwqT3K3V1GopXZ3fbnu9VLHIvd1O8eCRXI/Zu9D2n0ndxPUFq+MGWB
 Jn77I9GDCFu7RR2ky2+wnGhgegNfGZm+O/7a/eu+WjxCNgBbqREo9JIHI
 Nqfk8J1lhl9+Kq3Y+qfdZ/6x58I/R+Yw9q0r08DlUWT+ioxMCanSO75Bm
 R5y6u1LuySaB/pc/4/S/rs+Qd415oT5ivVhIVGoCNq56ffK/6Nd60iDjU
 U/WMc6bCAn6AlCOw2hmEUYN/vhiJx4hu9Q1zsDW0bsROY/FUpx2reJJry
 QHiJ8JVp/06x15VU33a6qiTUTty2b7X5l/EBhtlEGIvZ9VA2fR9DhzH2Y Q==;
X-CSE-ConnectionGUID: IwxM2k33SdKZ5Zkx+2iRaQ==
X-CSE-MsgGUID: vWgkHXbSStm3p31bMvYBNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39693626"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="39693626"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 22:15:02 -0800
X-CSE-ConnectionGUID: npn5AdtSQCa+Ffz8lGAY4A==
X-CSE-MsgGUID: wZ9G/QpsQKaZXMlqA0a0bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="134670972"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 06 Feb 2025 22:15:00 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, santhosh.reddy.guddati@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/hdcp: Create force_hdcp14 debug fs entry
Date: Fri,  7 Feb 2025 11:44:54 +0530
Message-Id: <20250207061454.3030060-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Testing HDCP 1.4 becomes tough since the only way our code comes to
HDCP 1.4 pathway is if the monitor only supports HDCP 1.4 which
becomes tough to find sometimes.
Setting this debug_fs entry will force use to use the HDCP 1.4 path
so that more robust HDCP 1.4 testing can take place.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 76 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
 3 files changed, 79 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 926f09c35084..1b34aed98849 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1383,6 +1383,80 @@ static const struct file_operations i915_joiner_fops = {
 	.write = i915_joiner_write
 };
 
+static ssize_t i915_force_hdcp14_write(struct file *file,
+				       const char __user *ubuf,
+				       size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_hdcp *hdcp = &connector->hdcp;
+	bool force_hdcp14 = false;
+	int ret;
+
+	if (len == 0)
+		return 0;
+
+	drm_dbg(display->drm,
+		"Copied %zu bytes from user to force DSC\n", len);
+
+	ret = kstrtobool_from_user(ubuf, len, &force_hdcp14);
+	if (ret < 0)
+		return ret;
+
+	drm_dbg(display->drm, "Got %s for force HDCP1.4\n",
+		(force_hdcp14) ? "true" : "false");
+	hdcp->force_hdcp14 = force_hdcp14;
+
+	*offp += len;
+	return len;
+}
+
+static int i915_force_hdcp14_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct drm_crtc *crtc;
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
+	seq_printf(m, "Force_HDCP14: %s\n",
+		   str_yes_no(hdcp->force_hdcp14));
+out:
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+	return ret;
+}
+
+static int i915_force_hdcp14_open(struct inode *inode,
+				  struct file *file)
+{
+	return single_open(file, i915_force_hdcp14_show,
+			   inode->i_private);
+}
+
+static const struct file_operations i915_force_hdcp14_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_force_hdcp14_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_force_hdcp14_write
+};
+
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
  * @connector: pointer to a registered intel_connector
@@ -1411,6 +1485,8 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
 		debugfs_create_file("i915_hdcp_sink_capability", 0444, root,
 				    connector, &i915_hdcp_sink_capability_fops);
+		debugfs_create_file("i915_force_hdcp14", 0644, root,
+				    connector, &i915_force_hdcp14_fops);
 	}
 
 	if (DISPLAY_VER(i915) >= 11 &&
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6a82c6ade549..c78dd77ef74c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -496,6 +496,8 @@ struct intel_hdcp {
 	enum transcoder cpu_transcoder;
 	/* Only used for DP MST stream encryption */
 	enum transcoder stream_transcoder;
+	/* Used to force HDCP 1.4 bypassing HDCP 2.x */
+	bool force_hdcp14;
 };
 
 struct intel_connector {
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 7cc0399b2a5d..c008e4f1ce05 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2473,7 +2473,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
 	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
 	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
 	 */
-	if (intel_hdcp2_get_capability(connector)) {
+	if (intel_hdcp2_get_capability(connector) && !hdcp->force_hdcp14) {
 		ret = _intel_hdcp2_enable(state, connector);
 		if (!ret)
 			check_link_interval =
-- 
2.34.1

