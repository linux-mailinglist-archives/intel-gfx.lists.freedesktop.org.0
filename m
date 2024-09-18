Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5417197BE1A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C3210E5C3;
	Wed, 18 Sep 2024 14:42:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cwH1HI9C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C7E10E5BD;
 Wed, 18 Sep 2024 14:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670522; x=1758206522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rlTu6DxWdas3YzrOfp8CeHI24NZL0WP+2b6nAIyBK60=;
 b=cwH1HI9C+VNdXbumt1ephKIWJadd6nhLf5SW+ceVHPwFtx/iNu61WaRr
 7Fc0i3eiwquY5p6V3MMbnTjrqY9tVm3dy6k7KRnNdU6k0aZx1Y1hX4PmS
 qn2vLdftChByLTH8lM21eMBH9q3OLCn0+9Ocmw5uK8VHwe4bxqWj8RLB3
 vcrNhqKnFGjXmjj3lJKj/GmjFa6hJoQRx5kAu0R6ub5MKBmIXjJqeQeo/
 R+XqsYKByl8j1iR5vgBx/AS1N2Xwwb8Y54YOaPHQSmKMRRdJUrspALCJA
 R+izAeoFI/94tonvfLrRK0K5fLVaCHDnp/jfb0ynUugJFw3sh8yIOCFGx Q==;
X-CSE-ConnectionGUID: FORVRSZRS2SMuUj8fEMNYw==
X-CSE-MsgGUID: DbRkhEMVRjelohB2apjDCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="29481722"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="29481722"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:42:02 -0700
X-CSE-ConnectionGUID: ogRyIB4gQwq/LCSsuLHG2w==
X-CSE-MsgGUID: F7e6IvMcRfGVFIH4nt7lxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69200370"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:41:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 04/15] drm/i915/display: Modify debugfs for joiner to force n
 pipes
Date: Wed, 18 Sep 2024 20:13:32 +0530
Message-ID: <20240918144343.2876184-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
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
v3:
-Avoid enum for joiner pipe counts, use bare numbers for better
readability. (Ville)
-Remove redundant prints from debugfs. (Ville)
v4:
-Return -EINVAL if joiner forced to an invalid value.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 63 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 3 files changed, 63 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index cda3f6cf724d..5775413c6763 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1504,6 +1504,65 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
 }
 DEFINE_SHOW_ATTRIBUTE(intel_crtc_pipe);
 
+static int i915_joiner_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = m->private;
+
+	seq_printf(m, "%d\n", connector->force_joined_pipes);
+
+	return 0;
+}
+
+static ssize_t i915_joiner_write(struct file *file,
+				 const char __user *ubuf,
+				 size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = m->private;
+	struct intel_display *display = to_intel_display(connector);
+	int force_join_pipes = 0;
+	int ret;
+
+	if (len == 0)
+		return 0;
+
+	ret = kstrtoint_from_user(ubuf, len, 0, &force_join_pipes);
+	if (ret < 0)
+		return ret;
+
+	switch (force_join_pipes) {
+	case 0:
+		fallthrough;
+	case 2:
+		connector->force_joined_pipes = force_join_pipes;
+		break;
+	default:
+		drm_dbg(display->drm, "Ignoring Invalid num of pipes %d for force joining\n",
+			force_join_pipes);
+		connector->force_joined_pipes = 0;
+
+		return -EINVAL;
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
@@ -1554,8 +1613,8 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	if (HAS_BIGJOINER(i915) && intel_dp_has_joiner(intel_dp) &&
 	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
-		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
-				    &connector->force_bigjoiner_enable);
+		debugfs_create_file("i915_joiner_force_enable", 0644, root,
+				    connector, &i915_joiner_fops);
 	}
 
 	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 000ab373c887..2ac2068aefa4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -524,7 +524,7 @@ struct intel_connector {
 
 	struct intel_dp *mst_port;
 
-	bool force_bigjoiner_enable;
+	int force_joined_pipes;
 
 	struct {
 		struct drm_dp_aux *dsc_decompression_aux;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 19f78432cc8f..2e35a81fa6d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1280,7 +1280,7 @@ bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 		return false;
 
 	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
-	       connector->force_bigjoiner_enable;
+	       connector->force_joined_pipes == 2;
 }
 
 bool intel_dp_has_dsc(const struct intel_connector *connector)
-- 
2.45.2

