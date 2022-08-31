Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C378C5A82A9
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 18:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D92B210E469;
	Wed, 31 Aug 2022 16:04:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C17B10E43A
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 16:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661961866; x=1693497866;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rmCoEAie14xs2dpC5r38u2xz29znmoZePtTFOYSlOLM=;
 b=I8EfQXaGTrQyvD3/F1I1PUEFt2lS/2pNWqk5Ui9ro3KWJ7IUknhwJv+E
 oqAOEM/uAEbHSI+GuXhmhIpSXDRgZlnUEGD3GWn8zGrV3iKPGMJn53ECg
 Yz+8ZicFSvMUUXEhdi++jbSyHFd9YjWJ8vyB2n/OR4nC1SRdp9GevNUFy
 Ut/BwnabGWv50mWL8L8BVw8FJ59iVCAAp1IP4uIrKKCnMngmKfDE/qTKy
 E1mowPN0KBH63ytdMkUAaXD4ycym9QWr2JPcCFkI+OOUFuXbf6It/lTo+
 RqmbBJq955965GQafjBCFlGJWwJOcrLdL6tpDlb4C4DyxxzCJxJiGqj82 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="359439959"
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="359439959"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 09:04:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,278,1654585200"; d="scan'208";a="589082089"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 09:04:24 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Aug 2022 21:35:36 +0530
Message-Id: <20220831160536.2131-2-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220831160536.2131-1-swati2.sharma@intel.com>
References: <20220831160536.2131-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/display: convert dsc debugfs entry
 from output_bpp to input_bpc
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

With this patch, converting DSC debugfs entry from output_bpp to input_bpc.
Corresponding changes are done in i-g-t to validate DSC with different
input bpc supported per platform.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 26 +++++++++----------
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 23 +++++-----------
 3 files changed, 21 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 225b6bfc783c..23627ed3beb1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -2138,7 +2138,7 @@ static const struct file_operations i915_dsc_fec_support_fops = {
 	.write = i915_dsc_fec_support_write
 };
 
-static int i915_dsc_bpp_show(struct seq_file *m, void *data)
+static int i915_dsc_bpc_show(struct seq_file *m, void *data)
 {
 	struct drm_connector *connector = m->private;
 	struct drm_device *dev = connector->dev;
@@ -2161,14 +2161,14 @@ static int i915_dsc_bpp_show(struct seq_file *m, void *data)
 	}
 
 	crtc_state = to_intel_crtc_state(crtc->state);
-	seq_printf(m, "Compressed_BPP: %d\n", crtc_state->dsc.compressed_bpp);
+	seq_printf(m, "Input_BPC: %d\n", crtc_state->dsc.config.bits_per_component);
 
 out:	drm_modeset_unlock(&dev->mode_config.connection_mutex);
 
 	return ret;
 }
 
-static ssize_t i915_dsc_bpp_write(struct file *file,
+static ssize_t i915_dsc_bpc_write(struct file *file,
 				  const char __user *ubuf,
 				  size_t len, loff_t *offp)
 {
@@ -2176,33 +2176,33 @@ static ssize_t i915_dsc_bpp_write(struct file *file,
 		((struct seq_file *)file->private_data)->private;
 	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	int dsc_bpp = 0;
+	int dsc_bpc = 0;
 	int ret;
 
-	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_bpp);
+	ret = kstrtoint_from_user(ubuf, len, 0, &dsc_bpc);
 	if (ret < 0)
 		return ret;
 
-	intel_dp->force_dsc_bpp = dsc_bpp;
+	intel_dp->force_dsc_bpc = dsc_bpc;
 	*offp += len;
 
 	return len;
 }
 
-static int i915_dsc_bpp_open(struct inode *inode,
+static int i915_dsc_bpc_open(struct inode *inode,
 			     struct file *file)
 {
-	return single_open(file, i915_dsc_bpp_show,
+	return single_open(file, i915_dsc_bpc_show,
 			   inode->i_private);
 }
 
-static const struct file_operations i915_dsc_bpp_fops = {
+static const struct file_operations i915_dsc_bpc_fops = {
 	.owner = THIS_MODULE,
-	.open = i915_dsc_bpp_open,
+	.open = i915_dsc_bpc_open,
 	.read = seq_read,
 	.llseek = seq_lseek,
 	.release = single_release,
-	.write = i915_dsc_bpp_write
+	.write = i915_dsc_bpc_write
 };
 
 /*
@@ -2272,8 +2272,8 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
 		debugfs_create_file("i915_dsc_fec_support", 0644, root,
 				    connector, &i915_dsc_fec_support_fops);
 
-		debugfs_create_file("i915_dsc_bpp", 0644, root,
-				    connector, &i915_dsc_bpp_fops);
+		debugfs_create_file("i915_dsc_bpc", 0644, root,
+				    connector, &i915_dsc_bpc_fops);
 	}
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0da9b208d56e..dbda845030bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1712,7 +1712,7 @@ struct intel_dp {
 
 	/* Display stream compression testing */
 	bool force_dsc_en;
-	int force_dsc_bpp;
+	int force_dsc_bpc;
 
 	bool hobl_failed;
 	bool hobl_active;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8d1559323412..0d75b00d3e5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1474,6 +1474,13 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 
 	pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, conn_state->max_requested_bpc);
 
+	if (intel_dp->force_dsc_bpc) {
+		pipe_bpp = intel_dp->force_dsc_bpc * 3;
+		drm_dbg_kms(&dev_priv->drm,
+			    "Input DSC BPP forced to %d",
+			    pipe_bpp);
+	}
+
 	/* Min Input BPC for ICL+ is 8 */
 	if (pipe_bpp < 8 * 3) {
 		drm_dbg_kms(&dev_priv->drm,
@@ -1525,22 +1532,6 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		pipe_config->dsc.slice_count = dsc_dp_slice_count;
 	}
 
-	/* As of today we support DSC for only RGB */
-	if (intel_dp->force_dsc_bpp) {
-		if (intel_dp->force_dsc_bpp >= 8 &&
-		    intel_dp->force_dsc_bpp < pipe_bpp) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "DSC BPP forced to %d",
-				    intel_dp->force_dsc_bpp);
-			pipe_config->dsc.compressed_bpp =
-						intel_dp->force_dsc_bpp;
-		} else {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Invalid DSC BPP %d",
-				    intel_dp->force_dsc_bpp);
-		}
-	}
-
 	/*
 	 * VDSC engine operates at 1 Pixel per clock, so if peak pixel rate
 	 * is greater than the maximum Cdclock and if slice count is even
-- 
2.25.1

