Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BA697D50B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 626AB10E825;
	Fri, 20 Sep 2024 11:57:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhbpmHYi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2513A10E82C;
 Fri, 20 Sep 2024 11:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833445; x=1758369445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GuvpLufNs1qgBQ5HjQ2V5xKONHXcdmhmZjzTLNdLdP8=;
 b=lhbpmHYiOboYiaeCei9xoy3WIXiYbxLirepZLXx32lzDsE7xgvrmSoi0
 13OjJP3dPhAuXy+l095pUF9cDGoVqbhm5vKcK3UzzWwXHPJsmfpjcJ8sS
 gwA2juto/ayoLZwBbcNa8F3ljjxSoZGjKbpSopBcI8ZpAgdpqVhSBgTqL
 /PVAA2AO8cdHLbuQc+uV8i0DXPKzAhA6gD13RBMB1DJiWQD24VcsU5Dq5
 QRQJkRlo+oKryfGOnbDW1xvp6jHd2OBxi2BQ49rftjB5G9WTNBWb6Ihq2
 Na928GQgRIEUUDHXF4tOcQbEctg2P3rgbkygI5TwWMKRY7qp/6DQw8KS4 g==;
X-CSE-ConnectionGUID: GwVN6BzxRqienFIJR69WCw==
X-CSE-MsgGUID: 1ZiHTq5FT1O2hs1Vmp/fPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25984567"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25984567"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:25 -0700
X-CSE-ConnectionGUID: tKpNm9BMRBGPrnlzzB+7hg==
X-CSE-MsgGUID: epx7miyoRz6MZMlSQKsiwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70519166"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.155])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/9] drm/i915/dp: move DP test debugfs files next to the
 functionality
Date: Fri, 20 Sep 2024 14:56:47 +0300
Message-Id: <46779bc4e420868e21bd5e72fdf245a541252fde.1726833193.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726833193.git.jani.nikula@intel.com>
References: <cover.1726833193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Move the DP test debugfs files to intel_dp_test.[ch].

Side note: The debugfs looks like it begs to be converted to connector
debugfs, but that's for another day.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 197 +---------------
 drivers/gpu/drm/i915/display/intel_dp_test.c  | 217 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_test.h  |   2 +
 3 files changed, 221 insertions(+), 195 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index a3f9514f69ea..484be08048cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -27,6 +27,7 @@
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
+#include "intel_dp_test.h"
 #include "intel_drrs.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
@@ -792,198 +793,6 @@ static int i915_dp_mst_info(struct seq_file *m, void *unused)
 	return 0;
 }
 
-static ssize_t i915_displayport_test_active_write(struct file *file,
-						  const char __user *ubuf,
-						  size_t len, loff_t *offp)
-{
-	char *input_buffer;
-	int status = 0;
-	struct drm_device *dev;
-	struct drm_connector *connector;
-	struct drm_connector_list_iter conn_iter;
-	struct intel_dp *intel_dp;
-	int val = 0;
-
-	dev = ((struct seq_file *)file->private_data)->private;
-
-	if (len == 0)
-		return 0;
-
-	input_buffer = memdup_user_nul(ubuf, len);
-	if (IS_ERR(input_buffer))
-		return PTR_ERR(input_buffer);
-
-	drm_dbg(dev, "Copied %d bytes from user\n", (unsigned int)len);
-
-	drm_connector_list_iter_begin(dev, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
-		struct intel_encoder *encoder;
-
-		if (connector->connector_type !=
-		    DRM_MODE_CONNECTOR_DisplayPort)
-			continue;
-
-		encoder = to_intel_encoder(connector->encoder);
-		if (encoder && encoder->type == INTEL_OUTPUT_DP_MST)
-			continue;
-
-		if (encoder && connector->status == connector_status_connected) {
-			intel_dp = enc_to_intel_dp(encoder);
-			status = kstrtoint(input_buffer, 10, &val);
-			if (status < 0)
-				break;
-			drm_dbg(dev, "Got %d for test active\n", val);
-			/* To prevent erroneous activation of the compliance
-			 * testing code, only accept an actual value of 1 here
-			 */
-			if (val == 1)
-				intel_dp->compliance.test_active = true;
-			else
-				intel_dp->compliance.test_active = false;
-		}
-	}
-	drm_connector_list_iter_end(&conn_iter);
-	kfree(input_buffer);
-	if (status < 0)
-		return status;
-
-	*offp += len;
-	return len;
-}
-
-static int i915_displayport_test_active_show(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = m->private;
-	struct drm_connector *connector;
-	struct drm_connector_list_iter conn_iter;
-	struct intel_dp *intel_dp;
-
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
-		struct intel_encoder *encoder;
-
-		if (connector->connector_type !=
-		    DRM_MODE_CONNECTOR_DisplayPort)
-			continue;
-
-		encoder = to_intel_encoder(connector->encoder);
-		if (encoder && encoder->type == INTEL_OUTPUT_DP_MST)
-			continue;
-
-		if (encoder && connector->status == connector_status_connected) {
-			intel_dp = enc_to_intel_dp(encoder);
-			if (intel_dp->compliance.test_active)
-				seq_puts(m, "1");
-			else
-				seq_puts(m, "0");
-		} else
-			seq_puts(m, "0");
-	}
-	drm_connector_list_iter_end(&conn_iter);
-
-	return 0;
-}
-
-static int i915_displayport_test_active_open(struct inode *inode,
-					     struct file *file)
-{
-	return single_open(file, i915_displayport_test_active_show,
-			   inode->i_private);
-}
-
-static const struct file_operations i915_displayport_test_active_fops = {
-	.owner = THIS_MODULE,
-	.open = i915_displayport_test_active_open,
-	.read = seq_read,
-	.llseek = seq_lseek,
-	.release = single_release,
-	.write = i915_displayport_test_active_write
-};
-
-static int i915_displayport_test_data_show(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = m->private;
-	struct drm_connector *connector;
-	struct drm_connector_list_iter conn_iter;
-	struct intel_dp *intel_dp;
-
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
-		struct intel_encoder *encoder;
-
-		if (connector->connector_type !=
-		    DRM_MODE_CONNECTOR_DisplayPort)
-			continue;
-
-		encoder = to_intel_encoder(connector->encoder);
-		if (encoder && encoder->type == INTEL_OUTPUT_DP_MST)
-			continue;
-
-		if (encoder && connector->status == connector_status_connected) {
-			intel_dp = enc_to_intel_dp(encoder);
-			if (intel_dp->compliance.test_type ==
-			    DP_TEST_LINK_EDID_READ)
-				seq_printf(m, "%lx",
-					   intel_dp->compliance.test_data.edid);
-			else if (intel_dp->compliance.test_type ==
-				 DP_TEST_LINK_VIDEO_PATTERN) {
-				seq_printf(m, "hdisplay: %d\n",
-					   intel_dp->compliance.test_data.hdisplay);
-				seq_printf(m, "vdisplay: %d\n",
-					   intel_dp->compliance.test_data.vdisplay);
-				seq_printf(m, "bpc: %u\n",
-					   intel_dp->compliance.test_data.bpc);
-			} else if (intel_dp->compliance.test_type ==
-				   DP_TEST_LINK_PHY_TEST_PATTERN) {
-				seq_printf(m, "pattern: %d\n",
-					   intel_dp->compliance.test_data.phytest.phy_pattern);
-				seq_printf(m, "Number of lanes: %d\n",
-					   intel_dp->compliance.test_data.phytest.num_lanes);
-				seq_printf(m, "Link Rate: %d\n",
-					   intel_dp->compliance.test_data.phytest.link_rate);
-				seq_printf(m, "level: %02x\n",
-					   intel_dp->train_set[0]);
-			}
-		} else
-			seq_puts(m, "0");
-	}
-	drm_connector_list_iter_end(&conn_iter);
-
-	return 0;
-}
-DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_data);
-
-static int i915_displayport_test_type_show(struct seq_file *m, void *data)
-{
-	struct drm_i915_private *dev_priv = m->private;
-	struct drm_connector *connector;
-	struct drm_connector_list_iter conn_iter;
-	struct intel_dp *intel_dp;
-
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
-		struct intel_encoder *encoder;
-
-		if (connector->connector_type !=
-		    DRM_MODE_CONNECTOR_DisplayPort)
-			continue;
-
-		encoder = to_intel_encoder(connector->encoder);
-		if (encoder && encoder->type == INTEL_OUTPUT_DP_MST)
-			continue;
-
-		if (encoder && connector->status == connector_status_connected) {
-			intel_dp = enc_to_intel_dp(encoder);
-			seq_printf(m, "%02lx\n", intel_dp->compliance.test_type);
-		} else
-			seq_puts(m, "0");
-	}
-	drm_connector_list_iter_end(&conn_iter);
-
-	return 0;
-}
-DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_type);
-
 static ssize_t
 i915_fifo_underrun_reset_write(struct file *filp,
 			       const char __user *ubuf,
@@ -1062,9 +871,6 @@ static const struct {
 	const struct file_operations *fops;
 } intel_display_debugfs_files[] = {
 	{"i915_fifo_underrun_reset", &i915_fifo_underrun_reset_ops},
-	{"i915_dp_test_data", &i915_displayport_test_data_fops},
-	{"i915_dp_test_type", &i915_displayport_test_type_fops},
-	{"i915_dp_test_active", &i915_displayport_test_active_fops},
 };
 
 void intel_display_debugfs_register(struct drm_i915_private *i915)
@@ -1088,6 +894,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_bios_debugfs_register(display);
 	intel_cdclk_debugfs_register(display);
 	intel_dmc_debugfs_register(display);
+	intel_dp_test_debugfs_register(display);
 	intel_fbc_debugfs_register(display);
 	intel_hpd_debugfs_register(i915);
 	intel_opregion_debugfs_register(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 4608aa34df42..7a9b0ad161d6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2024 Intel Corporation */
 
+#include <linux/debugfs.h>
+
 #include <drm/display/drm_dp.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_edid.h>
@@ -507,3 +509,218 @@ bool intel_dp_test_phy(struct intel_dp *intel_dp)
 
 	return true;
 }
+
+static ssize_t i915_displayport_test_active_write(struct file *file,
+						  const char __user *ubuf,
+						  size_t len, loff_t *offp)
+{
+	char *input_buffer;
+	int status = 0;
+	struct drm_device *dev;
+	struct drm_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+	struct intel_dp *intel_dp;
+	int val = 0;
+
+	dev = ((struct seq_file *)file->private_data)->private;
+
+	if (len == 0)
+		return 0;
+
+	input_buffer = memdup_user_nul(ubuf, len);
+	if (IS_ERR(input_buffer))
+		return PTR_ERR(input_buffer);
+
+	drm_dbg(dev, "Copied %d bytes from user\n", (unsigned int)len);
+
+	drm_connector_list_iter_begin(dev, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		struct intel_encoder *encoder;
+
+		if (connector->connector_type !=
+		    DRM_MODE_CONNECTOR_DisplayPort)
+			continue;
+
+		encoder = to_intel_encoder(connector->encoder);
+		if (encoder && encoder->type == INTEL_OUTPUT_DP_MST)
+			continue;
+
+		if (encoder && connector->status == connector_status_connected) {
+			intel_dp = enc_to_intel_dp(encoder);
+			status = kstrtoint(input_buffer, 10, &val);
+			if (status < 0)
+				break;
+			drm_dbg(dev, "Got %d for test active\n", val);
+			/* To prevent erroneous activation of the compliance
+			 * testing code, only accept an actual value of 1 here
+			 */
+			if (val == 1)
+				intel_dp->compliance.test_active = true;
+			else
+				intel_dp->compliance.test_active = false;
+		}
+	}
+	drm_connector_list_iter_end(&conn_iter);
+	kfree(input_buffer);
+	if (status < 0)
+		return status;
+
+	*offp += len;
+	return len;
+}
+
+static int i915_displayport_test_active_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = m->private;
+	struct drm_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+	struct intel_dp *intel_dp;
+
+	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		struct intel_encoder *encoder;
+
+		if (connector->connector_type !=
+		    DRM_MODE_CONNECTOR_DisplayPort)
+			continue;
+
+		encoder = to_intel_encoder(connector->encoder);
+		if (encoder && encoder->type == INTEL_OUTPUT_DP_MST)
+			continue;
+
+		if (encoder && connector->status == connector_status_connected) {
+			intel_dp = enc_to_intel_dp(encoder);
+			if (intel_dp->compliance.test_active)
+				seq_puts(m, "1");
+			else
+				seq_puts(m, "0");
+		} else
+			seq_puts(m, "0");
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	return 0;
+}
+
+static int i915_displayport_test_active_open(struct inode *inode,
+					     struct file *file)
+{
+	return single_open(file, i915_displayport_test_active_show,
+			   inode->i_private);
+}
+
+static const struct file_operations i915_displayport_test_active_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_displayport_test_active_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_displayport_test_active_write
+};
+
+static int i915_displayport_test_data_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = m->private;
+	struct drm_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+	struct intel_dp *intel_dp;
+
+	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		struct intel_encoder *encoder;
+
+		if (connector->connector_type !=
+		    DRM_MODE_CONNECTOR_DisplayPort)
+			continue;
+
+		encoder = to_intel_encoder(connector->encoder);
+		if (encoder && encoder->type == INTEL_OUTPUT_DP_MST)
+			continue;
+
+		if (encoder && connector->status == connector_status_connected) {
+			intel_dp = enc_to_intel_dp(encoder);
+			if (intel_dp->compliance.test_type ==
+			    DP_TEST_LINK_EDID_READ)
+				seq_printf(m, "%lx",
+					   intel_dp->compliance.test_data.edid);
+			else if (intel_dp->compliance.test_type ==
+				 DP_TEST_LINK_VIDEO_PATTERN) {
+				seq_printf(m, "hdisplay: %d\n",
+					   intel_dp->compliance.test_data.hdisplay);
+				seq_printf(m, "vdisplay: %d\n",
+					   intel_dp->compliance.test_data.vdisplay);
+				seq_printf(m, "bpc: %u\n",
+					   intel_dp->compliance.test_data.bpc);
+			} else if (intel_dp->compliance.test_type ==
+				   DP_TEST_LINK_PHY_TEST_PATTERN) {
+				seq_printf(m, "pattern: %d\n",
+					   intel_dp->compliance.test_data.phytest.phy_pattern);
+				seq_printf(m, "Number of lanes: %d\n",
+					   intel_dp->compliance.test_data.phytest.num_lanes);
+				seq_printf(m, "Link Rate: %d\n",
+					   intel_dp->compliance.test_data.phytest.link_rate);
+				seq_printf(m, "level: %02x\n",
+					   intel_dp->train_set[0]);
+			}
+		} else
+			seq_puts(m, "0");
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_data);
+
+static int i915_displayport_test_type_show(struct seq_file *m, void *data)
+{
+	struct drm_i915_private *dev_priv = m->private;
+	struct drm_connector *connector;
+	struct drm_connector_list_iter conn_iter;
+	struct intel_dp *intel_dp;
+
+	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_for_each_connector_iter(connector, &conn_iter) {
+		struct intel_encoder *encoder;
+
+		if (connector->connector_type !=
+		    DRM_MODE_CONNECTOR_DisplayPort)
+			continue;
+
+		encoder = to_intel_encoder(connector->encoder);
+		if (encoder && encoder->type == INTEL_OUTPUT_DP_MST)
+			continue;
+
+		if (encoder && connector->status == connector_status_connected) {
+			intel_dp = enc_to_intel_dp(encoder);
+			seq_printf(m, "%02lx\n", intel_dp->compliance.test_type);
+		} else
+			seq_puts(m, "0");
+	}
+	drm_connector_list_iter_end(&conn_iter);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_type);
+
+static const struct {
+	const char *name;
+	const struct file_operations *fops;
+} intel_display_debugfs_files[] = {
+	{"i915_dp_test_data", &i915_displayport_test_data_fops},
+	{"i915_dp_test_type", &i915_displayport_test_type_fops},
+	{"i915_dp_test_active", &i915_displayport_test_active_fops},
+};
+
+void intel_dp_test_debugfs_register(struct intel_display *display)
+{
+	struct drm_minor *minor = display->drm->primary;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(intel_display_debugfs_files); i++) {
+		debugfs_create_file(intel_display_debugfs_files[i].name,
+				    0644,
+				    minor->debugfs_root,
+				    to_i915(minor->dev),
+				    intel_display_debugfs_files[i].fops);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.h b/drivers/gpu/drm/i915/display/intel_dp_test.h
index cfd3dccdd91d..d64158b5a468 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.h
@@ -7,6 +7,7 @@
 #include <linux/types.h>
 
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dp;
 struct link_config_limits;
 
@@ -15,5 +16,6 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *pipe_config,
 				  struct link_config_limits *limits);
 bool intel_dp_test_phy(struct intel_dp *intel_dp);
+void intel_dp_test_debugfs_register(struct intel_display *display);
 
 #endif /* __INTEL_DP_TEST_H__ */
-- 
2.39.2

