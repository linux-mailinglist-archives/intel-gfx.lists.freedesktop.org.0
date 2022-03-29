Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C584EA7B0
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 08:09:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B05ED10F000;
	Tue, 29 Mar 2022 06:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E480610F000
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 06:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648534159; x=1680070159;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VZ2HvPu26DBJkEL8oucjMk2avD3HdgJ2tmbCn/If9mo=;
 b=A0nwK8mRLJTWpCL2cCOn7z57x25SMaawH1BHFJd0/gbnArK+Bhbcle6t
 ARlFyYHU5T0KyKO1Ttp5NbzXmSxYqxGrX7QyS8NNy1li/1Kv7wMNmdbP7
 QP4TOlND49S1puV0ILSFG0Ghde4z3xU2siF9gGBmWFrOqyWk34wfn/Hta
 KQvrU0Wmh+N2EzfGLvmOJ4tttTLwfkK7QUd48s/81Q2OkgbbDqddhXwNT
 7tDsk0uy2nmmyItf48QqhYwC4iYQ8wp3AmEOhwD4QA5bYx301jmBtc/Jb
 oSkmTwUCMt0hEwZQqOYwQj7Nlk6IQYyEjLA2DX5BSG4CX3BAZaVmUGKOk Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="284066380"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="284066380"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 23:09:19 -0700
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="546255037"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 23:09:16 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 11:37:31 +0530
Message-Id: <20220329060731.785476-1-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220328075020.708022-1-bhanuprakash.modem@intel.com>
References: <20220328075020.708022-1-bhanuprakash.modem@intel.com>
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

V2: Add connector's max bpc to i915_display_info

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index c1e74a13a0828..694d27f3b109c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -663,6 +663,8 @@ static void intel_connector_info(struct seq_file *m,
 	seq_puts(m, "\tHDCP version: ");
 	intel_hdcp_info(m, intel_connector);
 
+	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
+
 	intel_panel_info(m, intel_connector);
 
 	seq_printf(m, "\tmodes:\n");
@@ -2275,6 +2277,47 @@ static const struct file_operations i915_dsc_bpp_fops = {
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
@@ -2330,6 +2373,9 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
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

