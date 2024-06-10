Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AC190271A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD31210E4F2;
	Mon, 10 Jun 2024 16:49:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R32M5nZC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5458910E4E9
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038192; x=1749574192;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Fc2gqmHKdHzYZsgp/yfhJPQ4hY82VuB4z3qYzw5tsUo=;
 b=R32M5nZCn62kbm0tr2GZw1J+wexbbjfykOyj6g5to2eo3y2QuA32IEFE
 EgY082sAnTj+5ZU7eUh1ummrLnOK3xG+aK7nryp0tzYyKy0UNOwsSRdNA
 91O6Ka1v06Z3nnGTxjVZxeSYBRAom9MxV999iwKtzYyqUj98PSEDcdyjJ
 g7KY/aK0Vb++ZiSe27WMKuXE98Sm6nDVDioKX3g95OCdOTcZbcgNVzYih
 gT2thL6y9bseJUHIZQnnFPi0q1jDWoexTBK1rjZ2UnmYAeE69nHWZIuP/
 C4Zol1Y7Ul/sl+mOMCa2FphZquyIZGFk8haJBB7uYnkDoEFSJcXze/LVc A==;
X-CSE-ConnectionGUID: DYYusLIHS1uNDaQfpadCLA==
X-CSE-MsgGUID: RTApyARCSrCqFWQmschsRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18494025"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18494025"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:52 -0700
X-CSE-ConnectionGUID: na06nDtAQomWZ3IJono2Jg==
X-CSE-MsgGUID: v3joR2uKTW282C0wrUiDrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060623"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:51 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 21/21] drm/i915/dp: Add debugfs entry to get the link
 retrain disabled state
Date: Mon, 10 Jun 2024 19:49:33 +0300
Message-ID: <20240610164933.2947366-22-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
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

Add a connector debugfs entry showing if link retraining is disabled.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 4da550d6e0ffc..1bc4ef84ff3bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1898,6 +1898,25 @@ DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_force_link_retrain_fops,
 			 i915_dp_force_link_retrain_show,
 			 i915_dp_force_link_retrain_write, "%llu\n");
 
+static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp = intel_connector_to_intel_dp(connector);
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	seq_printf(m, "%s\n", str_yes_no(intel_dp->link.retrain_disabled));
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(i915_dp_link_retrain_disabled);
+
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 {
 	struct dentry *root = connector->base.debugfs_entry;
@@ -1923,4 +1942,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 	debugfs_create_file("i915_dp_force_link_retrain", 0644, root,
 			    connector, &i915_dp_force_link_retrain_fops);
+
+	debugfs_create_file("i915_dp_link_retrain_disabled", 0444, root,
+			    connector, &i915_dp_link_retrain_disabled_fops);
 }
-- 
2.43.3

