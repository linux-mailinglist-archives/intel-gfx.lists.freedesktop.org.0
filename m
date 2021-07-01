Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4D83B8FBD
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 11:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD1416EABF;
	Thu,  1 Jul 2021 09:27:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C386E6EABF
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 09:27:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="195792275"
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; d="scan'208";a="195792275"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 02:27:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,313,1616482800"; d="scan'208";a="408871279"
Received: from kbommu-nuc8i7beh.iind.intel.com ([10.145.162.97])
 by orsmga006.jf.intel.com with ESMTP; 01 Jul 2021 02:27:20 -0700
From: venkata.sai.patnana@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 14:46:33 +0530
Message-Id: <20210701091633.3609-1-venkata.sai.patnana@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210629065156.30301-2-venkata.sai.patnana@intel.com>
References: <20210629065156.30301-2-venkata.sai.patnana@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v3 1/2] drm/i915/display/dsc: Add Per connector
 debugfs node for DSC BPP enable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Patnana Venkata Sai <venkata.sai.patnana@intel.com>

[What]:
This patch creates a per connector debugfs node to expose
the Input and Compressed BPP.

The same node can be used from userspace to force
DSC to a certain BPP(all accepted values).

[Why]:
Useful to verify all supported/requested compression bpp's
through IGT

Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Navare Manasi D <manasi.d.navare@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Patnana Venkata Sai <venkata.sai.patnana@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 76 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  1 +
 2 files changed, 76 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index af9e58619667d..2305a0c2498cc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2389,6 +2389,73 @@ static const struct file_operations i915_dsc_fec_support_fops = {
 	.write = i915_dsc_fec_support_write
 };
 
+static int i915_dsc_bpp_support_show(struct seq_file *m, void *data)
+{
+	struct drm_connector *connector = m->private;
+	struct drm_device *dev = connector->dev;
+	struct drm_crtc *crtc;
+	struct intel_crtc_state *crtc_state = NULL;
+	int ret = 0;
+
+	ret = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	crtc = connector->state->crtc;
+	crtc_state = to_intel_crtc_state(crtc->state);
+	seq_printf(m, "Input_BPP: %d\n", crtc_state->pipe_bpp);
+	seq_printf(m, "Compressed_BPP: %d\n",
+			crtc_state->dsc.compressed_bpp);
+
+	drm_modeset_unlock(&dev->mode_config.connection_mutex);
+
+	return ret;
+}
+
+static ssize_t i915_dsc_bpp_support_write(struct file *file,
+						const char __user *ubuf,
+						size_t len, loff_t *offp)
+{
+	int dsc_bpp = 0;
+	int ret;
+	struct drm_connector *connector =
+		((struct seq_file *)file->private_data)->private;
+	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+	if (len == 0)
+		return 0;
+
+	drm_dbg(&i915->drm,
+		"Copied %zu bytes from user to force BPP\n", len);
+
+	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_bpp);
+
+	intel_dp->force_dsc_bpp = dsc_bpp;
+	if (ret < 0)
+		return ret;
+
+	*offp += len;
+	return len;
+}
+
+static int i915_dsc_bpp_support_open(struct inode *inode,
+					   struct file *file)
+{
+	return single_open(file, i915_dsc_bpp_support_show,
+			   inode->i_private);
+}
+
+static const struct file_operations i915_dsc_bpp_support_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_dsc_bpp_support_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_dsc_bpp_support_write
+};
+
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
  * @connector: pointer to a registered drm_connector
@@ -2427,9 +2494,16 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
 				    connector, &i915_hdcp_sink_capability_fops);
 	}
 
-	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) && ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort && !to_intel_connector(connector)->mst_port) || connector->connector_type == DRM_MODE_CONNECTOR_eDP))
+	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) &&
+	    ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort &&
+	      !to_intel_connector(connector)->mst_port) ||
+	     connector->connector_type == DRM_MODE_CONNECTOR_eDP)) {
 		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
 				    connector, &i915_dsc_fec_support_fops);
+		debugfs_create_file("i915_dsc_bpp_support", S_IRUGO,
+				    root, connector,
+				    &i915_dsc_bpp_support_fops);
+	}
 
 	/* Legacy panels doesn't lpsp on any platform */
 	if ((DISPLAY_VER(dev_priv) >= 9 || IS_HASWELL(dev_priv) ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d94f361b548b7..19d8d3eefbc27 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1612,6 +1612,7 @@ struct intel_dp {
 
 	/* Display stream compression testing */
 	bool force_dsc_en;
+	int force_dsc_bpp;
 
 	bool hobl_failed;
 	bool hobl_active;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
