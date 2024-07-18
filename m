Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEDB9349A7
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 10:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF0A310E5BF;
	Thu, 18 Jul 2024 08:17:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YVQtVyRD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F04810E5B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 08:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721290627; x=1752826627;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xsWnJZmOh4Fpzqkf/eUFBI1PlsonySfDzJJmubAs5Og=;
 b=YVQtVyRDbtBo5MsYv6aH7c7qIicpu3aLuxqkbeImnfvGcwxrgmS71ht0
 oudwxJI90mcZ9KSV/AasooIN9trlGNXLCJsrr+f/OgptlWiSfENuWToHp
 lK6dkql9TStQv+Gvhd8khsONw1X0okrN6F5YOp8h2kXFusSSxLMDXemCr
 nTPFP9fovrnGGkRQmxIO7/1PhYeSCGSUoCFxByjz/AdSzELPt35pIk/nQ
 LRxbp0cErmRj3cGset46ymD2fq4RbGkvEOXxnw/S6Ty3T4EUkviPICrCO
 viSqM6g7tPcn+gk7cvxrX4H19DDaqbeD/9kCTurk4gCn7M+9ALBeHynMH Q==;
X-CSE-ConnectionGUID: 1iu2d0IkQV6ezORiih6woQ==
X-CSE-MsgGUID: nnFn1T60QcqvYkFqLYDOjw==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18706013"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18706013"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:04 -0700
X-CSE-ConnectionGUID: uGPkV64uRm+tU/EZbt9SMw==
X-CSE-MsgGUID: Z93SfvniRsiGMreNCNcrEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="51400580"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 01:17:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 01/12] drm/i915/display: Modify debugfs for joiner to force n
 pipes
Date: Thu, 18 Jul 2024 13:47:52 +0530
Message-ID: <20240718081803.3338564-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
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

At the moment, the debugfs for joiner allows only to force enable/disable
pipe joiner for 2 pipes. Modify it to force join 'n' number of pipes.
This will help in case of ultra joiner where 4 pipes are joined.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 71 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  8 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 3 files changed, 77 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 5cf9b4af9adf..18f3d83265ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1497,6 +1497,73 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
 }
 DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
 
+static int i915_joiner_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	int ret;
+
+	ret = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (ret)
+		return ret;
+
+	seq_printf(m, "Force_joined_pipes: %d\n", connector->force_joined_pipes);
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return ret;
+}
+
+static ssize_t i915_joiner_write(struct file *file,
+				 const char __user *ubuf,
+				 size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	int force_join_pipes = 0;
+	int ret;
+
+	if (len == 0)
+		return 0;
+
+	drm_dbg(&i915->drm,
+		"Copied %zu bytes from user to force joiner\n", len);
+
+	ret = kstrtoint_from_user(ubuf, len, 0, &force_join_pipes);
+	if (ret < 0)
+		return ret;
+
+	drm_dbg(&i915->drm, "Got %d for force joining pipes\n", force_join_pipes);
+
+	if (force_join_pipes < INTEL_PIPE_JOINER_NONE ||
+	    force_join_pipes >= INTEL_PIPE_JOINER_INVALID) {
+		drm_dbg(&i915->drm, "Ignoring Invalid num of pipes %d for force joining\n",
+			force_join_pipes);
+		connector->force_joined_pipes = INTEL_PIPE_JOINER_NONE;
+	} else {
+		connector->force_joined_pipes = force_join_pipes;
+	}
+
+	*offp += len;
+
+	return len;
+}
+
+static int i915_joiner_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, i915_joiner_show, inode->i_private);
+}
+
+static const struct file_operations i915_joiner_fops = {
+	.owner = THIS_MODULE,
+	.open = i915_joiner_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+	.write = i915_joiner_write
+};
+
 /**
  * intel_connector_debugfs_add - add i915 specific connector debugfs files
  * @connector: pointer to a registered intel_connector
@@ -1546,8 +1613,8 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	if (DISPLAY_VER(i915) >= 11 &&
 	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
-		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
-				    &connector->force_bigjoiner_enable);
+		debugfs_create_file("i915_joiner_force_enable", 0644, root,
+				    connector, &i915_joiner_fops);
 	}
 
 	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a9d2acdc51a4..14c78b18ffa1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -613,6 +613,12 @@ struct intel_hdcp {
 	enum transcoder stream_transcoder;
 };
 
+enum intel_joiner_pipe_count {
+	INTEL_PIPE_JOINER_NONE = 0,
+	INTEL_PIPE_JOINER_BIG = 2,
+	INTEL_PIPE_JOINER_INVALID,
+};
+
 struct intel_connector {
 	struct drm_connector base;
 	/*
@@ -651,7 +657,7 @@ struct intel_connector {
 
 	struct intel_dp *mst_port;
 
-	bool force_bigjoiner_enable;
+	enum intel_joiner_pipe_count force_joined_pipes;
 
 	struct {
 		struct drm_dp_aux *dsc_decompression_aux;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d4b1b18453dc..30442c9da06b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1164,7 +1164,7 @@ bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 		return false;
 
 	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
-	       connector->force_bigjoiner_enable;
+	       connector->force_joined_pipes == INTEL_PIPE_JOINER_BIG;
 }
 
 bool intel_dp_has_dsc(const struct intel_connector *connector)
-- 
2.45.2

