Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D8D8CA262
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7B210E888;
	Mon, 20 May 2024 18:58:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/2FsQsq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524A510E888
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231517; x=1747767517;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uX+oG+2GxBJQ74Ws2HggOFnQKYtuBbOrZBAKtuQB5Gw=;
 b=i/2FsQsqhTx7SbJKebUlMXCm6eQvayqH/OCdZZQjjzq7KuSXfb/nbbsH
 BGg4ocg7mb+Es4If0X2AeFBrOhXn6rUw4mPaPZ6XbQftQA67qKcuKiAW/
 t51+gJ2Udcdc0mIsW/qN/XtGHZW40OvqUBYk4dQszTRRuVc1oxp2nMOmk
 ialA55l1JMIFUCvY1bGSZoEuIDsLdvoGM9Tr6As4zuYDueEdX3jGPLKc4
 pq9HyYVJp4vd4UMfQQn2K69Rnq68AKuWDh5Eu7JidIHSVcQeV0/pSs9gW
 wGoI3R4lkicADxeF1rOkeuGgOyaaCY+J2kk+k4Vpe5p6onVZ2NH2HCecR Q==;
X-CSE-ConnectionGUID: 95t9Fl3uQQOicjadXjutZQ==
X-CSE-MsgGUID: auHDGmQURwazRqpOKaomZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218553"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218553"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:37 -0700
X-CSE-ConnectionGUID: cr5d8zGWTiSEHhvymvLpVA==
X-CSE-MsgGUID: /pEzXvlzQqK/KF0p+/qjew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213893"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:36 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 18/21] drm/i915/dp: Add debugfs entries to get the max link
 rate/lane count
Date: Mon, 20 May 2024 21:58:16 +0300
Message-ID: <20240520185822.3725844-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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

Add connector debugfs entries to get the maximum link rate and lane
count.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a6021e17cc1ef..764187bc42ff9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1759,6 +1759,46 @@ static ssize_t i915_dp_set_lane_count_write(struct file *file,
 }
 DEFINE_SHOW_STORE_ATTRIBUTE(i915_dp_set_lane_count);
 
+static int i915_dp_max_link_rate_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp;
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp = intel_connector_to_intel_dp(connector);
+	*val = intel_dp->link.max_rate;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_link_rate_fops, i915_dp_max_link_rate_show, NULL, "%llu\n");
+
+static int i915_dp_max_lane_count_show(void *data, u64 *val)
+{
+	struct intel_connector *connector = to_intel_connector(data);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_dp *intel_dp;
+	int err;
+
+	err = drm_modeset_lock_single_interruptible(&i915->drm.mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp = intel_connector_to_intel_dp(connector);
+	*val = intel_dp->link.max_lane_count;
+
+	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
+
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
+
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 {
 	struct dentry *root = connector->base.debugfs_entry;
@@ -1772,4 +1812,10 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 	debugfs_create_file("i915_dp_set_lane_count", 0644, root,
 			    connector, &i915_dp_set_lane_count_fops);
+
+	debugfs_create_file("i915_dp_max_link_rate", 0444, root,
+			    connector, &i915_dp_max_link_rate_fops);
+
+	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
+			    connector, &i915_dp_max_lane_count_fops);
 }
-- 
2.43.3

