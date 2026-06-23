Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rI34CvsMO2p5PQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C96276BA7A5
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 00:47:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="GeZPsPI/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553CA10ED0F;
	Tue, 23 Jun 2026 22:47:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB8610ED0E;
 Tue, 23 Jun 2026 22:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782254840; x=1813790840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XTxLz7rQ8OL6K90nhdvQVZVL9NbuJ2NW7axvfNKoq6s=;
 b=GeZPsPI/q4EcHOU3qXhENx2Gyx5z+Wnj+SH2xHBa0Cel6rqHgJC/h4ua
 ebKBMvK36MY8iU/VU0CmmK0qyU52R4VLNndWmlDAvxT3cSUmNoCUhr8Q7
 VGIH5Y6xBNnNjxwF/BNMLq3dQlPgmDPb+iz23CK22LKqJNakqVn5/h1zn
 VOt/uN/cQmHtsM/dyeEwVLOXWtyAoFl+YHai3u+jQHbp7y0nvOm0r8uXr
 0XJ+UoXk9wVzE3f/o3Pk4ozhmZEesfmPXAUOUQBGPP8FxjzU0EGGiqOdK
 +3sVKcNDdNSn9YBywSH5aP+P01TbJD77HPQqJqlVi4iivB3s/PAIV+bok A==;
X-CSE-ConnectionGUID: 2RgR/uBWSlyCrtrIKrP7Lw==
X-CSE-MsgGUID: oLnDIJCNRJSbzwBp0gpRcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="82775558"
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="82775558"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 15:47:20 -0700
X-CSE-ConnectionGUID: MSNSM1nUT/2RWPTmpHMSGw==
X-CSE-MsgGUID: 5wM+K45JTNGDt2RP8YAcEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,221,1774335600"; d="scan'208";a="249497103"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa008.jf.intel.com with ESMTP; 23 Jun 2026 15:47:17 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>, Imre Deak <imre.deak@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v1 07/30] drm/i915/dp_link_caps: Move forced and max link
 debugfs entries to link caps
Date: Wed, 24 Jun 2026 00:45:56 +0200
Message-ID: <20260623224619.1949975-8-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260623224619.1949975-1-michal.grzelak@intel.com>
References: <20260623224619.1949975-1-michal.grzelak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C96276BA7A5

From: Imre Deak <imre.deak@intel.com>

Move the debugfs entries for the forced and max DP link parameters to
intel_dp_link_caps. Their functionality is part of the link capability
logic and will be updated to use the link capability state in follow-up
changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 280 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |   3 +
 .../drm/i915/display/intel_dp_link_training.c | 263 ----------------
 4 files changed, 285 insertions(+), 263 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 08004c1ba03f4..3f02868ef105b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -32,6 +32,7 @@
 #include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
@@ -1342,6 +1343,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
 	intel_psr_connector_debugfs_add(connector);
 	intel_alpm_lobf_debugfs_add(connector);
 	intel_dp_link_training_debugfs_add(connector);
+	intel_dp_link_caps_debugfs_add(connector);
 	intel_link_bw_connector_debugfs_add(connector);
 
 	if (DISPLAY_VER(display) >= 11 &&
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index e39e6c99ec25f..ea90e84500a89 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -3,6 +3,7 @@
  * Copyright © 2026 Intel Corporation
  */
 
+#include <linux/debugfs.h>
 #include <linux/slab.h>
 
 #include <drm/drm_print.h>
@@ -70,6 +71,285 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 	forced_params->lane_count = forced_lane_count(link_caps->dp);
 }
 
+static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int current_rate = -1;
+	int force_rate;
+	int err;
+	int i;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	if (intel_dp->link.active)
+		current_rate = intel_dp->link_rate;
+
+	force_rate = intel_dp->link.force_rate;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	seq_printf(m, "%sauto%s",
+		   force_rate == 0 ? "[" : "",
+		   force_rate == 0 ? "]" : "");
+
+	for (i = 0; i < intel_dp->num_source_rates; i++)
+		seq_printf(m, " %s%d%s%s",
+			   intel_dp->source_rates[i] == force_rate ? "[" : "",
+			   intel_dp->source_rates[i],
+			   intel_dp->source_rates[i] == current_rate ? "*" : "",
+			   intel_dp->source_rates[i] == force_rate ? "]" : "");
+
+	seq_putc(m, '\n');
+
+	return 0;
+}
+
+static int parse_link_rate(struct intel_dp *intel_dp, const char __user *ubuf, size_t len)
+{
+	char *kbuf;
+	const char *p;
+	int rate;
+	int ret = 0;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	p = strim(kbuf);
+
+	if (!strcmp(p, "auto")) {
+		rate = 0;
+	} else {
+		ret = kstrtoint(p, 0, &rate);
+		if (ret < 0)
+			goto out_free;
+
+		if (intel_dp_rate_index(intel_dp->source_rates,
+					intel_dp->num_source_rates,
+					rate) < 0)
+			ret = -EINVAL;
+	}
+
+out_free:
+	kfree(kbuf);
+
+	return ret < 0 ? ret : rate;
+}
+
+static ssize_t i915_dp_force_link_rate_write(struct file *file,
+					     const char __user *ubuf,
+					     size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int rate;
+	int err;
+
+	rate = parse_link_rate(intel_dp, ubuf, len);
+	if (rate < 0)
+		return rate;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	intel_dp_reset_link_params(intel_dp);
+	intel_dp->link.force_rate = rate;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_link_rate);
+
+static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int current_lane_count = -1;
+	int force_lane_count;
+	int err;
+	int i;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	if (intel_dp->link.active)
+		current_lane_count = intel_dp->lane_count;
+	force_lane_count = intel_dp->link.force_lane_count;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	seq_printf(m, "%sauto%s",
+		   force_lane_count == 0 ? "[" : "",
+		   force_lane_count == 0 ? "]" : "");
+
+	for (i = 1; i <= 4; i <<= 1)
+		seq_printf(m, " %s%d%s%s",
+			   i == force_lane_count ? "[" : "",
+			   i,
+			   i == current_lane_count ? "*" : "",
+			   i == force_lane_count ? "]" : "");
+
+	seq_putc(m, '\n');
+
+	return 0;
+}
+
+static int parse_lane_count(const char __user *ubuf, size_t len)
+{
+	char *kbuf;
+	const char *p;
+	int lane_count;
+	int ret = 0;
+
+	kbuf = memdup_user_nul(ubuf, len);
+	if (IS_ERR(kbuf))
+		return PTR_ERR(kbuf);
+
+	p = strim(kbuf);
+
+	if (!strcmp(p, "auto")) {
+		lane_count = 0;
+	} else {
+		ret = kstrtoint(p, 0, &lane_count);
+		if (ret < 0)
+			goto out_free;
+
+		switch (lane_count) {
+		case 1:
+		case 2:
+		case 4:
+			break;
+		default:
+			ret = -EINVAL;
+		}
+	}
+
+out_free:
+	kfree(kbuf);
+
+	return ret < 0 ? ret : lane_count;
+}
+
+static ssize_t i915_dp_force_lane_count_write(struct file *file,
+					      const char __user *ubuf,
+					      size_t len, loff_t *offp)
+{
+	struct seq_file *m = file->private_data;
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int lane_count;
+	int err;
+
+	lane_count = parse_lane_count(ubuf, len);
+	if (lane_count < 0)
+		return lane_count;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	intel_dp_reset_link_params(intel_dp);
+	intel_dp->link.force_lane_count = lane_count;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	*offp += len;
+
+	return len;
+}
+DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_lane_count);
+
+static int i915_dp_max_link_rate_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	*val = intel_dp->link.max_rate;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_rate_show, NULL, "%llu\n");
+
+static int i915_dp_max_lane_count_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	*val = intel_dp->link.max_lane_count;
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
+
+
+/**
+ * intel_dp_link_caps_debugfs_add - add link caps debugfs files for a connector
+ * @connector: connector to add the debugfs files for
+ *
+ * Add the link-capability debugfs files for a DP @connector.
+ */
+void intel_dp_link_caps_debugfs_add(struct intel_connector *connector)
+{
+	struct dentry *root = connector->base.debugfs_entry;
+
+	if (connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort &&
+	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
+		return;
+
+	debugfs_create_file("i915_dp_force_link_rate", 0644, root,
+			    connector, &i915_dp_force_link_rate_fops);
+
+	debugfs_create_file("i915_dp_force_lane_count", 0644, root,
+			    connector, &i915_dp_force_lane_count_fops);
+
+	debugfs_create_file("i915_dp_max_link_rate", 0444, root,
+			    connector, &i915_dp_max_link_rate_fops);
+
+	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
+			    connector, &i915_dp_max_lane_count_fops);
+}
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 61dbce86ee3d0..c6a84891db464 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -4,6 +4,7 @@
 #ifndef __INTEL_DP_LINK_CAPS_H__
 #define __INTEL_DP_LINK_CAPS_H__
 
+struct intel_connector;
 struct intel_dp;
 struct intel_dp_link_caps;
 struct intel_dp_link_config;
@@ -16,6 +17,8 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 
+void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
 void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index b915cfdeabd0e..cbef3d45baf9c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -2660,257 +2660,6 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
-{
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int current_rate = -1;
-	int force_rate;
-	int err;
-	int i;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	if (intel_dp->link.active)
-		current_rate = intel_dp->link_rate;
-
-	force_rate = intel_dp->link.force_rate;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	seq_printf(m, "%sauto%s",
-		   force_rate == 0 ? "[" : "",
-		   force_rate == 0 ? "]" : "");
-
-	for (i = 0; i < intel_dp->num_source_rates; i++)
-		seq_printf(m, " %s%d%s%s",
-			   intel_dp->source_rates[i] == force_rate ? "[" : "",
-			   intel_dp->source_rates[i],
-			   intel_dp->source_rates[i] == current_rate ? "*" : "",
-			   intel_dp->source_rates[i] == force_rate ? "]" : "");
-
-	seq_putc(m, '\n');
-
-	return 0;
-}
-
-static int parse_link_rate(struct intel_dp *intel_dp, const char __user *ubuf, size_t len)
-{
-	char *kbuf;
-	const char *p;
-	int rate;
-	int ret = 0;
-
-	kbuf = memdup_user_nul(ubuf, len);
-	if (IS_ERR(kbuf))
-		return PTR_ERR(kbuf);
-
-	p = strim(kbuf);
-
-	if (!strcmp(p, "auto")) {
-		rate = 0;
-	} else {
-		ret = kstrtoint(p, 0, &rate);
-		if (ret < 0)
-			goto out_free;
-
-		if (intel_dp_rate_index(intel_dp->source_rates,
-					intel_dp->num_source_rates,
-					rate) < 0)
-			ret = -EINVAL;
-	}
-
-out_free:
-	kfree(kbuf);
-
-	return ret < 0 ? ret : rate;
-}
-
-static ssize_t i915_dp_force_link_rate_write(struct file *file,
-					     const char __user *ubuf,
-					     size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int rate;
-	int err;
-
-	rate = parse_link_rate(intel_dp, ubuf, len);
-	if (rate < 0)
-		return rate;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_rate = rate;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	*offp += len;
-
-	return len;
-}
-DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_link_rate);
-
-static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
-{
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int current_lane_count = -1;
-	int force_lane_count;
-	int err;
-	int i;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	if (intel_dp->link.active)
-		current_lane_count = intel_dp->lane_count;
-	force_lane_count = intel_dp->link.force_lane_count;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	seq_printf(m, "%sauto%s",
-		   force_lane_count == 0 ? "[" : "",
-		   force_lane_count == 0 ? "]" : "");
-
-	for (i = 1; i <= 4; i <<= 1)
-		seq_printf(m, " %s%d%s%s",
-			   i == force_lane_count ? "[" : "",
-			   i,
-			   i == current_lane_count ? "*" : "",
-			   i == force_lane_count ? "]" : "");
-
-	seq_putc(m, '\n');
-
-	return 0;
-}
-
-static int parse_lane_count(const char __user *ubuf, size_t len)
-{
-	char *kbuf;
-	const char *p;
-	int lane_count;
-	int ret = 0;
-
-	kbuf = memdup_user_nul(ubuf, len);
-	if (IS_ERR(kbuf))
-		return PTR_ERR(kbuf);
-
-	p = strim(kbuf);
-
-	if (!strcmp(p, "auto")) {
-		lane_count = 0;
-	} else {
-		ret = kstrtoint(p, 0, &lane_count);
-		if (ret < 0)
-			goto out_free;
-
-		switch (lane_count) {
-		case 1:
-		case 2:
-		case 4:
-			break;
-		default:
-			ret = -EINVAL;
-		}
-	}
-
-out_free:
-	kfree(kbuf);
-
-	return ret < 0 ? ret : lane_count;
-}
-
-static ssize_t i915_dp_force_lane_count_write(struct file *file,
-					      const char __user *ubuf,
-					      size_t len, loff_t *offp)
-{
-	struct seq_file *m = file->private_data;
-	struct intel_connector *connector = to_intel_connector(m->private);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int lane_count;
-	int err;
-
-	lane_count = parse_lane_count(ubuf, len);
-	if (lane_count < 0)
-		return lane_count;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_lane_count = lane_count;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	*offp += len;
-
-	return len;
-}
-DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_force_lane_count);
-
-static int i915_dp_max_link_rate_show(void *data, u64 *val)
-{
-	struct intel_connector *connector = to_intel_connector(data);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int err;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	*val = intel_dp->link.max_rate;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	return 0;
-}
-DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_rate_show, NULL, "%llu\n");
-
-static int i915_dp_max_lane_count_show(void *data, u64 *val)
-{
-	struct intel_connector *connector = to_intel_connector(data);
-	struct intel_display *display = to_intel_display(connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	int err;
-
-	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
-	if (err)
-		return err;
-
-	intel_dp_flush_connector_commits(connector);
-
-	*val = intel_dp->link.max_lane_count;
-
-	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
-
-	return 0;
-}
-DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
-
 static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 {
 	struct intel_connector *connector = to_intel_connector(data);
@@ -3033,18 +2782,6 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
 		return;
 
-	debugfs_create_file("i915_dp_force_link_rate", 0644, root,
-			    connector, &i915_dp_force_link_rate_fops);
-
-	debugfs_create_file("i915_dp_force_lane_count", 0644, root,
-			    connector, &i915_dp_force_lane_count_fops);
-
-	debugfs_create_file("i915_dp_max_link_rate", 0444, root,
-			    connector, &i915_dp_max_link_rate_fops);
-
-	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
-			    connector, &i915_dp_max_lane_count_fops);
-
 	debugfs_create_file("i915_dp_force_link_training_failure", 0644, root,
 			    connector, &i915_dp_force_link_training_failure_fops);
 
-- 
2.45.2

