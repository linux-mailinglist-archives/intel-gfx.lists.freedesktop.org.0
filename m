Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1704E8F52
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 09:52:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1BE10EA23;
	Mon, 28 Mar 2022 07:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8B810EA3E
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 07:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648453931; x=1679989931;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mqR8HPZCem1p6nADl/Qz71EmoNpkKEyISAQn33uedDM=;
 b=Vj9GSaimBcRxDrpkmtjNMOGc3KSKAptCZQn4GWbdlHKwjLjR0hWj/C9N
 F/d4OyOuGpCMOOI+NP3l+9cnDkD1XHWTL6/d5MwEoQ5Fc1IaSAhkYYIUz
 wAHheTgg27Vf+HV1EquecBK+Aq5rne+VLxA5beS6CzRBhbihwZ5h2Rb0D
 RCg1x1kSMIGRHcBIiXgNCx34V4PHfVrAs5Butamk2pkXS/SDI0IHgJ9us
 KkPjwPc2wkE+MIKulrMh0SsgV/D0VAhYakHxy/XmF3h3EhIF3WEhwkJJl
 my7KlFV9TzErQruMZSHWbzhd9ub5kZqbqU81kRYqKWP412Pj85KNLhW5W g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="258654223"
X-IronPort-AV: E=Sophos;i="5.90,216,1643702400"; d="scan'208";a="258654223"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 00:52:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,216,1643702400"; d="scan'208";a="545862418"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 00:52:09 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 13:20:20 +0530
Message-Id: <20220328075020.708022-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/debugfs: Add connector debugfs
 for "output_bpc"
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

This new debugfs will expose the connector's max supported bpc
and the bpc currently using. It is very useful for verifying
whether we enter the correct output color depth from IGT.

Example:
cat /sys/kernel/debug/dri/0/DP-1/output_bpc
Current: 8
Maximum: 10

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index c1e74a13a0828..3792952a7c219 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2275,6 +2275,47 @@ static const struct file_operations i915_dsc_bpp_fops = {
 	.write = i915_dsc_bpp_write
 };
 
+/*
+ * Returns the maximum output bpc for the connector.
+ * Example usage: cat /sys/kernel/debug/dri/0/DP-1/output_bpc
+ */
+static int output_bpc_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+	struct drm_device *dev = connector->dev;
+	struct drm_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
+	int res;
+
+	if (!encoder)
+		return -ENODEV;
+
+	res = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
+	if (res)
+		return res;
+
+	crtc = connector->state->crtc;
+	if (connector->status != connector_status_connected || !crtc) {
+		res = -ENODEV;
+		goto unlock;
+	}
+
+	crtc_state = to_intel_crtc_state(crtc->state);
+	if (!crtc_state->hw.active)
+		goto unlock;
+
+	seq_printf(m, "Current: %u\n", crtc_state->pipe_bpp / 3);
+	seq_printf(m, "Maximum: %u\n", connector->display_info.bpc);
+	res = 0;
+
+unlock:
+	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+
+	return res;
+}
+DEFINE_SHOW_ATTRIBUTE(output_bpc);
+
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
  * @connector: pointer to a registered drm_connector
@@ -2330,6 +2371,9 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
 	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB)
 		debugfs_create_file("i915_lpsp_capability", 0444, root,
 				    connector, &i915_lpsp_capability_fops);
+
+	debugfs_create_file("output_bpc", 0444, root,
+			    connector, &output_bpc_fops);
 }
 
 /**
-- 
2.35.1

