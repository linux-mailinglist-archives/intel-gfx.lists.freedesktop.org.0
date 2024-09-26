Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E043987498
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 15:41:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B75B10EB56;
	Thu, 26 Sep 2024 13:41:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y/lh5xig";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6ECD10EB56;
 Thu, 26 Sep 2024 13:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727358095; x=1758894095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2sjriTAUTn7S8LZy2GcR9VUwakBHawDyR9Jc0GYXj1A=;
 b=Y/lh5xig0Kb+hyImI4CeXSBix77uVHBc/WyHeWGWKwvHv4eTupLC3csu
 53mEaYozBj3D2sp9hyz1uLwGTWlU6zDlDtMMqW9UlkOkay9kZMXAoZ6Cr
 ZoKQkIqs5no1mPUMxhOeKE5AdK8kD5fwamtLEyybLE5A7ZKRTvVKyq590
 kbgpRKo9eBD/ie/3Out7mNEjGG5gDXg/c1TH6EU9BL1PlwoOaWogybxfB
 drUk0vLZoOuTCsKSoLld/ZKHyWPUPrYHozfiFGeP0uFokcwMsfQ6YFl3G
 bM2RxrLXp/neQxgwJErdcDTQRAD/Cw6/saaeKeJN9gCWPm9RvcejZiBSz w==;
X-CSE-ConnectionGUID: R9s3dmEqTiG19p2xLwceMw==
X-CSE-MsgGUID: IimhhXpSQ7ac+7R9B7i7wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="43922889"
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="43922889"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 06:41:34 -0700
X-CSE-ConnectionGUID: +kiJ+F28SlWkDbaHXZFNDg==
X-CSE-MsgGUID: gKBQaywsSfeXBXzydUIyww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,155,1725346800"; d="scan'208";a="76975920"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 06:41:32 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 3/4] drm/i915/display: Modify debugfs for joiner to force n
 pipes
Date: Thu, 26 Sep 2024 19:13:21 +0530
Message-ID: <20240926134322.3728021-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
References: <20240926134322.3728021-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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
v4: Return -EINVAL if joiner forced to an invalid value.
v5: Remove extra debug message. (Ville)
v6: Minor fix in switch case. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 57 ++++++++++++++++++-
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 3 files changed, 57 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index c38023b43682..ae3715f0f1d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1316,6 +1316,59 @@ static int intel_crtc_pipe_show(struct seq_file *m, void *unused)
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
+	int force_joined_pipes = 0;
+	int ret;
+
+	if (len == 0)
+		return 0;
+
+	ret = kstrtoint_from_user(ubuf, len, 0, &force_joined_pipes);
+	if (ret < 0)
+		return ret;
+
+	switch (force_joined_pipes) {
+	case 0:
+	case 2:
+		connector->force_joined_pipes = force_joined_pipes;
+		break;
+	default:
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
@@ -1365,8 +1418,8 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	if ((connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
 	     connector_type == DRM_MODE_CONNECTOR_eDP) &&
 	    intel_dp_has_joiner(intel_attached_dp(connector))) {
-		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
-				    &connector->force_bigjoiner_enable);
+		debugfs_create_file("i915_joiner_force_enable", 0644, root,
+				    connector, &i915_joiner_fops);
 	}
 
 	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7ff97e5b83dd..7fb3eeb0e0f2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -524,7 +524,7 @@ struct intel_connector {
 
 	struct intel_dp *mst_port;
 
-	bool force_bigjoiner_enable;
+	int force_joined_pipes;
 
 	struct {
 		struct drm_dp_aux *dsc_decompression_aux;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 16dc1d26d2a2..a1a64758d30d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1274,7 +1274,7 @@ bool intel_dp_need_joiner(struct intel_dp *intel_dp,
 		return false;
 
 	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
-	       connector->force_bigjoiner_enable;
+	       connector->force_joined_pipes == 2;
 }
 
 bool intel_dp_has_dsc(const struct intel_connector *connector)
-- 
2.45.2

