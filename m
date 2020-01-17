Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C18F5140D6D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 16:08:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E3A16F5CF;
	Fri, 17 Jan 2020 15:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C0D6F5CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 15:08:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 07:05:57 -0800
X-IronPort-AV: E=Sophos;i="5.70,330,1574150400"; d="scan'208";a="214499756"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 07:05:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 17:05:51 +0200
Message-Id: <20200117150551.9836-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/debugfs: remove i915_dpcd file
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We've long had the more generic /dev/drm_dp_auxN devices for the same
purpose. Drop the redundant and limited DPCD debugfs file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 64 -----------------------------
 1 file changed, 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index c05fa4205de8..e320b957b792 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -4329,65 +4329,6 @@ int i915_debugfs_register(struct drm_i915_private *dev_priv)
 					minor->debugfs_root, minor);
 }
 
-struct dpcd_block {
-	/* DPCD dump start address. */
-	unsigned int offset;
-	/* DPCD dump end address, inclusive. If unset, .size will be used. */
-	unsigned int end;
-	/* DPCD dump size. Used if .end is unset. If unset, defaults to 1. */
-	size_t size;
-	/* Only valid for eDP. */
-	bool edp;
-};
-
-static const struct dpcd_block i915_dpcd_debug[] = {
-	{ .offset = DP_DPCD_REV, .size = DP_RECEIVER_CAP_SIZE },
-	{ .offset = DP_PSR_SUPPORT, .end = DP_PSR_CAPS },
-	{ .offset = DP_DOWNSTREAM_PORT_0, .size = 16 },
-	{ .offset = DP_LINK_BW_SET, .end = DP_EDP_CONFIGURATION_SET },
-	{ .offset = DP_SINK_COUNT, .end = DP_ADJUST_REQUEST_LANE2_3 },
-	{ .offset = DP_SET_POWER },
-	{ .offset = DP_EDP_DPCD_REV },
-	{ .offset = DP_EDP_GENERAL_CAP_1, .end = DP_EDP_GENERAL_CAP_3 },
-	{ .offset = DP_EDP_DISPLAY_CONTROL_REGISTER, .end = DP_EDP_BACKLIGHT_FREQ_CAP_MAX_LSB },
-	{ .offset = DP_EDP_DBC_MINIMUM_BRIGHTNESS_SET, .end = DP_EDP_DBC_MAXIMUM_BRIGHTNESS_SET },
-};
-
-static int i915_dpcd_show(struct seq_file *m, void *data)
-{
-	struct drm_connector *connector = m->private;
-	struct intel_dp *intel_dp =
-		enc_to_intel_dp(intel_attached_encoder(to_intel_connector(connector)));
-	u8 buf[16];
-	ssize_t err;
-	int i;
-
-	if (connector->status != connector_status_connected)
-		return -ENODEV;
-
-	for (i = 0; i < ARRAY_SIZE(i915_dpcd_debug); i++) {
-		const struct dpcd_block *b = &i915_dpcd_debug[i];
-		size_t size = b->end ? b->end - b->offset + 1 : (b->size ?: 1);
-
-		if (b->edp &&
-		    connector->connector_type != DRM_MODE_CONNECTOR_eDP)
-			continue;
-
-		/* low tech for now */
-		if (WARN_ON(size > sizeof(buf)))
-			continue;
-
-		err = drm_dp_dpcd_read(&intel_dp->aux, b->offset, buf, size);
-		if (err < 0)
-			seq_printf(m, "%04x: ERROR %d\n", b->offset, (int)err);
-		else
-			seq_printf(m, "%04x: %*ph\n", b->offset, (int)err, buf);
-	}
-
-	return 0;
-}
-DEFINE_SHOW_ATTRIBUTE(i915_dpcd);
-
 static int i915_panel_show(struct seq_file *m, void *data)
 {
 	struct drm_connector *connector = m->private;
@@ -4552,11 +4493,6 @@ int i915_debugfs_connector_add(struct drm_connector *connector)
 	if (!root)
 		return -ENODEV;
 
-	if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
-	    connector->connector_type == DRM_MODE_CONNECTOR_eDP)
-		debugfs_create_file("i915_dpcd", S_IRUGO, root,
-				    connector, &i915_dpcd_fops);
-
 	if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
 		debugfs_create_file("i915_panel_timings", S_IRUGO, root,
 				    connector, &i915_panel_fops);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
