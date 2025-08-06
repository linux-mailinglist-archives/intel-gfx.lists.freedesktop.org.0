Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E284B1BF8A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 06:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C61610E722;
	Wed,  6 Aug 2025 04:20:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l6175ewf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9444B10E722
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 04:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754454055; x=1785990055;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BzBI2soqbz0+68eavq+vqsQzBvVovDldsA8t5iSRgY8=;
 b=l6175ewfqxvijEOqnvVb02ZMywgvPB/PWS9pYd4Kw4yKfCImX2bcLuey
 s3sTmkvm9hpwYoTppL3klmxzN9m/iIzcnd8y6Q5o9V1DvZl1o4G3e9xf0
 jN6Rj7wbABsXvG/fpe5uMUeAByqJouIwRLMCFFPDM1Z/V5rJKzuL/I5zv
 GG0wnvHwn8sgcqAND6UHdDqakkqgTQBgzHWOEOKJNzdBAbOH6LtgDonQJ
 RdtdXTG0a4CxZF7Hdqb74g2JLOLXGjsAQUY1tf9TGgFZ3/TRVbC5CA7+s
 7wOYDS4uGJ3wCNPKCmEygo9Bpg9FTwWIc/+5bUADwogdYFiCuR7mWue2J g==;
X-CSE-ConnectionGUID: /mEOz3BOQR65CQRnAWhumw==
X-CSE-MsgGUID: 0t+m3AyiQyiMrKycAJ6kIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="67837895"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="67837895"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 21:20:55 -0700
X-CSE-ConnectionGUID: WSR2G4oSRnymfGCupoSfrw==
X-CSE-MsgGUID: 9dyZLG4FSGGu5sx30ADyyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="170046238"
Received: from unknown (HELO shawnle1-i9-build-machine.itwn.intel.com)
 ([10.225.64.200])
 by orviesa005.jf.intel.com with ESMTP; 05 Aug 2025 21:20:53 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>,
	Shankar Uma <uma.shankar@intel.com>
Subject: [PATCH] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Date: Wed,  6 Aug 2025 04:20:53 +0000
Message-Id: <20250806042053.3570558-1-shawn.c.lee@intel.com>
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

While performing HDMI compliance testing, test equipment may request
different bpc output for signal measurement. However, display driver
typically determines the maximum available bpc based on HW bandwidth.

This patch introduces a new debugfs that allow user to configure
dedicated bpc manually, and making HDMI compliance test much easier.

Cc: Shankar Uma <uma.shankar@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 58 +++++++++++++++++++
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  7 +++
 3 files changed, 67 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index ce3f9810c42d..cca115a6f130 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1208,6 +1208,56 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
 	.write = i915_dsc_fractional_bpp_write
 };
 
+static int i915_hdmi_req_bpc_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+
+	seq_printf(m, "request bpc: %u\n", connector->force_hdmi_bpc);
+
+	return 0;
+}
+
+static ssize_t i915_hdmi_req_bpc_write(struct file *file,
+					const char __user *ubuf,
+					size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *intel_connector = m->private;
+	struct intel_display *display = to_intel_display(intel_connector);
+	int new_bpc = 0, ret = 0;
+	char *kbuf;
+	const char *p;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	p = strim(kbuf);
+
+	ret = kstrtoint(p, 0, &new_bpc);
+	if (ret < 0)
+		return -EINVAL;
+
+	switch (new_bpc) {
+	case 0:
+	case 8:
+	case 10:
+	case 12:
+		break;
+	default:
+		drm_dbg(display->drm,
+			"HDMI bpc (%u) may exceed the max value (12)\n", new_bpc);
+		return -EINVAL;
+	}
+
+	intel_connector->force_hdmi_bpc = new_bpc;
+
+	*offp += len;
+	kfree(kbuf);
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_hdmi_req_bpc);
+
 /*
  * Returns the Current CRTC's bpc.
  * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
@@ -1359,6 +1409,13 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
 		debugfs_create_file("i915_lpsp_capability", 0444, root,
 				    connector, &i915_lpsp_capability_fops);
+
+	if (connector_type == DRM_MODE_CONNECTOR_HDMIA ||
+	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
+		connector->force_hdmi_bpc = 0;
+		debugfs_create_file("i915_force_hdmi_bpc", 0644, root,
+				    connector, &i915_hdmi_req_bpc_fops);
+	}
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4d9df803ad47..e1e42d701f68 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -564,6 +564,8 @@ struct intel_connector {
 	struct work_struct modeset_retry_work;
 
 	struct intel_hdcp hdcp;
+
+	u8 force_hdmi_bpc;
 };
 
 struct intel_digital_connector_state {
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index cbee628eb26b..0aa4044e2854 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2118,6 +2118,7 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
 				  int clock, bool respect_downstream_limits)
 {
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
+	struct intel_connector *intel_connector = intel_hdmi->attached_connector;
 	int bpc;
 
 	/*
@@ -2134,6 +2135,12 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
 	if (!respect_downstream_limits)
 		bpc = 8;
 
+	/*
+	 * overwrite bpc per user's request
+	 */
+	if (intel_connector->force_hdmi_bpc)
+		bpc = intel_connector->force_hdmi_bpc;
+
 	for (; bpc >= 8; bpc -= 2) {
 		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
 						       crtc_state->sink_format);
-- 
2.34.1

