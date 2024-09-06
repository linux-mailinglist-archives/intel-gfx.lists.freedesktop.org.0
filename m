Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 701A096F4C8
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1216110E191;
	Fri,  6 Sep 2024 12:56:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a6ZKWG4P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF27310E06C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627391; x=1757163391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P6NJUEwt7qU+DFq5RwLweEmGpq/NsY9KzFaG7GTk49g=;
 b=a6ZKWG4PmVU0noJ/ZODahrkJke8L6CggNtNiZy2OsMdKz4376aw2ZldT
 U5rk9FL+AA8qQ8jMyChBZ23RY1QzAaAsTBI4WBcb3kCc8uPF5p81U7Fry
 4hukW4FlgYcKQCe1AcXPRwyNdx9r8pLwfRsqY8YTT/EZn7l09XlbUbvym
 yqlX27F06NqmzP/LGtB3nwT/l86RpgiIJ/YlAz+1OgMatnSz0Z4lAtbrt
 NqIztVWGPKoGl2LklHotY/QAm7WXs2mqVqiEPG0jMtUwdlKHvN21QFloi
 bstXrz1Y2nZpweu+tZwWapoH+yKnW//tsMeNaIE9ioheykSlTum/tSWY9 A==;
X-CSE-ConnectionGUID: BwE6E5BQRnejUT29RmX9Sg==
X-CSE-MsgGUID: NzURDO4lS4uuRJG4r414fQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257397"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257397"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:31 -0700
X-CSE-ConnectionGUID: PmCsRSm3RhWdn9x4LCasKA==
X-CSE-MsgGUID: VnCi9OiCSDqDvI1/GRDMwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691043"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:30 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 01/14] drm/i915/display: Modify debugfs for joiner to force n
 pipes
Date: Fri,  6 Sep 2024 18:27:54 +0530
Message-ID: <20240906125807.3960642-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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
pipe joiner for 2 pipes. Modify it to force join 'n' number of pipes,
where n is a valid pipe joiner configuration.
This will help in case of ultra joiner where 4 pipes are joined.

v2:
-Fix commit message to state that only valid joiner config can be
forced. (Suraj)
-Rename the identifiers to have INTEL_BIG/NONE_JOINER_PIPES. (Suraj)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 71 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  8 ++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 3 files changed, 77 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 830b9eb60976..0ef573afd8a1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1504,6 +1504,73 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
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
+	if (force_join_pipes < INTEL_NONE_JOINER_PIPES ||
+	    force_join_pipes >= INTEL_INVALID_JOINER_PIPES) {
+		drm_dbg(&i915->drm, "Ignoring Invalid num of pipes %d for force joining\n",
+			force_join_pipes);
+		connector->force_joined_pipes = INTEL_NONE_JOINER_PIPES;
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
@@ -1553,8 +1620,8 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
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
index 733de5edcfdb..c213fb61ceb7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -486,6 +486,12 @@ struct intel_hdcp {
 	enum transcoder stream_transcoder;
 };
 
+enum intel_joiner_pipe_count {
+	INTEL_NONE_JOINER_PIPES = 0,
+	INTEL_BIG_JOINER_PIPES = 2,
+	INTEL_INVALID_JOINER_PIPES,
+};
+
 struct intel_connector {
 	struct drm_connector base;
 	/*
@@ -524,7 +530,7 @@ struct intel_connector {
 
 	struct intel_dp *mst_port;
 
-	bool force_bigjoiner_enable;
+	enum intel_joiner_pipe_count force_joined_pipes;
 
 	struct {
 		struct drm_dp_aux *dsc_decompression_aux;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a1fcedfd404b..862a460c32b7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1271,7 +1271,7 @@ bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 		return false;
 
 	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
-	       connector->force_bigjoiner_enable;
+	       connector->force_joined_pipes == INTEL_BIG_JOINER_PIPES;
 }
 
 bool intel_dp_has_dsc(const struct intel_connector *connector)
-- 
2.45.2

