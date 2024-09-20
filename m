Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3C297D511
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 13:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C87110E81B;
	Fri, 20 Sep 2024 11:57:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="REe5YI8u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9519910E81B;
 Fri, 20 Sep 2024 11:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726833460; x=1758369460;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S4PuY3Uw+ml/rmGJrewtYdbsnj9j5KScmEovLYU8TPo=;
 b=REe5YI8uUDOrHcXVCCndbaAPotMoh4KQWdlOsIb9fTUEueflyyrwcbF3
 bBjBFjf5dj9jTNnHpyywU7iNfKdjoVbP3LukNWTV/G6vqXqNJD7bIHNw8
 2ocAlgpfr54xzxartop4gNDhGDMb0kYmwy+1utD7v938QZPjNAtLlRofv
 mwB0QDlgqSnpQVZhwbloYhucy21qrLvU6yK6hUJafcKRjSQ4azyON9zvU
 HdmB9PdjnYCAwSwjKU3h8ypPWPqZG/MASG/wC2AFS3NnHHLDmenyRqCac
 oDfZlyv6UHf8Ee8Lc+MNYkmPc3WWuveaRpScM+dGMmN1q9u/EmQ21ALOm A==;
X-CSE-ConnectionGUID: YqiZamimSCCwqRcY5mGyCQ==
X-CSE-MsgGUID: U+Dp5CWbQyiKWcgxVHbtpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25984594"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25984594"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:40 -0700
X-CSE-ConnectionGUID: UJHpIk+dSSucx8YY5jpTdg==
X-CSE-MsgGUID: +t65QyoHQWy505eqs4QECA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70519223"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.155])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 04:57:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 8/9] drm/i915/dp: convert DP test debugfs to struct
 intel_display
Date: Fri, 20 Sep 2024 14:56:50 +0300
Message-Id: <4d29cf43c7067e910fdf1127afcc35dd558b4b0b.1726833193.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726833193.git.jani.nikula@intel.com>
References: <cover.1726833193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer struct intel_display over struct drm_i915_private. Do some
drive-by logging conversions to kms category.

Observe that i915_displayport_test_active_write() was using the wrong
type for m->private, but it has worked because struct drm_i915_private
has struct drm_device at offset 0.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_test.c | 25 ++++++++++----------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index f086f6854bf0..8426c8ef947e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -514,16 +514,15 @@ static ssize_t i915_displayport_test_active_write(struct file *file,
 						  const char __user *ubuf,
 						  size_t len, loff_t *offp)
 {
+	struct seq_file *m = file->private_data;
+	struct intel_display *display = m->private;
 	char *input_buffer;
 	int status = 0;
-	struct drm_device *dev;
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_dp *intel_dp;
 	int val = 0;
 
-	dev = ((struct seq_file *)file->private_data)->private;
-
 	if (len == 0)
 		return 0;
 
@@ -531,9 +530,9 @@ static ssize_t i915_displayport_test_active_write(struct file *file,
 	if (IS_ERR(input_buffer))
 		return PTR_ERR(input_buffer);
 
-	drm_dbg(dev, "Copied %d bytes from user\n", (unsigned int)len);
+	drm_dbg_kms(display->drm, "Copied %d bytes from user\n", (unsigned int)len);
 
-	drm_connector_list_iter_begin(dev, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	drm_for_each_connector_iter(connector, &conn_iter) {
 		struct intel_encoder *encoder;
 
@@ -550,7 +549,7 @@ static ssize_t i915_displayport_test_active_write(struct file *file,
 			status = kstrtoint(input_buffer, 10, &val);
 			if (status < 0)
 				break;
-			drm_dbg(dev, "Got %d for test active\n", val);
+			drm_dbg_kms(display->drm, "Got %d for test active\n", val);
 			/* To prevent erroneous activation of the compliance
 			 * testing code, only accept an actual value of 1 here
 			 */
@@ -571,12 +570,12 @@ static ssize_t i915_displayport_test_active_write(struct file *file,
 
 static int i915_displayport_test_active_show(struct seq_file *m, void *data)
 {
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_dp *intel_dp;
 
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	drm_for_each_connector_iter(connector, &conn_iter) {
 		struct intel_encoder *encoder;
 
@@ -621,12 +620,12 @@ static const struct file_operations i915_displayport_test_active_fops = {
 
 static int i915_displayport_test_data_show(struct seq_file *m, void *data)
 {
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_dp *intel_dp;
 
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	drm_for_each_connector_iter(connector, &conn_iter) {
 		struct intel_encoder *encoder;
 
@@ -675,12 +674,12 @@ DEFINE_SHOW_ATTRIBUTE(i915_displayport_test_data);
 
 static int i915_displayport_test_type_show(struct seq_file *m, void *data)
 {
-	struct drm_i915_private *dev_priv = m->private;
+	struct intel_display *display = m->private;
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_dp *intel_dp;
 
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	drm_for_each_connector_iter(connector, &conn_iter) {
 		struct intel_encoder *encoder;
 
@@ -723,7 +722,7 @@ void intel_dp_test_debugfs_register(struct intel_display *display)
 		debugfs_create_file(intel_display_debugfs_files[i].name,
 				    0644,
 				    minor->debugfs_root,
-				    to_i915(minor->dev),
+				    display,
 				    intel_display_debugfs_files[i].fops);
 	}
 }
-- 
2.39.2

